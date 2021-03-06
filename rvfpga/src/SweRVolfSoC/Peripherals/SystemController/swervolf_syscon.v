// SPDX-License-Identifier: Apache-2.0
// Copyright 2019-2020 Western Digital Corporation or its affiliates.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

//********************************************************************************
// $Id$
//
// Function: SweRVolf SoC-level controller
// Comments:
//
//********************************************************************************

`default_nettype none

module swervolf_syscon
  (input wire i_clk,
   input wire 	     i_rst,
   input wire        gpio_irq,
   input wire        gpio_a_irq,
   input wire        ptc_irq,
   output reg 	     o_timer_irq,
   output wire 	     o_sw_irq3,
   output wire 	     o_sw_irq4,
   input wire 	     i_ram_init_done,
   input wire 	     i_ram_init_error,
   output reg [31:0] o_nmi_vec,
   output wire 	     o_nmi_int,

   input wire [5:0]  i_wb_adr,
   input wire [31:0] i_wb_dat,
   input wire [3:0]  i_wb_sel,
   input wire 	     i_wb_we,
   input wire 	     i_wb_cyc,
   input wire 	     i_wb_stb,
   output reg [31:0] o_wb_rdt,
   output reg 	     o_wb_ack,
   
   output wire [ 7          :0] AN,
   output wire                  DP,
   output wire [ 6          :0] Digits_Bits
   );

   reg [63:0] 	      mtime;
   reg [63:0] 	      mtimecmp;

   reg 		 sw_irq3;
   reg 		 sw_irq3_edge;
   reg 		 sw_irq3_pol;
   reg 		 sw_irq3_timer;
   reg 		 sw_irq4;
   reg 		 sw_irq4_edge;
   reg 		 sw_irq4_pol;
   reg 		 sw_irq4_timer;

   reg 		 irq_timer_en;
   reg [31:0] 	 irq_timer_cnt;

   reg     irq_gpio_enable;
   reg     irq_ptc_enable;

   reg 		 nmi_int;
   reg 		 nmi_int_r;

`ifdef SIMPRINT
   reg [1023:0]  signature_file;
   integer 	f = 0;
   initial begin
      if ($value$plusargs("signature=%s", signature_file)) begin
   $display("Writing signature to %0s", signature_file);
   f = $fopen(signature_file, "w");
      end
   end
`endif

`ifndef VERSION_DIRTY
 `define VERSION_DIRTY 1
`endif
`ifndef VERSION_MAJOR
 `define VERSION_MAJOR 255
`endif
`ifndef VERSION_MINOR
 `define VERSION_MINOR 255
`endif
`ifndef VERSION_REV
 `define VERSION_REV 255
