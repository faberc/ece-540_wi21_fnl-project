/*
 * File: \colorizer2.v
 * Project: c:\Users\Chuck\RVfpga\src\OtherSources\final_proj
 * Created Date: Tuesday, February 23rd 2021, 11:54:39 am
 * Author: Chuck Faber
 * -----
 * Last Modified: Tue Feb 23 2021
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

`define BLACK   12'b0000_0000_0000
`define BKGD    12'b0100_1001_0101
`define PATH    12'b1111_1100_0110
`define OBST    12'b1011_0010_0000
`define GOLD    12'b1101_1000_0000
`define LT_GLD  12'b1111_1011_1001

module colorizer2 (
    input wire video_on,
    input wire [1:0] icon,
    output reg [3:0] vgaRed, vgaGreen, vgaBlue
);

always @(icon) begin
    if (video_on) begin
        case (icon) inside
            2'b00: {vgaRed, vgaGreen, vgaBlue} <= `BLACK;   // Black Background
            2'b01: {vgaRed, vgaGreen, vgaBlue} <= `GOLD;    // Gold Rope
        endcase
    end else begin
        {vgaRed, vgaGreen, vgaBlue} <= `BLACK;
    end
end

endmodule