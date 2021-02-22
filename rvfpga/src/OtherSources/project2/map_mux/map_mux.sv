/*
 * File: \map_mux.v
 * Project: c:\Users\Chuck\RVfpga\src\OtherSources\project2\map_mux
 * Created Date: Saturday, February 13th 2021, 8:42:32 pm
 * Author: Chuck Faber
 * -----
 * Last Modified: Sun Feb 14 2021
 * Modified By: Chuck Faber
 * -----
 * This is a module that takes in the value of switches 13 and 14 from the dev board, as well 
 * as the outputs from each of the world_map modules, and outputs only a single one based on 
 * the switch value, allowing our design to switch between the maps without having to edit the project code. 
 *
 * This module assumes 4 different map modules. If using less, one can just replace with zeros
 * to disable map output.
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


module map_mux (
    i_sw_sel, i_data_a, i_data_b, o_data_a, o_data_b
 );
    input wire [1:0] i_sw_sel;
    input wire [7:0] i_data_a;              // {wm3_data_a, wm2_data_a, wm1_data_a, wm0_data_a}
    input wire [7:0] i_data_b;              // {wm3_data_b, wm2_data_b, wm1_data_b, wm0_data_b}
    output reg [1:0] o_data_a;
    output reg [1:0] o_data_b;

always @(i_sw_sel) begin
    case (i_sw_sel)
            2'b11: {o_data_a,o_data_b} <= {i_data_a[7:6],i_data_b[7:6]};
            2'b10: {o_data_a,o_data_b} <= {i_data_a[5:4],i_data_b[5:4]};
            2'b01: {o_data_a,o_data_b} <= {i_data_a[3:2],i_data_b[3:2]};
            2'b00: {o_data_a,o_data_b} <= {i_data_a[1:0],i_data_b[1:0]};
            default: {o_data_a,o_data_b} <= {i_data_a[1:0],i_data_b[1:0]};
    endcase
end

endmodule