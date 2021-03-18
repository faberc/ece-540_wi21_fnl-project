/*
 * File: \icon.v
 * Project: c:\Users\Chuck\RVfpga\src\OtherSources\project2\vid_ctrl
 * Created Date: Thursday, February 11th 2021, 3:43:34 pm
 * Author: Chuck Faber
 * -----
 * Last Modified: Sat Feb 13 2021
 * Modified By: Chuck Faber
 * -----
 * 
 * This module takes the pixel address, botinfo_reg, locx_reg, and locy_reg values as inputs, and produces a 2-bit 
 * “icon” output, which is the value of an icon pixel. It takes in ICON_SCALE and CENT_CORR as parameters allowing 
 * scaling of the icon (untested), and center correction. The module first loads the icon or sprite into memory as 8 
 * arrays each holding 256 2-bit values. These correspond to the pixel colors of the icon. The icons are stored in .mem files. 
 *
 * Next the pixel address from the dtg is scaled down from 1024x768 to 512x384 space, and the value in the locx and locy registers 
 * are scaled up from 128x128 to 512x384 space.
 *
 * If the current pixel address falls within the range defined around the RoJoBot location, it sets the 2-bit icon output value to 
 * the appropriate element in the memory array based on the orientation read from the botinfo_reg. Otherwise, it outputs 00 which is 
 * the transparent value.
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

`define COL_SCALE       8
`define ROW_SCALE       6

module icon 
#(
    parameter ICON_SCALE = 1,   // Whole number scaling factor
    parameter CENT_CORR = 0     // Center Correction (boolean)
 )
 (
    input wire [9:0]   pixel_row, pixel_column,
    input wire [7:0]   botinfo_reg, locx_reg, locy_reg,
    output reg [1:0]   icon
);

// Icon Size Parameters
localparam icon_width = 16*ICON_SCALE;
localparam icon_height = 16*ICON_SCALE;

// Calculate Correction Values
localparam x_correct_l = CENT_CORR ? (icon_width/2) - 1 : 0;
localparam y_correct_l = CENT_CORR ? (icon_height/2) - 1 : 0;
localparam x_correct_u = CENT_CORR ? (x_correct_l + 2) : icon_width;
localparam y_correct_u = CENT_CORR ? (y_correct_l + 2) : icon_height;

reg [1:0] corgi_n   [0:255];
reg [1:0] corgi_ne  [0:255];
reg [1:0] corgi_e   [0:255];
reg [1:0] corgi_se  [0:255];
reg [1:0] corgi_s   [0:255];
reg [1:0] corgi_sw  [0:255];
reg [1:0] corgi_w   [0:255];
reg [1:0] corgi_nw  [0:255];

initial begin
    $readmemb("corgi_n.mem", corgi_n);
    $readmemb("corgi_ne.mem", corgi_ne);
    $readmemb("corgi_e.mem", corgi_e);
    $readmemb("corgi_se.mem", corgi_se);
    $readmemb("corgi_s.mem", corgi_s);
    $readmemb("corgi_sw.mem", corgi_sw);
    $readmemb("corgi_w.mem", corgi_w);
    $readmemb("corgi_nw.mem", corgi_nw);
end

reg [8:0] locx_512, locy_512, ico_col_d, ico_row_d;
reg [7:0] idx;


always @(pixel_column or pixel_row) begin 

    ico_col_d = (pixel_column - pixel_column%2)/2;
    ico_row_d = (pixel_row - pixel_row%2)/2;
    locx_512 = locx_reg * 4;     // Scale to 512x384
    locy_512 = locy_reg * 3;

    // Check if scaled down vga column and row falls within rojobot location
    if ((ico_col_d >= (locx_512-x_correct_l)) && (ico_col_d < (locx_512 + x_correct_u)) 
        && (ico_row_d >= (locy_512-y_correct_l)) && (ico_row_d < (locy_512 + y_correct_u))) begin
        idx = (ico_col_d-(locx_512-x_correct_l)) + (ico_row_d-(locy_512-y_correct_l))*5'd16;            // Identify Icon Array Index
        case (botinfo_reg[2:0])     // Check Rojobot Orientation
            3'h0:   icon <= corgi_n[idx];     // North
            3'h1:   icon <= corgi_ne[idx];    // Northeast
            3'h2:   icon <= corgi_e[idx];     // East
            3'h3:   icon <= corgi_se[idx];    // Southeast
            3'h4:   icon <= corgi_s[idx];     // South
            3'h5:   icon <= corgi_sw[idx];    // Southwest
            3'h6:   icon <= corgi_w[idx];     // West
            3'h7:   icon <= corgi_nw[idx];    // Northwest
            default:        icon <= 2'b00;
        endcase
    end else begin
        icon <= 2'b00;
    end
end


endmodule