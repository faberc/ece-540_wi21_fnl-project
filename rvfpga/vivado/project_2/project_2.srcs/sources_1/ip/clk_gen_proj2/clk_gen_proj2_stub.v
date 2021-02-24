// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Thu Feb  4 15:12:13 2021
// Host        : DESKTOP-HHTTKMG running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               C:/Users/Chuck/RVfpga/vivado/project_2/project_2.srcs/sources_1/ip/clk_gen_proj2/clk_gen_proj2_stub.v
// Design      : clk_gen_proj2
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module clk_gen_proj2(clkfb_in, o_clk_100M, o_clk_75M, clkfb_out, 
  reset, o_locked, i_clk_100M)
/* synthesis syn_black_box black_box_pad_pin="clkfb_in,o_clk_100M,o_clk_75M,clkfb_out,reset,o_locked,i_clk_100M" */;
  input clkfb_in;
  output o_clk_100M;
  output o_clk_75M;
  output clkfb_out;
  input reset;
  output o_locked;
  input i_clk_100M;
endmodule
