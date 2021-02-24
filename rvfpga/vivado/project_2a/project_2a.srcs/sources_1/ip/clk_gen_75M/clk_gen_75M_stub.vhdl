-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Sat Feb  6 14:17:46 2021
-- Host        : DESKTOP-HHTTKMG running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/Chuck/RVfpga/vivado/project_2a/project_2a.srcs/sources_1/ip/clk_gen_75M/clk_gen_75M_stub.vhdl
-- Design      : clk_gen_75M
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity clk_gen_75M is
  Port ( 
    o_clk_75M : out STD_LOGIC;
    reset : in STD_LOGIC;
    o_locked : out STD_LOGIC;
    i_clk_100M : in STD_LOGIC
  );

end clk_gen_75M;

architecture stub of clk_gen_75M is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "o_clk_75M,reset,o_locked,i_clk_100M";
begin
end;
