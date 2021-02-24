-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Thu Feb  4 15:54:52 2021
-- Host        : DESKTOP-HHTTKMG running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ clk_gen_proj2a_sim_netlist.vhdl
-- Design      : clk_gen_proj2a
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clk_gen_proj2a_clk_wiz is
  port (
    o_clk_100M : out STD_LOGIC;
    o_clk_75M : out STD_LOGIC;
    reset : in STD_LOGIC;
    i_clk_100M : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clk_gen_proj2a_clk_wiz;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clk_gen_proj2a_clk_wiz is
  signal clkfbout_buf_clk_gen_proj2a : STD_LOGIC;
  signal clkfbout_clk_gen_proj2a : STD_LOGIC;
  signal i_clk_100M_clk_gen_proj2a : STD_LOGIC;
  signal o_clk_100M_clk_gen_proj2a : STD_LOGIC;
  signal o_clk_75M_clk_gen_proj2a : STD_LOGIC;
  signal NLW_plle2_adv_inst_CLKOUT2_UNCONNECTED : STD_LOGIC;
  signal NLW_plle2_adv_inst_CLKOUT3_UNCONNECTED : STD_LOGIC;
  signal NLW_plle2_adv_inst_CLKOUT4_UNCONNECTED : STD_LOGIC;
  signal NLW_plle2_adv_inst_CLKOUT5_UNCONNECTED : STD_LOGIC;
  signal NLW_plle2_adv_inst_DRDY_UNCONNECTED : STD_LOGIC;
  signal NLW_plle2_adv_inst_LOCKED_UNCONNECTED : STD_LOGIC;
  signal NLW_plle2_adv_inst_DO_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of clkf_buf : label is "PRIMITIVE";
  attribute BOX_TYPE of clkin1_bufg : label is "PRIMITIVE";
  attribute BOX_TYPE of clkout1_buf : label is "PRIMITIVE";
  attribute BOX_TYPE of clkout2_buf : label is "PRIMITIVE";
  attribute BOX_TYPE of plle2_adv_inst : label is "PRIMITIVE";
begin
clkf_buf: unisim.vcomponents.BUFG
     port map (
      I => clkfbout_clk_gen_proj2a,
      O => clkfbout_buf_clk_gen_proj2a
    );
clkin1_bufg: unisim.vcomponents.BUFG
     port map (
      I => i_clk_100M,
      O => i_clk_100M_clk_gen_proj2a
    );
clkout1_buf: unisim.vcomponents.BUFG
     port map (
      I => o_clk_100M_clk_gen_proj2a,
      O => o_clk_100M
    );
clkout2_buf: unisim.vcomponents.BUFG
     port map (
      I => o_clk_75M_clk_gen_proj2a,
      O => o_clk_75M
    );
plle2_adv_inst: unisim.vcomponents.PLLE2_ADV
    generic map(
      BANDWIDTH => "OPTIMIZED",
      CLKFBOUT_MULT => 9,
      CLKFBOUT_PHASE => 0.000000,
      CLKIN1_PERIOD => 10.000000,
      CLKIN2_PERIOD => 0.000000,
      CLKOUT0_DIVIDE => 9,
      CLKOUT0_DUTY_CYCLE => 0.500000,
      CLKOUT0_PHASE => 0.000000,
      CLKOUT1_DIVIDE => 12,
      CLKOUT1_DUTY_CYCLE => 0.500000,
      CLKOUT1_PHASE => 0.000000,
      CLKOUT2_DIVIDE => 1,
      CLKOUT2_DUTY_CYCLE => 0.500000,
      CLKOUT2_PHASE => 0.000000,
      CLKOUT3_DIVIDE => 1,
      CLKOUT3_DUTY_CYCLE => 0.500000,
      CLKOUT3_PHASE => 0.000000,
      CLKOUT4_DIVIDE => 1,
      CLKOUT4_DUTY_CYCLE => 0.500000,
      CLKOUT4_PHASE => 0.000000,
      CLKOUT5_DIVIDE => 1,
      CLKOUT5_DUTY_CYCLE => 0.500000,
      CLKOUT5_PHASE => 0.000000,
      COMPENSATION => "BUF_IN",
      DIVCLK_DIVIDE => 1,
      IS_CLKINSEL_INVERTED => '0',
      IS_PWRDWN_INVERTED => '0',
      IS_RST_INVERTED => '0',
      REF_JITTER1 => 0.010000,
      REF_JITTER2 => 0.010000,
      STARTUP_WAIT => "FALSE"
    )
        port map (
      CLKFBIN => clkfbout_buf_clk_gen_proj2a,
      CLKFBOUT => clkfbout_clk_gen_proj2a,
      CLKIN1 => i_clk_100M_clk_gen_proj2a,
      CLKIN2 => '0',
      CLKINSEL => '1',
      CLKOUT0 => o_clk_100M_clk_gen_proj2a,
      CLKOUT1 => o_clk_75M_clk_gen_proj2a,
      CLKOUT2 => NLW_plle2_adv_inst_CLKOUT2_UNCONNECTED,
      CLKOUT3 => NLW_plle2_adv_inst_CLKOUT3_UNCONNECTED,
      CLKOUT4 => NLW_plle2_adv_inst_CLKOUT4_UNCONNECTED,
      CLKOUT5 => NLW_plle2_adv_inst_CLKOUT5_UNCONNECTED,
      DADDR(6 downto 0) => B"0000000",
      DCLK => '0',
      DEN => '0',
      DI(15 downto 0) => B"0000000000000000",
      DO(15 downto 0) => NLW_plle2_adv_inst_DO_UNCONNECTED(15 downto 0),
      DRDY => NLW_plle2_adv_inst_DRDY_UNCONNECTED,
      DWE => '0',
      LOCKED => NLW_plle2_adv_inst_LOCKED_UNCONNECTED,
      PWRDWN => '0',
      RST => reset
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    o_clk_100M : out STD_LOGIC;
    o_clk_75M : out STD_LOGIC;
    reset : in STD_LOGIC;
    i_clk_100M : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clk_gen_proj2a_clk_wiz
     port map (
      i_clk_100M => i_clk_100M,
      o_clk_100M => o_clk_100M,
      o_clk_75M => o_clk_75M,
      reset => reset
    );
end STRUCTURE;
