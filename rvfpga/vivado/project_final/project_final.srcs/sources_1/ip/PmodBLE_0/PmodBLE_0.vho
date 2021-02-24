-- (c) Copyright 1995-2021 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: digilentinc.com:IP:PmodBLE:1.0
-- IP Revision: 15

-- The following code must appear in the VHDL architecture header.

------------- Begin Cut here for COMPONENT Declaration ------ COMP_TAG
COMPONENT PmodBLE_0
  PORT (
    Pmod_out_pin10_i : IN STD_LOGIC;
    Pmod_out_pin10_o : OUT STD_LOGIC;
    Pmod_out_pin10_t : OUT STD_LOGIC;
    Pmod_out_pin1_i : IN STD_LOGIC;
    Pmod_out_pin1_o : OUT STD_LOGIC;
    Pmod_out_pin1_t : OUT STD_LOGIC;
    Pmod_out_pin2_i : IN STD_LOGIC;
    Pmod_out_pin2_o : OUT STD_LOGIC;
    Pmod_out_pin2_t : OUT STD_LOGIC;
    Pmod_out_pin3_i : IN STD_LOGIC;
    Pmod_out_pin3_o : OUT STD_LOGIC;
    Pmod_out_pin3_t : OUT STD_LOGIC;
    Pmod_out_pin4_i : IN STD_LOGIC;
    Pmod_out_pin4_o : OUT STD_LOGIC;
    Pmod_out_pin4_t : OUT STD_LOGIC;
    Pmod_out_pin7_i : IN STD_LOGIC;
    Pmod_out_pin7_o : OUT STD_LOGIC;
    Pmod_out_pin7_t : OUT STD_LOGIC;
    Pmod_out_pin8_i : IN STD_LOGIC;
    Pmod_out_pin8_o : OUT STD_LOGIC;
    Pmod_out_pin8_t : OUT STD_LOGIC;
    Pmod_out_pin9_i : IN STD_LOGIC;
    Pmod_out_pin9_o : OUT STD_LOGIC;
    Pmod_out_pin9_t : OUT STD_LOGIC;
    S_AXI_GPIO_araddr : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
    S_AXI_GPIO_arready : OUT STD_LOGIC;
    S_AXI_GPIO_arvalid : IN STD_LOGIC;
    S_AXI_GPIO_awaddr : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
    S_AXI_GPIO_awready : OUT STD_LOGIC;
    S_AXI_GPIO_awvalid : IN STD_LOGIC;
    S_AXI_GPIO_bready : IN STD_LOGIC;
    S_AXI_GPIO_bresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    S_AXI_GPIO_bvalid : OUT STD_LOGIC;
    S_AXI_GPIO_rdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    S_AXI_GPIO_rready : IN STD_LOGIC;
    S_AXI_GPIO_rresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    S_AXI_GPIO_rvalid : OUT STD_LOGIC;
    S_AXI_GPIO_wdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    S_AXI_GPIO_wready : OUT STD_LOGIC;
    S_AXI_GPIO_wstrb : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    S_AXI_GPIO_wvalid : IN STD_LOGIC;
    S_AXI_UART_araddr : IN STD_LOGIC_VECTOR(12 DOWNTO 0);
    S_AXI_UART_arready : OUT STD_LOGIC;
    S_AXI_UART_arvalid : IN STD_LOGIC;
    S_AXI_UART_awaddr : IN STD_LOGIC_VECTOR(12 DOWNTO 0);
    S_AXI_UART_awready : OUT STD_LOGIC;
    S_AXI_UART_awvalid : IN STD_LOGIC;
    S_AXI_UART_bready : IN STD_LOGIC;
    S_AXI_UART_bresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    S_AXI_UART_bvalid : OUT STD_LOGIC;
    S_AXI_UART_rdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    S_AXI_UART_rready : IN STD_LOGIC;
    S_AXI_UART_rresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    S_AXI_UART_rvalid : OUT STD_LOGIC;
    S_AXI_UART_wdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    S_AXI_UART_wready : OUT STD_LOGIC;
    S_AXI_UART_wstrb : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    S_AXI_UART_wvalid : IN STD_LOGIC;
    BLE_uart_interrupt : OUT STD_LOGIC;
    s_axi_aclk : IN STD_LOGIC;
    s_axi_aresetn : IN STD_LOGIC
  );
END COMPONENT;
-- COMP_TAG_END ------ End COMPONENT Declaration ------------

-- The following code must appear in the VHDL architecture
-- body. Substitute your own instance name and net names.