`endif
`ifndef VERSION_SHA
 `define VERSION_SHA deadbeef
`endif

   wire [31:0] version;

   assign version[31]    = `VERSION_DIRTY;
   assign version[30:24] = 7'd0;
   assign version[23:16] = `VERSION_MAJOR;
   assign version[15: 8] = `VERSION_MINOR;
   assign version[ 7: 0] = `VERSION_REV;

   assign o_sw_irq4 = sw_irq4^sw_irq4_pol;
   assign o_sw_irq3 = sw_irq3^sw_irq3_pol;

   assign o_nmi_int = nmi_int | nmi_int_r;

   wire reg_we = i_wb_cyc & i_wb_stb & i_wb_we & !o_wb_ack;
   
    reg  [ 7:0]  Enables_Reg;
    reg  [ 7:0]  Decimals_Reg;
    reg  [31:0]  Digits_Reg1;
    reg  [31:0]  Digits_Reg2;

   //00 = ver
   //04 = sha
   //08 = simprint
   //09 = simexit
   //0A = RAM status
   //0B = sw_irq
   //10 = gpio
   //20 = timer/timecmp
   //40 = SPI
   always @(posedge i_clk) begin
      o_wb_ack <= i_wb_cyc & !o_wb_ack;

      nmi_int   <= 1'b0;
      nmi_int_r <= nmi_int;

      // GPIO Interrupt through IRQ4. Enable by setting bit 0 of word 0x80001018
      if (irq_gpio_enable & gpio_irq) begin
           sw_irq4 <= 1'b1;
      end

      // Timer (PTC) Interrupt through IRQ3. Enable by setting bit 1 of word 0x80001018
      if (irq_ptc_enable & ptc_irq) begin
           sw_irq3 <= 1'b1;
      end

      // SweRVolf simple timer and software interrupts. Enable by resetting bits 0 and 1 of word 0x80001018
      if (!irq_gpio_enable & !irq_ptc_enable) begin

          if (sw_irq3_edge)
            sw_irq3 <= 1'b0;
          if (sw_irq4_edge)
            sw_irq4 <= 1'b0;

          if (irq_timer_en)
            irq_timer_cnt <= irq_timer_cnt - 1;

          if (irq_timer_cnt == 32'd1) begin
            irq_timer_en <= 1'b0;
            if (sw_irq3_timer)
               sw_irq3 <= 1'b1;
            if (sw_irq4_timer)
               sw_irq4 <= 1'b1;
            if (!(sw_irq3_timer | sw_irq4_timer))
               nmi_int <= 1'b1;
          end

      end

      if (reg_we)
        case (i_wb_adr[5:2])
          2: begin //0x08-0x0B
          `ifdef SIMPRINT
             if (i_wb_sel[0]) begin
              $fwrite(f, "%c", i_wb_dat[7:0]);
              $write("%c", i_wb_dat[7:0]);
             end
             if (i_wb_sel[1]) begin
              $display("\nFinito");
              $finish;
             end
          `endif
             if (i_wb_sel[3]) begin
              sw_irq4       <= i_wb_dat[31];
              sw_irq4_edge  <= i_wb_dat[30];
              sw_irq4_pol   <= i_wb_dat[29];
              sw_irq4_timer <= i_wb_dat[28];
              sw_irq3       <= i_wb_dat[27];
              sw_irq3_edge  <= i_wb_dat[26];
              sw_irq3_pol   <= i_wb_dat[25];
              sw_irq3_timer <= i_wb_dat[24];
             end
          end
          3: begin //0x0C-0x0F
             if (i_wb_sel[0]) o_nmi_vec[7:0]   <= i_wb_dat[7:0];
             if (i_wb_sel[1]) o_nmi_vec[15:8]  <= i_wb_dat[15:8];
             if (i_wb_sel[2]) o_nmi_vec[23:16] <= i_wb_dat[23:16];
             if (i_wb_sel[3]) o_nmi_vec[31:24] <= i_wb_dat[31:24];
          end
          6: begin //0x18-0x1B
             if (i_wb_sel[0])
               irq_gpio_enable <= i_wb_dat[0];
               irq_ptc_enable <=  i_wb_dat[1];
          end
          // Added new register to accommodate more digits.
          9 : begin //0x24-27 Addresses 0x80001024 for first digits reg
              if (i_wb_sel[0]) Digits_Reg1[7:0]   <= i_wb_dat[7:0];
              if (i_wb_sel[1]) Digits_Reg1[15:8]  <= i_wb_dat[15:8];
              if (i_wb_sel[2]) Digits_Reg1[23:16] <= i_wb_dat[23:16];
              if (i_wb_sel[3]) Digits_Reg1[31:24] <= i_wb_dat[31:24];
          end
          10 : begin //0x28-0x2B
             if (i_wb_sel[0]) mtimecmp[7:0]   <= i_wb_dat[7:0];
             if (i_wb_sel[1]) mtimecmp[15:8]  <= i_wb_dat[15:8];
             if (i_wb_sel[2]) mtimecmp[23:16] <= i_wb_dat[23:16];
             if (i_wb_sel[3]) mtimecmp[31:24] <= i_wb_dat[31:24];
          end
          11 : begin //0x2C-0x2F
             if (i_wb_sel[0]) mtimecmp[39:32] <= i_wb_dat[7:0];
             if (i_wb_sel[1]) mtimecmp[47:40] <= i_wb_dat[15:8];
             if (i_wb_sel[2]) mtimecmp[55:48] <= i_wb_dat[23:16];
             if (i_wb_sel[3]) mtimecmp[63:56] <= i_wb_dat[31:24];
          end
          12 : begin //0x30-33
             if (i_wb_sel[0]) irq_timer_cnt[7:0]   <= i_wb_dat[7:0]  ;
             if (i_wb_sel[1]) irq_timer_cnt[15:8]  <= i_wb_dat[15:8] ;
             if (i_wb_sel[2]) irq_timer_cnt[23:16] <= i_wb_dat[23:16];
             if (i_wb_sel[3]) irq_timer_cnt[31:24] <= i_wb_dat[31:24];
          end
          13 : begin //0x34-37
             if (i_wb_sel[0])
               irq_timer_en <= i_wb_dat[0];
          end
          14 : begin //0x38-3B 0x80001038 -- LSB is digit enables, 2nd byte is decimal enables.
             if (i_wb_sel[0]) Enables_Reg[7:0]  <= i_wb_dat[7:0];
             if (i_wb_sel[1]) Decimals_Reg[7:0]  <= i_wb_dat[15:8];
          end
          15 : begin //0x3C-3F 0x8000103C for second digits reg.
               if (i_wb_sel[0]) Digits_Reg2[7:0]   <= i_wb_dat[7:0];
               if (i_wb_sel[1]) Digits_Reg2[15:8]  <= i_wb_dat[15:8];
               if (i_wb_sel[2]) Digits_Reg2[23:16] <= i_wb_dat[23:16];
               if (i_wb_sel[3]) Digits_Reg2[31:24] <= i_wb_dat[31:24];
          end
        endcase

      case (i_wb_adr[5:2])
        //0x00-0x03
        0 : o_wb_rdt <= version;
        //0x04-0x07
        1 : o_wb_rdt <= 32'h`VERSION_SHA;
        //0x08-0x0C
        2 : begin
           //0xB
           o_wb_rdt[31:28] <= {sw_irq4, sw_irq4_edge, sw_irq4_pol, sw_irq4_timer};
           o_wb_rdt[27:24] <= {sw_irq3, sw_irq3_edge, sw_irq3_pol, sw_irq3_timer};
           //0xA
           o_wb_rdt[23:18] <= 6'd0;
           o_wb_rdt[17:16] <= {i_ram_init_error, i_ram_init_done};
           //0x8-0x9
           o_wb_rdt[15:0]  <= 16'd0;
        end
        //0xC-0xF
        3 : o_wb_rdt <= o_nmi_vec;
        //0x18-0x1B
        6 : o_wb_rdt <= {30'd0, irq_ptc_enable, irq_gpio_enable};
        //0x20-0x23
        8 : o_wb_rdt <= mtime[31:0];
        //0x24-0x27
        9 : o_wb_rdt <= mtime[63:32];
        //0x28-0x2B
        10 : o_wb_rdt <= mtimecmp[31:0];
        //0x2C-0x2F
        11 : o_wb_rdt <= mtimecmp[63:32];
        //0x30-0x33
        12 : o_wb_rdt <= irq_timer_cnt;
        //0x34-0x37
        13 : o_wb_rdt <= {31'd0, irq_timer_en};
      endcase

      mtime <= mtime + 64'd1;
      o_timer_irq <= (mtime >= mtimecmp);

      if (i_rst) begin
       mtime <= 64'd0;
       mtimecmp <= 64'd0;
       o_wb_ack <= 1'b0;
      end
   end



  // Eight-Digit 7 Segment Displays

    SevSegDisplays_Controller SegDispl_Ctr(
      .clk               (i_clk),    
      .rst_n             (i_rst),
      .Enables_Reg       (Enables_Reg), 
      .Decimals_Reg      (Decimals_Reg),
      .Digits_Reg1       (Digits_Reg1),
      .Digits_Reg2       (Digits_Reg2), 
      .AN                (AN),
      .DP                (DP),
      .Digits_Bits       (Digits_Bits)
    );

endmodule




parameter COUNT_MAX = 20;

module SevSegDisplays_Controller(
                     input wire           clk,
                     input wire           rst_n,
                     input wire    [ 7:0] Enables_Reg,
                     input wire    [ 7:0] Decimals_Reg,
                     input wire    [31:0] Digits_Reg1,
                     input wire    [31:0] Digits_Reg2,      // cfaber: Added extra digits register
                     output wire   [ 7:0] AN,
                     output wire          DP,
                     output wire   [ 6:0] Digits_Bits);

  wire [(COUNT_MAX-1):0] countSelection;
  wire [ 7:0] DecNumber;
  wire overflow_o_count;



  SevenSegDecoder SevSegDec(.data(DecNumber), .seg(Digits_Bits));



  counter #(COUNT_MAX)  counter20(clk, ~rst_n, 1'b0, 1'b1, 1'b0, 1'b0, 16'b0, countSelection, overflow_o_count);



  wire [ 7:0] [7:0] enable;

  assign enable[0] = (Enables_Reg | 8'hfe);
  assign enable[1] = (Enables_Reg | 8'hfd);
  assign enable[2] = (Enables_Reg | 8'hfb);
  assign enable[3] = (Enables_Reg | 8'hf7);
  assign enable[4] = (Enables_Reg | 8'hef);
  assign enable[5] = (Enables_Reg | 8'hdf);
  assign enable[6] = (Enables_Reg | 8'hbf);
  assign enable[7] = (Enables_Reg | 8'h7f);

  SevSegMux
  #(
    .DATA_WIDTH(8),
    .N_IN(8)
  )
  Select_Enables
  (
    .IN_DATA(enable),
    .OUT_DATA(AN),
    .SEL(countSelection[(COUNT_MAX-1):(COUNT_MAX-3)])
  );

  wire [ 7:0] decimal;      // FIXME: Testing out this piece of code. removed a dimension.

  assign decimal[0] = (Decimals_Reg[0]);
  assign decimal[1] = (Decimals_Reg[1]);
  assign decimal[2] = (Decimals_Reg[2]);
  assign decimal[3] = (Decimals_Reg[3]);
  assign decimal[4] = (Decimals_Reg[4]);
  assign decimal[5] = (Decimals_Reg[5]);
  assign decimal[6] = (Decimals_Reg[6]);
  assign decimal[7] = (Decimals_Reg[7]);

  SevSegMux
  #(
    .DATA_WIDTH(1),
    .N_IN(8)
  )
  Select_Decimals
  (
    .IN_DATA(decimal),
    .OUT_DATA(DP),
    .SEL(countSelection[(COUNT_MAX-1):(COUNT_MAX-3)])
  );


  wire [7:0] [7:0] digits_concat;

    // cfaber: Changed the referencing two reference two digits registers to increase the ASCII values usable.
  assign digits_concat[0] = Digits_Reg1[7:0];
  assign digits_concat[1] = Digits_Reg1[15:8];
  assign digits_concat[2] = Digits_Reg1[23:16];
  assign digits_concat[3] = Digits_Reg1[31:24];
  assign digits_concat[4] = Digits_Reg2[7:0];
  assign digits_concat[5] = Digits_Reg2[15:8];
  assign digits_concat[6] = Digits_Reg2[23:16];
  assign digits_concat[7] = Digits_Reg2[31:24];

  SevSegMux
  #(
    .DATA_WIDTH(8),         // cfaber: Had to increase this to 8 bits.
    .N_IN(8)
  )
  Select_Digits
  (
    .IN_DATA(digits_concat),
    .OUT_DATA(DecNumber),
    .SEL(countSelection[(COUNT_MAX-1):(COUNT_MAX-3)])
  );

endmodule



module SevenSegDecoder(input wire     [7:0] data,
                           output reg [6:0] seg);
  always @(*)
    case(data)
                  // abc_defg
      8'h00: seg = 7'b000_0001;     // 0
      8'h01: seg = 7'b100_1111;     // 1
      8'h02: seg = 7'b001_0010;     // 2
      8'h03: seg = 7'b000_0110;     // 3
      8'h04: seg = 7'b100_1100;     // 4
      8'h05: seg = 7'b010_0100;     // 5
      8'h06: seg = 7'b010_0000;     // 6
      8'h07: seg = 7'b000_1111;     // 7
      8'h08: seg = 7'b000_0000;     // 8
      8'h09: seg = 7'b000_1100;     // 9
      8'h0a: seg = 7'b000_1000;     // A
      8'h0b: seg = 7'b110_0000;     // B
      8'h0c: seg = 7'b111_0010;     // C
      8'h0d: seg = 7'b100_0010;     // D
      8'h0e: seg = 7'b011_0000;     // E
      8'h0f: seg = 7'b011_1000;     // F
      8'h10: seg = 7'b011_1111;     // Segment A
      8'h11: seg = 7'b101_1111;     // Segment B
      8'h12: seg = 7'b110_1111;     // Segment C
      8'h13: seg = 7'b111_0111;     // Segment D
      8'h14: seg = 7'b111_1011;     // Segment E
      8'h15: seg = 7'b111_1101;     // Segment F
      8'h16: seg = 7'b111_1110;     // Segment G
      8'h17: seg = 7'b100_1000;     // H
      8'h18: seg = 7'b111_0001;     // L
      8'h19: seg = 7'b000_1000;     // R
      8'h1A: seg = 7'b100_1111;     // l
      8'h1B: seg = 7'b111_1010;     // r
      8'h1C: seg = 7'b111_1111;     // Space
      8'h1D: seg = 7'b111_1111;     // Space
      8'h1E: seg = 7'b111_1111;     // Space
      8'h1F: seg = 7'b111_1111;     // Space
      default: 
            seg = 7'b111_1111;      // Space
    endcase
endmodule



module SevSegMux
#(
    parameter DATA_WIDTH = 64,
    parameter N_IN       = 16,
    parameter SEL_WIDTH  = $clog2(N_IN)
)
(
    input  wire [N_IN-1:0][DATA_WIDTH-1:0]   IN_DATA,
    output wire [DATA_WIDTH-1:0]             OUT_DATA,
    input  wire [SEL_WIDTH-1:0]              SEL
);


  assign OUT_DATA = IN_DATA[SEL];

endmodule
