/*
 * File: \colorizer.v
 * Project: c:\Users\Chuck\RVfpga\src\OtherSources\project2\vid_ctrl
 * Created Date: Thursday, February 11th 2021, 3:43:41 pm
 * Author: Chuck Faber
 * -----
 * Last Modified: Fri Feb 12 2021
 * Modified By: Chuck Faber
 * -----
 * 
 * This module takes in the video_on enable signal from the dtg, the 2-bit world_pixel value from the world_maps, 
 * and the 2-bit icon value from the icon module and uses a case statement to output the 12-bit color code to the 
 * VGA pins on the dev board.
 *
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

`define BLACK   12'b0000_0000_0000
`define BKGD    12'b0100_1001_0101
`define PATH    12'b1111_1100_0110
`define OBST    12'b1011_0010_0000
`define GOLD    12'b1101_1000_0000
`define LT_GLD  12'b1111_1011_1001

module colorizer (
    input wire video_on,
    input wire [1:0] world_pixel, icon,
    output reg [3:0] vgaRed, vgaGreen, vgaBlue
);

always @(world_pixel or icon) begin
    if (video_on) begin
        case ({icon, world_pixel}) inside
            4'b0000: {vgaRed, vgaGreen, vgaBlue} <= `BKGD;    // Background
            4'b0001: {vgaRed, vgaGreen, vgaBlue} <= `PATH;    // Path
            4'b0010: {vgaRed, vgaGreen, vgaBlue} <= `OBST;    // Obstruction
            4'b01??: {vgaRed, vgaGreen, vgaBlue} <= `BLACK;   // Icon Color 1
            4'b10??: {vgaRed, vgaGreen, vgaBlue} <= `GOLD;    // Icon Color 2
            4'b11??: {vgaRed, vgaGreen, vgaBlue} <= `LT_GLD;  // Icon Color 3
            default: {vgaRed, vgaGreen, vgaBlue} <= `BKGD;    // Default to Background
        endcase
    end else begin
        {vgaRed, vgaGreen, vgaBlue} <= `BLACK;
    end
end

endmodule