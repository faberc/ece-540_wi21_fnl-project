-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Thu Feb  4 15:12:13 2021
-- Host        : DESKTOP-HHTTKMG running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               C:/Users/Chuck/RVfpga/vivado/project_2/project_2.srcs/sources_1/ip/clk_gen_proj2/clk_gen_proj2_stub.vhdl
-- Design      : clk_gen_proj2
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity clk_gen_proj2 is
  Port ( 
    clkfb_in : in STD_LOGIC;
    o_clk_100M : out STD_LOGIC;
    o_clk_75M : out STD_LOGIC;
    clkfb_out : out STD_LOGIC;
    reset : in STD_LOGIC;
    o_locked : out STD_LOGIC;
    i_clk_100M : in STD_LOGIC
  );

end clk_gen_proj2;

architecture stub of clk_gen_proj2 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clkfb_in,o_clk_100M,o_clk_75M,clkfb_out,reset,o_locked,i_clk_100M";
begin
end;
