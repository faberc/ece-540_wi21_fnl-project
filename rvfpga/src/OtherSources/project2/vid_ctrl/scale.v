/*
 * File: \scale.v
 * Project: c:\Users\Chuck\RVfpga\src\OtherSources\project2\vid_ctrl
 * Created Date: Thursday, February 11th 2021, 3:43:25 pm
 * Author: Chuck Faber
 * -----
 * Last Modified: Mon Feb 15 2021
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


`define COL_SCALE 8
`define ROW_SCALE 6

module scale (
    // input wire clk, rst,
    input wire  [19:0]  pixel_addr,
    output reg  [13:0]  vid_addr
);

wire [9:0] pixel_col, pixel_row;
wire [6:0] vid_col, vid_row;

assign {pixel_col[9:0], pixel_row[9:0]} = pixel_addr[19:0];         // Break up pixel_addr into column and row addresses
assign vid_col = (pixel_col - (pixel_col%`COL_SCALE))/`COL_SCALE;     // Scale down pixel column address
assign vid_row = (pixel_row - (pixel_row%`ROW_SCALE))/`ROW_SCALE;     // Scale down pixel row address

always @(pixel_addr) begin

    vid_addr <= {vid_row[6:0],vid_col[6:0]};                      // Output world map address

end

endmodule