------------- Begin Cut here for INSTANTIATION Template ----- INST_TAG
your_instance_name : PmodBLE_0
  PORT MAP (
    Pmod_out_pin10_i => Pmod_out_pin10_i,
    Pmod_out_pin10_o => Pmod_out_pin10_o,
    Pmod_out_pin10_t => Pmod_out_pin10_t,
    Pmod_out_pin1_i => Pmod_out_pin1_i,
    Pmod_out_pin1_o => Pmod_out_pin1_o,
    Pmod_out_pin1_t => Pmod_out_pin1_t,
    Pmod_out_pin2_i => Pmod_out_pin2_i,
    Pmod_out_pin2_o => Pmod_out_pin2_o,
    Pmod_out_pin2_t => Pmod_out_pin2_t,
    Pmod_out_pin3_i => Pmod_out_pin3_i,
    Pmod_out_pin3_o => Pmod_out_pin3_o,
    Pmod_out_pin3_t => Pmod_out_pin3_t,
    Pmod_out_pin4_i => Pmod_out_pin4_i,
    Pmod_out_pin4_o => Pmod_out_pin4_o,
    Pmod_out_pin4_t => Pmod_out_pin4_t,
    Pmod_out_pin7_i => Pmod_out_pin7_i,
    Pmod_out_pin7_o => Pmod_out_pin7_o,
    Pmod_out_pin7_t => Pmod_out_pin7_t,
    Pmod_out_pin8_i => Pmod_out_pin8_i,
    Pmod_out_pin8_o => Pmod_out_pin8_o,
    Pmod_out_pin8_t => Pmod_out_pin8_t,
    Pmod_out_pin9_i => Pmod_out_pin9_i,
    Pmod_out_pin9_o => Pmod_out_pin9_o,
    Pmod_out_pin9_t => Pmod_out_pin9_t,
    S_AXI_GPIO_araddr => S_AXI_GPIO_araddr,
    S_AXI_GPIO_arready => S_AXI_GPIO_arready,
    S_AXI_GPIO_arvalid => S_AXI_GPIO_arvalid,
    S_AXI_GPIO_awaddr => S_AXI_GPIO_awaddr,
    S_AXI_GPIO_awready => S_AXI_GPIO_awready,
    S_AXI_GPIO_awvalid => S_AXI_GPIO_awvalid,
    S_AXI_GPIO_bready => S_AXI_GPIO_bready,
    S_AXI_GPIO_bresp => S_AXI_GPIO_bresp,
    S_AXI_GPIO_bvalid => S_AXI_GPIO_bvalid,
    S_AXI_GPIO_rdata => S_AXI_GPIO_rdata,
    S_AXI_GPIO_rready => S_AXI_GPIO_rready,
    S_AXI_GPIO_rresp => S_AXI_GPIO_rresp,
    S_AXI_GPIO_rvalid => S_AXI_GPIO_rvalid,
    S_AXI_GPIO_wdata => S_AXI_GPIO_wdata,
    S_AXI_GPIO_wready => S_AXI_GPIO_wready,
    S_AXI_GPIO_wstrb => S_AXI_GPIO_wstrb,
    S_AXI_GPIO_wvalid => S_AXI_GPIO_wvalid,
    S_AXI_UART_araddr => S_AXI_UART_araddr,
    S_AXI_UART_arready => S_AXI_UART_arready,
    S_AXI_UART_arvalid => S_AXI_UART_arvalid,
    S_AXI_UART_awaddr => S_AXI_UART_awaddr,
    S_AXI_UART_awready => S_AXI_UART_awready,
    S_AXI_UART_awvalid => S_AXI_UART_awvalid,
    S_AXI_UART_bready => S_AXI_UART_bready,
    S_AXI_UART_bresp => S_AXI_UART_bresp,
    S_AXI_UART_bvalid => S_AXI_UART_bvalid,
    S_AXI_UART_rdata => S_AXI_UART_rdata,
    S_AXI_UART_rready => S_AXI_UART_rready,
    S_AXI_UART_rresp => S_AXI_UART_rresp,
    S_AXI_UART_rvalid => S_AXI_UART_rvalid,
    S_AXI_UART_wdata => S_AXI_UART_wdata,
    S_AXI_UART_wready => S_AXI_UART_wready,
    S_AXI_UART_wstrb => S_AXI_UART_wstrb,
    S_AXI_UART_wvalid => S_AXI_UART_wvalid,
    BLE_uart_interrupt => BLE_uart_interrupt,
    s_axi_aclk => s_axi_aclk,
    s_axi_aresetn => s_axi_aresetn
  );
-- INST_TAG_END ------ End INSTANTIATION Template ---------

