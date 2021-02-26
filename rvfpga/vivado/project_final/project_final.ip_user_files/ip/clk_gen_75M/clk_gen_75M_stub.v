// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Mon Feb 22 13:20:55 2021
// Host        : DESKTOP-HHTTKMG running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top clk_gen_75M -prefix
//               clk_gen_75M_ clk_gen_75M_stub.v
// Design      : clk_gen_75M
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module clk_gen_75M(o_clk_100M, o_clk_75M, reset, o_locked, 
  i_clk_100M)
/* synthesis syn_black_box black_box_pad_pin="o_clk_100M,o_clk_75M,reset,o_locked,i_clk_100M" */;
  output o_clk_100M;
  output o_clk_75M;
  input reset;
  output o_locked;
  input i_clk_100M;
endmodule
