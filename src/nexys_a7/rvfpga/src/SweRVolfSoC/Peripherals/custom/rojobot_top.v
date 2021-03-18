
/*
 * File: \custom_peripheral_top.v
 * Project: c:\Users\Chuck\RVfpga\src\SweRVolfSoC\Peripherals\custom
 * Created Date: Monday, February 1st 2021, 3:17:19 pm
 * Author: Chuck Faber
 * -----
 * Last Modified: Fri Feb 19 2021
 * Modified By: Chuck Faber
 * -----
 *
 * This module is a custom Wishbone peripheral module that takes in all of the regular Wishbone signals 
 * and allows writing to and reading from registers. This was used to create new memory-mapped IO to write 
 * to and read from the RoJoBot IP through software.

 * Copyright (c) 2021 Portland State University
 * 
 * "Any time I had a problem, and I threw a Molotov cocktail…Boom, right away, I had a different problem."
 * - Jason Mendoza
 * -----
 * HISTORY:
 * Date      	By	Comments
 * ----------	---	----------------------------------------------------------
 */


// Enable the following registers:

module rojobot_top (
    // Wishbone Interface
    wb_clk_i, wb_rst_i, wb_adr_i, wb_dat_i, wb_sel_i, wb_we_i, wb_cyc_i, wb_stb_i, 
    wb_dat_o, wb_ack_o, wb_err_o, wb_inta_o,

    // Inputs and Outputs
    i_reg_a, i_reg_b, o_reg_a, o_reg_b
);

////////////////////////
// WISHBONE Interface //
////////////////////////
input           wb_clk_i;	// Clock
input           wb_rst_i;	// Reset
input           wb_cyc_i;	// cycle valid input
input   [31:0]   wb_adr_i;	// address bus inputs
input   [31:0]  wb_dat_i;	// input data bus
input   [3:0]   wb_sel_i;	// byte select inputs
input           wb_we_i;	// indicates write transfer
input           wb_stb_i;	// strobe input
output  [31:0]  wb_dat_o;	// output data bus
output          wb_ack_o;	// normal termination
output          wb_err_o;	// termination w/ error
output          wb_inta_o;	// Interrupt request output

input   [31:0]  i_reg_a;
output  [31:0]  o_reg_a;
input   [31:0]  i_reg_b;
output  [31:0]  o_reg_b;

///////////////////////////////
// Internal Signals and Regs //
///////////////////////////////

// For Registered WB Outputs (? -- Looking at gpio_top.sv)
reg             wb_ack_o;   // WB Acknowledge
reg             wb_err_o;   // WB Error
reg             wb_inta_o;  // WB Interrupt
reg [31:0]      wb_dat_o;   // WB Data out

reg [31:0]      o_reg_a;
reg [31:0]      o_reg_b;

/////////////////
// ACK Control //
/////////////////

always @(posedge wb_clk_i or posedge wb_rst_i)
	if (wb_rst_i)
		wb_ack_o <= 1'b0;
	else
		wb_ack_o <= wb_cyc_i & wb_stb_i & !wb_ack_o;

////////////////////////
// Reading  Registers //
////////////////////////

always @(posedge wb_clk_i or posedge wb_rst_i) begin
    if (wb_rst_i)
        wb_dat_o <= 32'b0;
    case (wb_adr_i[5:2])
        4'h0: wb_dat_o <= i_reg_a;          // 0x00
        4'h1: wb_dat_o <= o_reg_a;          // 0x04
        4'h2: wb_dat_o <= i_reg_b;          // 0x08
        4'h3: wb_dat_o <= o_reg_b;          // 0x0c
    endcase
end

//////////////////////////
// Writing to Registers //
//////////////////////////

always @(posedge wb_clk_i or posedge wb_rst_i) begin
    if (wb_rst_i) begin
        o_reg_a <= 32'b0;
        o_reg_b <= 32'b0;
    end
    else if (wb_cyc_i & wb_stb_i & wb_we_i & !wb_ack_o) begin
        case (wb_adr_i[5:2])
            4'h1: begin
                // o_reg_a <= wb_dat_i;
                if ( wb_sel_i [3] == 1'b1 )
                    o_reg_a [31:24] <= wb_dat_i [31:24] ;
                if ( wb_sel_i [2] == 1'b1 )
                    o_reg_a [23:16] <= wb_dat_i [23:16] ;
                if ( wb_sel_i [1] == 1'b1 )
                    o_reg_a [15:8] <= wb_dat_i [15:8] ;
                if ( wb_sel_i [0] == 1'b1 )
                    o_reg_a [7:0] <= wb_dat_i [7:0] ;
                end
            4'h3: begin
                // o_reg_b <= wb_dat_i;
                if ( wb_sel_i [3] == 1'b1 )
                    o_reg_b [31:24] <= wb_dat_i [31:24] ;
                if ( wb_sel_i [2] == 1'b1 )
                    o_reg_b [23:16] <= wb_dat_i [23:16] ;
                if ( wb_sel_i [1] == 1'b1 )
                    o_reg_b [15:8] <= wb_dat_i [15:8] ;
                if ( wb_sel_i [0] == 1'b1 )
                    o_reg_b [7:0] <= wb_dat_i [7:0] ;
                end
        endcase
    end
end


endmodule