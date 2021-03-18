/*
 * File: \ascii_2_hex.sv
 * Project: c:\Users\Chuck\ECE540\fnlproj-team-tbc\rvfpga\src\SweRVolfSoC\OtherSources\uart_rx
 * Created Date: Tuesday, March 2nd 2021, 12:47:42 pm
 * Author: Chuck Faber
 * -----
 * Last Modified: Tue Mar 02 2021
 * Modified By: Chuck Faber
 * -----
 * Copyright (c) 2021 Portland State University
 *
 * This code takes the ascii acceleration string from the uart_parse
 * module and converts it to a hex value to be placed in a readable register.
 * 
 * "Any time I had a problem, and I threw a Molotov cocktail…Boom, right away, I had a different problem."
 * - Jason Mendoza
 * -----
 * HISTORY:
 * Date      	By	Comments
 * ----------	---	----------------------------------------------------------
 */

module ascii_2_hex (
    input clk,
    input reset,
    input drdy_tick,
    input [63:0] ascii,

    output reg parsed_tick,
    output reg [31:0] hex_result
);

    logic [63:0] reordered_ascii;
    logic [31:0] res;
    logic [3:0] tmp;
    logic [7:0] c;

    // fsm state type
    typedef enum logic {idle, parse} state_type;
    state_type cs, ns;

    always @(posedge clk, posedge reset) begin
        if (reset) begin
            cs  <= idle;
        end else begin
            cs  <= ns;
        end
    end

    always_comb begin : next_state_decoder
        parsed_tick = 1'b0;
        ns = cs;
        case (cs)
            idle: begin
                if (drdy_tick) begin
                    // $display("ascii2hex got drdy tick!\n");
                    ns = parse;
                end
            end

            parse: begin
                // Reorder from LSB first to MSB first.
                reordered_ascii = {ascii[15:0], ascii[31:16], ascii[47:32], ascii[63:48]};
                
                for (int i=63; i>0; i=i-8) begin
                    c = reordered_ascii[i-:8];
                    if (c >= "A")
                        tmp = c - "A" + 10;
                    else
                        tmp = c - "0";
                    res = {res[27:0], tmp};
                end
                parsed_tick = 1'b1;
                // hex_result = res;
                ns = idle;
            end
        endcase
    end: next_state_decoder

assign hex_result = res;

endmodule