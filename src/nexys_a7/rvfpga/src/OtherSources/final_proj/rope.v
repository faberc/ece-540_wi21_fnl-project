/*
 * File: \rope.v
 * Project: c:\Users\Chuck\RVfpga\src\OtherSources\final_proj
 * Created Date: Tuesday, February 23rd 2021, 11:00:08 am
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


module rope 
#(
    parameter ROPE_WIDTH = 10   // Rope width in pixels
 )
 (
    input wire [9:0]   pixel_row, pixel_column, rope_loc,
    output reg [1:0]   icon
);

localparam half_rope_width = ROPE_WIDTH / 2;

always @(pixel_column or pixel_row) begin 

    if ((pixel_row >= (rope_loc - half_rope_width)) && (pixel_row <= rope_loc + half_rope_width)) begin
        icon <= 2'b01;
    end else begin
        icon <= 2'b00;
    end

end


endmodule