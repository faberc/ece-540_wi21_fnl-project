/*
 * File: \uart_parse.sv
 * Project: c:\Users\Chuck\ECE540\fnlproj-team-tbc\rvfpga\src\SweRVolfSoC\OtherSources\uart_rx
 * Created Date: Tuesday, March 2nd 2021, 11:04:06 am
 * Author: Chuck Faber
 * -----
 * Last Modified: Thu Mar 04 2021
 * Modified By: Chuck Faber
 * -----
 * Copyright (c) 2021 Portland State University
 *
 * This module takes in the stream of bytes from the uart_rx module, and parses out the 
 * string of ascii characters that represent the acceleration data received by the PMOD.
 *
 * Implemented as a state machine.
 * 
 * "Any time I had a problem, and I threw a Molotov cocktail…Boom, right away, I had a different problem."
 * - Jason Mendoza
 * -----
 * HISTORY:
 * Date      	By	Comments
 * ----------	---	----------------------------------------------------------
 */

module uart_parse(
    input clk,
    input reset,
    input brcv_tick,
    input [7:0] byte_in,

    output reg drdy_tick,       // Tick signalling that data has been received
    output reg [63:0] ascii_out      // Output in ASCII bytes as they come in. Still need to be processed
);

    // fsm state type
    typedef enum logic [1:0] {idle, skip, store} state_type;

    // signal declaration
    state_type cs, ns;                  // Current State, Next State
    logic [2:0] sk_reg, sk_next;        // Byte Skip Count after Preamble
    logic [3:0] st_reg, st_next;        // Byte Store Count after Skip
    logic [39:0] pr_reg, pr_next;       // Preamble
    logic [63:0] d_reg, d_next;         // Data Result
    logic err;
    reg [63:0] ascii_val;
    
    // FSMD state & data registers
    always_ff @(posedge clk, posedge reset) begin: seq_block
        if (reset) begin
            cs      <= idle;
            sk_reg  <= '0;
            st_reg  <= '0;
            pr_reg  <= '0;
            d_reg   <= '0;
        end else begin
            cs      <= ns;
            sk_reg  <= sk_next;
            st_reg  <= st_next;
            pr_reg  <= pr_next;
            d_reg   <= d_next;
        end
    end: seq_block

    always_comb begin: next_state_logic
    // Initializing Values
    ns      = cs;
    sk_next = sk_reg;
    st_next = st_reg;
    pr_next = pr_reg;
    d_next  = d_reg;
    drdy_tick = 1'b0;

    case (cs)
        idle: begin: idle_state
            if (brcv_tick) begin
                // $display("Got brcv_tick. Recieved: %b\n", byte_in);
                pr_next = {pr_reg[31:0], byte_in};
                // $display("Preamble: %s\n", pr_reg);
            end
            if (pr_reg == "%NOTI") begin
                // $display("Preamble Match!\n");
                pr_next = 40'b0;
                ns = skip;
            end
        end: idle_state

        skip: begin: skip_state
            if (brcv_tick) begin
                // $display("Skipping: %c\n", byte_in);
                sk_next = sk_reg + 1;
            end
            if (sk_reg == 6) begin
                ns = store;
                sk_next = 2'b0;
                // d_next = 64'b0;
            end
        end: skip_state

        store: begin: store_state
            if (brcv_tick) begin
                // $display("Storing Byte: %c", byte_in);
                if (st_reg == 8) begin
                    st_next = 3'b0;
                    if (~err) begin
                        // $display("Outputing: %s", d_reg);
                        drdy_tick = 1'b1;
                        ascii_val = d_reg;
                    end else begin
                        err = 1'b0;
                    end
                    ns = idle;
                end else begin
                    d_next = {d_reg[55:0],byte_in};
                    if ((byte_in < "0") || ((byte_in > "9") && (byte_in < "A")) || (byte_in > "F") ) begin    // Not a valid hex value
                        err = 1'b1;
                        $display("Value is invalid!");
                    end
                    st_next = st_reg + 1;
                end
            end
        end: store_state
    endcase
    end: next_state_logic

assign ascii_out = ascii_val;

endmodule