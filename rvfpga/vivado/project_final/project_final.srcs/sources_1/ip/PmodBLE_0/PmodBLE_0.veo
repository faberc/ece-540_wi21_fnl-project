// (c) Copyright 1995-2021 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.

// IP VLNV: digilentinc.com:IP:PmodBLE:1.0
// IP Revision: 15

// The following must be inserted into your Verilog file for this
// core to be instantiated. Change the instance name and port connections
// (in parentheses) to your own signal names.

//----------- Begin Cut here for INSTANTIATION Template ---// INST_TAG
PmodBLE_0 your_instance_name (
  .Pmod_out_pin10_i(Pmod_out_pin10_i),      // input wire Pmod_out_pin10_i
  .Pmod_out_pin10_o(Pmod_out_pin10_o),      // output wire Pmod_out_pin10_o
  .Pmod_out_pin10_t(Pmod_out_pin10_t),      // output wire Pmod_out_pin10_t
  .Pmod_out_pin1_i(Pmod_out_pin1_i),        // input wire Pmod_out_pin1_i
  .Pmod_out_pin1_o(Pmod_out_pin1_o),        // output wire Pmod_out_pin1_o
  .Pmod_out_pin1_t(Pmod_out_pin1_t),        // output wire Pmod_out_pin1_t
  .Pmod_out_pin2_i(Pmod_out_pin2_i),        // input wire Pmod_out_pin2_i
  .Pmod_out_pin2_o(Pmod_out_pin2_o),        // output wire Pmod_out_pin2_o
  .Pmod_out_pin2_t(Pmod_out_pin2_t),        // output wire Pmod_out_pin2_t
  .Pmod_out_pin3_i(Pmod_out_pin3_i),        // input wire Pmod_out_pin3_i
  .Pmod_out_pin3_o(Pmod_out_pin3_o),        // output wire Pmod_out_pin3_o
  .Pmod_out_pin3_t(Pmod_out_pin3_t),        // output wire Pmod_out_pin3_t
  .Pmod_out_pin4_i(Pmod_out_pin4_i),        // input wire Pmod_out_pin4_i
  .Pmod_out_pin4_o(Pmod_out_pin4_o),        // output wire Pmod_out_pin4_o
  .Pmod_out_pin4_t(Pmod_out_pin4_t),        // output wire Pmod_out_pin4_t
  .Pmod_out_pin7_i(Pmod_out_pin7_i),        // input wire Pmod_out_pin7_i
  .Pmod_out_pin7_o(Pmod_out_pin7_o),        // output wire Pmod_out_pin7_o
  .Pmod_out_pin7_t(Pmod_out_pin7_t),        // output wire Pmod_out_pin7_t
  .Pmod_out_pin8_i(Pmod_out_pin8_i),        // input wire Pmod_out_pin8_i
  .Pmod_out_pin8_o(Pmod_out_pin8_o),        // output wire Pmod_out_pin8_o
  .Pmod_out_pin8_t(Pmod_out_pin8_t),        // output wire Pmod_out_pin8_t
  .Pmod_out_pin9_i(Pmod_out_pin9_i),        // input wire Pmod_out_pin9_i
  .Pmod_out_pin9_o(Pmod_out_pin9_o),        // output wire Pmod_out_pin9_o
  .Pmod_out_pin9_t(Pmod_out_pin9_t),        // output wire Pmod_out_pin9_t
  .S_AXI_GPIO_araddr(S_AXI_GPIO_araddr),    // input wire [8 : 0] S_AXI_GPIO_araddr
  .S_AXI_GPIO_arready(S_AXI_GPIO_arready),  // output wire S_AXI_GPIO_arready
  .S_AXI_GPIO_arvalid(S_AXI_GPIO_arvalid),  // input wire S_AXI_GPIO_arvalid
  .S_AXI_GPIO_awaddr(S_AXI_GPIO_awaddr),    // input wire [8 : 0] S_AXI_GPIO_awaddr
  .S_AXI_GPIO_awready(S_AXI_GPIO_awready),  // output wire S_AXI_GPIO_awready
  .S_AXI_GPIO_awvalid(S_AXI_GPIO_awvalid),  // input wire S_AXI_GPIO_awvalid
  .S_AXI_GPIO_bready(S_AXI_GPIO_bready),    // input wire S_AXI_GPIO_bready
  .S_AXI_GPIO_bresp(S_AXI_GPIO_bresp),      // output wire [1 : 0] S_AXI_GPIO_bresp
  .S_AXI_GPIO_bvalid(S_AXI_GPIO_bvalid),    // output wire S_AXI_GPIO_bvalid
  .S_AXI_GPIO_rdata(S_AXI_GPIO_rdata),      // output wire [31 : 0] S_AXI_GPIO_rdata
  .S_AXI_GPIO_rready(S_AXI_GPIO_rready),    // input wire S_AXI_GPIO_rready
  .S_AXI_GPIO_rresp(S_AXI_GPIO_rresp),      // output wire [1 : 0] S_AXI_GPIO_rresp
  .S_AXI_GPIO_rvalid(S_AXI_GPIO_rvalid),    // output wire S_AXI_GPIO_rvalid
  .S_AXI_GPIO_wdata(S_AXI_GPIO_wdata),      // input wire [31 : 0] S_AXI_GPIO_wdata
  .S_AXI_GPIO_wready(S_AXI_GPIO_wready),    // output wire S_AXI_GPIO_wready
  .S_AXI_GPIO_wstrb(S_AXI_GPIO_wstrb),      // input wire [3 : 0] S_AXI_GPIO_wstrb
  .S_AXI_GPIO_wvalid(S_AXI_GPIO_wvalid),    // input wire S_AXI_GPIO_wvalid
  .S_AXI_UART_araddr(S_AXI_UART_araddr),    // input wire [12 : 0] S_AXI_UART_araddr
  .S_AXI_UART_arready(S_AXI_UART_arready),  // output wire S_AXI_UART_arready
  .S_AXI_UART_arvalid(S_AXI_UART_arvalid),  // input wire S_AXI_UART_arvalid
  .S_AXI_UART_awaddr(S_AXI_UART_awaddr),    // input wire [12 : 0] S_AXI_UART_awaddr
  .S_AXI_UART_awready(S_AXI_UART_awready),  // output wire S_AXI_UART_awready
  .S_AXI_UART_awvalid(S_AXI_UART_awvalid),  // input wire S_AXI_UART_awvalid
  .S_AXI_UART_bready(S_AXI_UART_bready),    // input wire S_AXI_UART_bready
  .S_AXI_UART_bresp(S_AXI_UART_bresp),      // output wire [1 : 0] S_AXI_UART_bresp
  .S_AXI_UART_bvalid(S_AXI_UART_bvalid),    // output wire S_AXI_UART_bvalid
  .S_AXI_UART_rdata(S_AXI_UART_rdata),      // output wire [31 : 0] S_AXI_UART_rdata
  .S_AXI_UART_rready(S_AXI_UART_rready),    // input wire S_AXI_UART_rready
  .S_AXI_UART_rresp(S_AXI_UART_rresp),      // output wire [1 : 0] S_AXI_UART_rresp
  .S_AXI_UART_rvalid(S_AXI_UART_rvalid),    // output wire S_AXI_UART_rvalid
  .S_AXI_UART_wdata(S_AXI_UART_wdata),      // input wire [31 : 0] S_AXI_UART_wdata
  .S_AXI_UART_wready(S_AXI_UART_wready),    // output wire S_AXI_UART_wready
  .S_AXI_UART_wstrb(S_AXI_UART_wstrb),      // input wire [3 : 0] S_AXI_UART_wstrb
  .S_AXI_UART_wvalid(S_AXI_UART_wvalid),    // input wire S_AXI_UART_wvalid
  .BLE_uart_interrupt(BLE_uart_interrupt),  // output wire BLE_uart_interrupt
  .s_axi_aclk(s_axi_aclk),                  // input wire s_axi_aclk
  .s_axi_aresetn(s_axi_aresetn)            // input wire s_axi_aresetn
);
// INST_TAG_END ------ End INSTANTIATION Template ---------

