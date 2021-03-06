/*
 * File: \tb_ascii_2_hex.sv
 * Project: c:\Users\Chuck\ECE540\fnlproj-team-tbc\sandbox\sv_tests
 * Created Date: Tuesday, March 2nd 2021, 2:20:44 pm
 * Author: Chuck Faber
 * -----
 * Last Modified: Tue Mar 02 2021
 * Modified By: Chuck Faber
 * -----
 * Copyright (c) 2021 Portland State University
 * 
 * "Any time I had a problem, and I threw a Molotov cocktail…Boom, right away, I had a different problem."
 * - Jason Mendoza
 * -----
 * HISTORY:
 * Date      	By	Comments
 * ----------	---	----------------------------------------------------------
 */


module tb_ascii2hex;

timeunit 1ns/1ns;


// internal variables
logic           clk, reset;     // system clock and reset
logic           drdy_tick;
logic [63:0]    ascii;
logic           parsed_tick;
logic [31:0]    hex_result;


ascii_2_hex a2h (
    .clk(clk),
    .reset(reset),
    .drdy_tick(drdy_tick),
    .ascii(ascii),
    .parsed_tick(parsed_tick),
    .hex_result(hex_result)
);

// parameters
parameter SYS_CLK_FREQ	= 100_000_000; 		    		// Assume 50 MHz system clk	
parameter CLK_PERIOD	= 10;							// 50 MHz is  20ns clk period 
parameter CYCLES        = 10;							// delay cycles	
		 
parameter BAUD_RATE		= 115200;						// Baud rate (bits per second)
parameter DBITS			= 8;							// Number of data bits
parameter STOPBITS		= 1;							// Number of stop bits
parameter PARITY		= 0;							// Does not support parity

// apply and lift reset after some time so that signals get settled to known values
task apply_reset();
	reset = 1;
	repeat(CYCLES) @(posedge clk);
	reset = 0;
	$display("System Reset");
endtask: apply_reset

initial begin: clk_gen
    clk = 0;
    forever #(CLK_PERIOD/2) clk = ~clk;
end: clk_gen

initial begin: stimulus
    ascii = "01020304";
    apply_reset();
    #(10) 
    drdy_tick = 1'b1;
    #1
    drdy_tick = 1'b0;
end: stimulus

always @(parsed_tick) begin
    $display("Value parsed: %h", hex_result);
end

endmodule