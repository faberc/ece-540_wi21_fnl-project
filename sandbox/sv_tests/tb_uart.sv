//////////////////////////////////////////////////////////////////////////////
// tb_uart_loopback.sv -  UART unit level loopback test  
//
// Author:	Roy Kravitz (roy.kravitz@pdx.edu)
// Date:	6/2/2020 
//
// Description:
// ------------
// Unit level Test bench for UART receiver and transmitter.  Loops the
// Tx and Rx lines together and sends data.  Results are checked at the
// receiver.
//
// Generates all characters from 0x00 to 0x7F in TX RX loopback test
////////////////////////////////////////////////////////////////////////////

module tb_uart;

timeunit 1ns/1ns;

// parameters
parameter SYS_CLK_FREQ	= 100_000_000; 		    		// Assume 50 MHz system clk	
parameter CLK_PERIOD	= 10;							// 50 MHz is  20ns clk period 
parameter CYCLES        = 10;							// delay cycles	
		 
parameter BAUD_RATE		= 115200;						// Baud rate (bits per second)
parameter DBITS			= 8;							// Number of data bits
parameter STOPBITS		= 1;							// Number of stop bits
parameter PARITY		= 0;							// Does not support parity

localparam TICKS	= SYS_CLK_FREQ / BAUD_RATE;			// for baud rate of 19200, TICKS = 2604
localparam DVSR		= SYS_CLK_FREQ / BAUD_RATE / 16;	// divisor for setting baud rate
localparam SB_TICKS	= STOPBITS * 16;					// number of ticks for stop bit

// internal variables
logic 			clk, reset;			// system clock and reset
logic [10:0] 	dvsr;				// divisor for baud rate generator
logic [7:0]		din_reg;			// register holding data to transmit
logic [7:0]		dout_reg;			// register holding last data received
logic [7:0]		rx_data;			// received data
logic			tick; 				// single cycle tick signal from baud rate generator

logic			tx_start, tx_done;	// start and packet transmitted to/from transmitter
logic			rx_done;			// rx_done from receiver when packet received

logic			tx, rx;				// serial transmit and serial receive
int				error_count = 0;	// error count
logic			match;				// expected and transmitted data match
logic			newbit_tick, smpl_tick; //debug signals
wire            drdy_tick;          // Signal stating data has been retrieved from UART string
wire [63:0]     ascii;              // 8 bytes of ascii data
wire            parsed_tick;        // Signal stating ascii 2 hex conversion complete
wire [31:0]     hex_result;         // 32 bit hex value read from uart stream


// loop tx to rx (this is the loopback)
assign rx = tx;

// instantiate the modules
// Baud Rate generator
baud_gen BRG
(
	.clk(clk),
	.reset(reset),
    .dvsr(dvsr),
    .tick(tick)
);

// Transmitter
uart_tx
#(
	.DBIT(DBITS),
	.SB_TICK(SB_TICKS)
) TXMTR
(
	.clk(clk),
	.reset(reset),
	.tx_start(tx_start),
	.s_tick(tick),
	.din(din_reg),
	.tx_done_tick(tx_done),
	.tx(tx),
	.newbit_tick(newbit_tick)
);

// Receiver
uart_rx
#(
	.DBIT(DBITS),
	.SB_TICK(SB_TICKS)
) RCVR
(
	.clk(clk),
	.reset(reset),
    .rx(rx),
	.s_tick(tick),
    .rx_done_tick(rx_done),
    .dout(rx_data),
	.smpl_tick(smpl_tick)
);

uart_parse up0 (
    .clk(clk),
    .reset(reset),
    .brcv_tick(rx_done),
    .byte_in(rx_data),
    .drdy_tick(drdy_tick),
    .ascii_out(ascii)
);

ascii_2_hex a2h (
    .clk(clk),
    .reset(reset),
    .drdy_tick(drdy_tick),
    .ascii(ascii),
    .parsed_tick(parsed_tick),
    .hex_result(hex_result)
);

// Define some useful tasks

// apply and lift reset after some time so that signals get settled to known values
task apply_reset();
	reset = 1;
	repeat(CYCLES) @(posedge clk);
	reset = 0;
	$display("System Reset");
endtask: apply_reset

// set baud rate by writing divisor register in the BRG 
task set_baud_rate(input int data);
	dvsr = data; 
	$display("baud rate divisor set to %d", dvsr);
endtask : set_baud_rate

// transmit a data packet
task send_packet(input logic[7:0] data);
	din_reg = data;
	repeat(CYCLES/2) @(posedge clk);
	tx_start = 1'b1;
	repeat(CYCLES/2)@(posedge clk);
	tx_start = 1'b0;
endtask: send_packet

// receive a data packet
task receive_packet(input logic[7:0] exp_data, output logic match);
	wait(rx_done);		// wait until data packet received
	dout_reg = rx_data;
	match = dout_reg == exp_data;	// see if the data bits match
	if (match)
		$display("MATCH: received data: %b, expected data: %b",
			rx_data, exp_data);
	else begin
		$display("MISMATCH!!: received data: %b, expected data: %b",
			rx_data, exp_data);
		error_count++;
	end;
	
	// Since tx is looped to rx, the receiver starts to receive
	// the packet before the transmitter has generated tx_done
	// We want so make sure we wait until the transmitter has sent
	// the STOP bit before we start sending the next packet
	wait(tx_done);
endtask: receive_packet

task send_string(input string str);
    byte c;
    for (int i = 0; i < str.len(); i++) begin
        c = str[i];
        // $display("Sending: %c\n", c);
        send_packet(c);
        receive_packet(c, match);
        repeat(CYCLES/2) @(posedge clk);
    end
endtask: send_string

// generate the clock
initial begin: clock_generator
	clk = 0;
	forever #(CLK_PERIOD/2) clk = ~clk;
end: clock_generator

// initial begin: monitor
//     $monitor("rx_done: %d, drdy: %d, parsed: %d", rx_done, drdy_tick, parsed_tick);
// end: monitor

// stimulate the DUT by transmitting data packets and
initial begin: stimulus
    string notify_str = "\%NOTI,002A,F1F2F3F4\%\%NOTI,002A,01020304\%";
	byte snd_data;
    $monitor("rx_done: %d, drdy: %d, parsed: %d\n", rx_done, drdy_tick, parsed_tick);
    $monitor("Hex Output Value: %h\n", hex_result);

	
	apply_reset();
	
/*** Shorten the time between s_ticks
	set_baud_rate(DVSR);
***/
    set_baud_rate(56);

    send_string(notify_str);

	// snd_data = 8'b11111111;
	// send_packet(snd_data);
	// receive_packet(snd_data, match);
	// repeat(CYCLES/2) @(posedge clk);
	
	// all done - summarize results
	// if (error_count == 0)
	// 	$display("All tests passed");
	// else
	// 	$display("%d tests failed", error_count);
	// repeat(CYCLES) @(posedge clk);
	$stop;
end: stimulus

// always @(posedge parsed_tick) begin
//     $display("Value parsed: %h\n", hex_result);
// end

endmodule: tb_uart
