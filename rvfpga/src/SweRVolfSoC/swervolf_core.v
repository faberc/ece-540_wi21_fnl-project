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
// Function: SweRVolf tech-agnostic toplevel
//
// Comments: Updated 2/15/2021 by Chuck Faber
// Implemented custom peripheral rojobot_top module
//
//********************************************************************************

`default_nettype none
module swervolf_core
  #(parameter bootrom_file  = "")
   (input wire         clk,
    input wire         rstn,
    input wire         dmi_reg_en,
    input wire [6:0]   dmi_reg_addr,
    input wire 	       dmi_reg_wr_en,
    input wire [31:0]  dmi_reg_wdata,
    output wire [31:0] dmi_reg_rdata,
    input wire 	       dmi_hard_reset,
    output wire        o_flash_sclk,
    output wire        o_flash_cs_n,
    output wire        o_flash_mosi,
    input wire 	       i_flash_miso,
    input wire 	       i_uart_rx,
    output wire        o_uart_tx,
    output wire [5:0]  o_ram_awid,
    output wire [31:0] o_ram_awaddr,
    output wire [7:0]  o_ram_awlen,
    output wire [2:0]  o_ram_awsize,
    output wire [1:0]  o_ram_awburst,
    output wire        o_ram_awlock,
    output wire [3:0]  o_ram_awcache,
    output wire [2:0]  o_ram_awprot,
    output wire [3:0]  o_ram_awregion,
    output wire [3:0]  o_ram_awqos,
    output wire        o_ram_awvalid,
    input wire 	       i_ram_awready,
    output wire [5:0]  o_ram_arid,
    output wire [31:0] o_ram_araddr,
    output wire [7:0]  o_ram_arlen,
    output wire [2:0]  o_ram_arsize,
    output wire [1:0]  o_ram_arburst,
    output wire        o_ram_arlock,
    output wire [3:0]  o_ram_arcache,
    output wire [2:0]  o_ram_arprot,
    output wire [3:0]  o_ram_arregion,
    output wire [3:0]  o_ram_arqos,
    output wire        o_ram_arvalid,
    input wire 	       i_ram_arready,
    output wire [63:0] o_ram_wdata,
    output wire [7:0]  o_ram_wstrb,
    output wire        o_ram_wlast,
    output wire        o_ram_wvalid,
    input wire 	       i_ram_wready,
    input wire [5:0]   i_ram_bid,
    input wire [1:0]   i_ram_bresp,
    input wire 	       i_ram_bvalid,
    output wire        o_ram_bready,
    input wire [5:0]   i_ram_rid,
    input wire [63:0]  i_ram_rdata,
    input wire [1:0]   i_ram_rresp,
    input wire 	       i_ram_rlast,
    input wire 	       i_ram_rvalid,
    output wire        o_ram_rready,
    input wire 	       i_ram_init_done,
    input wire 	       i_ram_init_error,
    inout wire [31:0]  io_data,
    inout wire [31:0]  io_data_a,
    inout wire [1:0]   io_aux,

    output wire [ 7          :0] AN,
    output wire                  DP,
    output wire [ 6          :0] Digits_Bits,

    output wire        o_accel_sclk,
    output wire        o_accel_cs_n,
    output wire        o_accel_mosi,
    input wire         i_accel_miso,

    // ROJO Bot Signals
    // inout wire [31:0]   io_botinfo,
    // inout wire [7:0]    io_botctrl,
    // input wire          io_botupdt_sync,
    // output wire         io_int_ack,

    // Debounced Switches Output
    output wire [15:0]  sw_db,

    // Rope Game Signals
    output wire [9:0]  rope_loc,

    // BLE Pmod
        // Junction A -- BLE PMOD
    output wire        ble_rts,         // RTS
    output wire        ble_rxd,         // RXD
    input wire         ble_txd,         // TXD
    input wire         ble_cts,         // CTS
    inout wire         ble_gpio,        // GPIO
    input wire         ble_rstn,        // RST_N
    inout wire         ble_mode,        // MODE
    inout wire         ble_status       // STATUS
    );


   localparam BOOTROM_SIZE = 32'h1000;

   wire        rst_n = rstn;
   wire        timer_irq;
   wire        uart_irq;
   wire        spi0_irq;
   wire        sw_irq4;
   wire        sw_irq3;
   wire        nmi_int;

   wire [31:0] nmi_vec;

`include "axi_intercon.vh"

   assign o_ram_awid     = ram_awid;
   assign o_ram_awaddr   = ram_awaddr;
   assign o_ram_awlen    = ram_awlen;
   assign o_ram_awsize   = ram_awsize;
   assign o_ram_awburst  = ram_awburst;
   assign o_ram_awlock   = ram_awlock;
   assign o_ram_awcache  = ram_awcache;
   assign o_ram_awprot   = ram_awprot;
   assign o_ram_awregion = ram_awregion;
   assign o_ram_awqos    = ram_awqos;
   assign o_ram_awvalid  = ram_awvalid;
   assign ram_awready    = i_ram_awready;
   assign o_ram_arid     = ram_arid;
   assign o_ram_araddr   = ram_araddr;
   assign o_ram_arlen    = ram_arlen;
   assign o_ram_arsize   = ram_arsize;
   assign o_ram_arburst  = ram_arburst;
   assign o_ram_arlock   = ram_arlock;
   assign o_ram_arcache  = ram_arcache;
   assign o_ram_arprot   = ram_arprot;
   assign o_ram_arregion = ram_arregion;
   assign o_ram_arqos    = ram_arqos;
   assign o_ram_arvalid  = ram_arvalid;
   assign ram_arready    = i_ram_arready;
   assign o_ram_wdata    = ram_wdata;
   assign o_ram_wstrb    = ram_wstrb;
   assign o_ram_wlast    = ram_wlast;
   assign o_ram_wvalid   = ram_wvalid;
   assign ram_wready     = i_ram_wready;
   assign ram_bid        = i_ram_bid;
   assign ram_bresp      = i_ram_bresp;
   assign ram_bvalid     = i_ram_bvalid;
   assign o_ram_bready   = ram_bready;
   assign ram_rid        = i_ram_rid;
   assign ram_rdata      = i_ram_rdata;
   assign ram_rresp      = i_ram_rresp;
   assign ram_rlast      = i_ram_rlast;
   assign ram_rvalid     = i_ram_rvalid;
   assign o_ram_rready   = ram_rready;

   assign io_rlast = 1'b1;

   reg [`RV_LSU_BUS_TAG+1:0]  bid;
   reg [`RV_LSU_BUS_TAG+1:0]  rid;
   
   always @(posedge clk)
     if (io_awvalid & io_awready)
       bid <= io_awid;

   assign io_bid = bid;

   always @(posedge clk)
     if (io_arvalid & io_arready)
       rid <= io_arid;

   assign io_rid = rid;

   wire       wb_clk = clk;
   wire       wb_rst = ~rst_n;


`include "wb_intercon.vh"
   
   wire [15:2] 		       wb_adr;

   assign		       wb_m2s_io_adr = {16'd0,wb_adr,2'b00};

   axi2wb
     #(.AW (16))
   axi2wb
     (
      .i_clk       (clk),
      .i_rst       (~rst_n),
      .o_wb_adr    (wb_adr),
      .o_wb_dat    (wb_m2s_io_dat),
      .o_wb_sel    (wb_m2s_io_sel),
      .o_wb_we     (wb_m2s_io_we),
      .o_wb_cyc    (wb_m2s_io_cyc),
      .o_wb_stb    (wb_m2s_io_stb),
      .i_wb_rdt    (wb_s2m_io_dat),
      .i_wb_ack    (wb_s2m_io_ack),
      .i_wb_err    (1'b0),

      .i_awaddr    (io_awaddr[15:0]),
      .i_awvalid   (io_awvalid),
      .o_awready   (io_awready),

      .i_araddr    (io_araddr[15:0]),
      .i_arvalid   (io_arvalid),
      .o_arready   (io_arready),

      .i_wdata     (io_wdata),
      .i_wstrb     (io_wstrb),
      .i_wvalid    (io_wvalid),
      .o_wready    (io_wready),

      .o_bvalid    (io_bvalid),
      .i_bready    (io_bready),

      .o_rdata     (io_rdata),
      .o_rvalid    (io_rvalid),
      .i_rready    (io_rready));

   wb_mem_wrapper
     #(.MEM_SIZE  (BOOTROM_SIZE),
       .INIT_FILE (bootrom_file))
   bootrom
     (.i_clk    (wb_clk),
      .i_rst    (wb_rst),
      .i_wb_adr (wb_m2s_rom_adr[$clog2(BOOTROM_SIZE)-1:2]),
      .i_wb_dat (wb_m2s_rom_dat),
      .i_wb_sel (wb_m2s_rom_sel),
      .i_wb_we  (wb_m2s_rom_we),
      .i_wb_cyc (wb_m2s_rom_cyc),
      .i_wb_stb (wb_m2s_rom_stb),
      .o_wb_rdt (wb_s2m_rom_dat),
      .o_wb_ack (wb_s2m_rom_ack));

   swervolf_syscon syscon
     (.i_clk            (clk),
      .i_rst            (wb_rst),
      .gpio_irq         (gpio_irq),
      .gpio_a_irq       (gpio_a_irq),
      .ptc_irq          (ptc_irq),
      .o_timer_irq      (timer_irq),
      .o_sw_irq3        (sw_irq3),
      .o_sw_irq4        (sw_irq4),
      .i_ram_init_done  (i_ram_init_done),
      .i_ram_init_error (i_ram_init_error),
      .o_nmi_vec        (nmi_vec),
      .o_nmi_int        (nmi_int),
      .i_wb_adr         (wb_m2s_sys_adr[5:0]),
      .i_wb_dat         (wb_m2s_sys_dat),
      .i_wb_sel         (wb_m2s_sys_sel),
      .i_wb_we          (wb_m2s_sys_we),
      .i_wb_cyc         (wb_m2s_sys_cyc),
      .i_wb_stb         (wb_m2s_sys_stb),
      .o_wb_rdt         (wb_s2m_sys_dat),
      .o_wb_ack         (wb_s2m_sys_ack),
      .DP (DP),
      .AN (AN),
      .Digits_Bits (Digits_Bits)
      );

   wire [7:0] 		       spi_rdt;
   assign wb_s2m_spi_flash_dat = {24'd0,spi_rdt};

   simple_spi spi
     (// Wishbone slave interface
      .clk_i  (clk),
      .rst_i  (wb_rst),
      .adr_i  (wb_m2s_spi_flash_adr[2] ? 3'd0 : wb_m2s_spi_flash_adr[5:3]),
      .dat_i  (wb_m2s_spi_flash_dat[7:0]),
      .we_i   (wb_m2s_spi_flash_we),
      .cyc_i  (wb_m2s_spi_flash_cyc),
      .stb_i  (wb_m2s_spi_flash_stb),
      .dat_o  (spi_rdt),
      .ack_o  (wb_s2m_spi_flash_ack),
      .inta_o (spi0_irq),
      // SPI interface
      .sck_o  (o_flash_sclk),
      .ss_o   (o_flash_cs_n),
      .mosi_o (o_flash_mosi),
      .miso_i (i_flash_miso));

   wire [7:0] 		       uart_rdt;
   assign wb_s2m_uart_dat = {24'd0, uart_rdt};

   wire o_core_tx;
   wire i_core_rx;

   uart_top uart16550_0
     (// Wishbone slave interface
      .wb_clk_i	(clk),
      .wb_rst_i	(~rst_n),
      .wb_adr_i	(wb_m2s_uart_adr[4:2]),
      .wb_dat_i	(wb_m2s_uart_dat[7:0]),
      .wb_we_i	(wb_m2s_uart_we),
      .wb_cyc_i	(wb_m2s_uart_cyc),
      .wb_stb_i	(wb_m2s_uart_stb),
      .wb_sel_i	(4'b0), // Not used in 8-bit mode
      .wb_dat_o	(uart_rdt),
      .wb_ack_o	(wb_s2m_uart_ack),

      // Outputs
      .int_o     (uart_irq),
      .stx_pad_o (/*o_uart_tx*/o_core_tx),
      .rts_pad_o (),
      .dtr_pad_o (),

      // Inputs
      .srx_pad_i (/*i_uart_rx*/i_core_rx),
      .cts_pad_i (1'b0),
      .dsr_pad_i (1'b0),
      .ri_pad_i  (1'b0),
      .dcd_pad_i (1'b0),
      .baud_o (/*s_tick*/)
      );

    // PWM audio

    wire pwm_irq;
    wire ignore_aux;

    wbpwmaudio ropegameaudio (
      .i_clk(wb_clk),
      .i_reset(wb_rst),
      .i_wb_cyc(wb_m2s_pwm_cyc),
      .i_wb_stb(wb_m2s_pwm_stb),
      .i_wb_we(wb_m2s_pwm_we),
      .i_wb_addr(wb_m2s_pwm_adr[2]),
      .i_wb_data(wb_m2s_pwm_dat),
      .o_wb_ack(wb_s2m_pwm_ack),
      .o_wb_stall(wb_s2m_pwm_err),
      .o_wb_data(wb_s2m_pwm_dat),
      .o_pwm(io_aux[1]),
      .o_aux(ignore_aux),
      .o_int(pwm_irq)

    );

    assign io_aux[0] = 1'b1;

    // Adding UART RX Interpreter
    wire        s_tick;
    wire [10:0] divisor;
    assign      divisor = 27;        // Divisor value for 115200 baud.

    baud_gen baud_115200 (
        .clk(clk), 
        .reset(~rst_n),         // system clock and reset
        .dvsr(divisor),         // divisor for the clock divider -- [100MHz / (16 * 115200)] = 54
        .tick(s_tick)        // one cycle sampling clock signal
    );

    wire rx_done;
    wire [7:0] rx_data;
    wire ble_txd_parse;
    wire drdy_tick;
    wire [63:0] ascii_out;
    wire parsed_tick;
    wire [31:0] ble_accel_val;

    uart_rx
    #(
        .DBIT(8),               // 8 Data Bits
        .SB_TICK(16)            // 16 ticks per stop bit
    ) rx_interpreter (
        .clk(clk),
        .reset(~rst_n),
        .rx(ble_txd_parse),
        .s_tick(s_tick),
        .rx_done_tick(rx_done),
        .dout(rx_data),
        .smpl_tick()            // Debug Signal
    );

    uart_parse up0 (
        .clk(clk),
        .reset(~rst_n),
        .brcv_tick(rx_done),
        .byte_in(rx_data),
        .drdy_tick(drdy_tick),
        .ascii_out(ascii_out)
    );

    ascii_2_hex a2h (
        .clk(clk),
        .reset(~rst_n),
        .drdy_tick(drdy_tick),
        .ascii(ascii_out),
        .parsed_tick(parsed_tick),
        .hex_result(ble_accel_val)
    );

    // Adding BLE PMOD
    pmod_ble_top ble0 (
        .clk(clk),

        // Computer UART Connections
        .i_uart_rx(i_uart_rx),        // UART RX Data from Computer
        .o_uart_tx(o_uart_tx),        // UART TX Data To Computer

        // UART Core Connections
        .i_core_rx(o_core_tx),
        .o_core_tx(i_core_rx),

        .o_parse_tx(ble_txd_parse),
        .sw(sw_db[0]),

        // PMOD Interface
        .o_pmod_rxd(ble_rxd),               // Receive on RN4871 - FPGA drives this -- pin 2
        .i_pmod_txd(ble_txd),               // Transmit on RN4871 -- pin 3
        .o_pmod_rstn(ble_rstn)              // pin 8
    );

    // GPIO - Leds and Switches
    wire [31:0] en_gpio;
    wire        gpio_irq;
    wire [31:0] i_gpio;
    wire [31:0] o_gpio;

    // GPIO A module
    wire [31:0] en_gpio_a;
    wire [31:0] i_gpio_a;
    wire [31:0] o_gpio_a;
    wire        gpio_a_irq;

    // Peripheral 1 Signals
    wire [31:0] en_gpio_b;
    wire [31:0] i_gpio_b;
    wire [31:0] o_gpio_b;
    wire        gpio_b_irq;

    // Push buttons and Switches Debounced
    wire [5:0] pbtn_db;
    // wire [15:0] sw_db;

    // Tristate Bidirects for LEDs and Switches
    bidirec gpio0  (.oe(en_gpio[0] ), .inp(o_gpio[0] ), .outp(i_gpio[0] ), .bidir(io_data[0] ));
    bidirec gpio1  (.oe(en_gpio[1] ), .inp(o_gpio[1] ), .outp(i_gpio[1] ), .bidir(io_data[1] ));
    bidirec gpio2  (.oe(en_gpio[2] ), .inp(o_gpio[2] ), .outp(i_gpio[2] ), .bidir(io_data[2] ));
    bidirec gpio3  (.oe(en_gpio[3] ), .inp(o_gpio[3] ), .outp(i_gpio[3] ), .bidir(io_data[3] ));
    bidirec gpio4  (.oe(en_gpio[4] ), .inp(o_gpio[4] ), .outp(i_gpio[4] ), .bidir(io_data[4] ));
    bidirec gpio5  (.oe(en_gpio[5] ), .inp(o_gpio[5] ), .outp(i_gpio[5] ), .bidir(io_data[5] ));
    bidirec gpio6  (.oe(en_gpio[6] ), .inp(o_gpio[6] ), .outp(i_gpio[6] ), .bidir(io_data[6] ));
    bidirec gpio7  (.oe(en_gpio[7] ), .inp(o_gpio[7] ), .outp(i_gpio[7] ), .bidir(io_data[7] ));
    bidirec gpio8  (.oe(en_gpio[8] ), .inp(o_gpio[8] ), .outp(i_gpio[8] ), .bidir(io_data[8] ));
    bidirec gpio9  (.oe(en_gpio[9] ), .inp(o_gpio[9] ), .outp(i_gpio[9] ), .bidir(io_data[9] ));
    bidirec gpio10 (.oe(en_gpio[10]), .inp(o_gpio[10]), .outp(i_gpio[10]), .bidir(io_data[10]));
    bidirec gpio11 (.oe(en_gpio[11]), .inp(o_gpio[11]), .outp(i_gpio[11]), .bidir(io_data[11]));
    bidirec gpio12 (.oe(en_gpio[12]), .inp(o_gpio[12]), .outp(i_gpio[12]), .bidir(io_data[12]));
    bidirec gpio13 (.oe(en_gpio[13]), .inp(o_gpio[13]), .outp(i_gpio[13]), .bidir(io_data[13]));
    bidirec gpio14 (.oe(en_gpio[14]), .inp(o_gpio[14]), .outp(i_gpio[14]), .bidir(io_data[14]));
    bidirec gpio15 (.oe(en_gpio[15]), .inp(o_gpio[15]), .outp(i_gpio[15]), .bidir(io_data[15]));
    bidirec gpio16 (.oe(en_gpio[16]), .inp(o_gpio[16]), .outp(i_gpio[16]), .bidir(io_data[16]));
    bidirec gpio17 (.oe(en_gpio[17]), .inp(o_gpio[17]), .outp(i_gpio[17]), .bidir(io_data[17]));
    bidirec gpio18 (.oe(en_gpio[18]), .inp(o_gpio[18]), .outp(i_gpio[18]), .bidir(io_data[18]));
    bidirec gpio19 (.oe(en_gpio[19]), .inp(o_gpio[19]), .outp(i_gpio[19]), .bidir(io_data[19]));
    bidirec gpio20 (.oe(en_gpio[20]), .inp(o_gpio[20]), .outp(i_gpio[20]), .bidir(io_data[20]));
    bidirec gpio21 (.oe(en_gpio[21]), .inp(o_gpio[21]), .outp(i_gpio[21]), .bidir(io_data[21]));
    bidirec gpio22 (.oe(en_gpio[22]), .inp(o_gpio[22]), .outp(i_gpio[22]), .bidir(io_data[22]));
    bidirec gpio23 (.oe(en_gpio[23]), .inp(o_gpio[23]), .outp(i_gpio[23]), .bidir(io_data[23]));
    bidirec gpio24 (.oe(en_gpio[24]), .inp(o_gpio[24]), .outp(i_gpio[24]), .bidir(io_data[24]));
    bidirec gpio25 (.oe(en_gpio[25]), .inp(o_gpio[25]), .outp(i_gpio[25]), .bidir(io_data[25]));
    bidirec gpio26 (.oe(en_gpio[26]), .inp(o_gpio[26]), .outp(i_gpio[26]), .bidir(io_data[26]));
    bidirec gpio27 (.oe(en_gpio[27]), .inp(o_gpio[27]), .outp(i_gpio[27]), .bidir(io_data[27]));
    bidirec gpio28 (.oe(en_gpio[28]), .inp(o_gpio[28]), .outp(i_gpio[28]), .bidir(io_data[28]));
    bidirec gpio29 (.oe(en_gpio[29]), .inp(o_gpio[29]), .outp(i_gpio[29]), .bidir(io_data[29]));
    bidirec gpio30 (.oe(en_gpio[30]), .inp(o_gpio[30]), .outp(i_gpio[30]), .bidir(io_data[30]));
    bidirec gpio31 (.oe(en_gpio[31]), .inp(o_gpio[31]), .outp(i_gpio[31]), .bidir(io_data[31]));
  
    // GPIO A Module Tri-state Buffers
    bidirec gpio0a  (.oe(en_gpio_a[0]),  .inp(o_gpio_a[0]),  .outp(i_gpio_a[0]),  .bidir(io_data_a[0]));
    bidirec gpio1a  (.oe(en_gpio_a[1]),  .inp(o_gpio_a[1]),  .outp(i_gpio_a[1]),  .bidir(io_data_a[1]));
    bidirec gpio2a  (.oe(en_gpio_a[2]),  .inp(o_gpio_a[2]),  .outp(i_gpio_a[2]),  .bidir(io_data_a[2]));
    bidirec gpio3a  (.oe(en_gpio_a[3]),  .inp(o_gpio_a[3]),  .outp(i_gpio_a[3]),  .bidir(io_data_a[3]));
    bidirec gpio4a  (.oe(en_gpio_a[4]),  .inp(o_gpio_a[4]),  .outp(i_gpio_a[4]),  .bidir(io_data_a[4]));
    // bidirec gpio5a  (.oe(en_gpio_a[5]),  .inp(o_gpio_a[5]),  .outp(i_gpio_a[5]),  .bidir(io_data_a[5]));
    // bidirec gpio6a  (.oe(en_gpio_a[6]),  .inp(o_gpio_a[6]),  .outp(i_gpio_a[6]),  .bidir(io_data_a[6]));
    // bidirec gpio7a  (.oe(en_gpio_a[7]),  .inp(o_gpio_a[7]),  .outp(i_gpio_a[7]),  .bidir(io_data_a[7]));
    // bidirec gpio8a  (.oe(en_gpio_a[8]),  .inp(o_gpio_a[8]),  .outp(i_gpio_a[8]),  .bidir(io_data_a[8]));
    // bidirec gpio9a  (.oe(en_gpio_a[9]),  .inp(o_gpio_a[9]),  .outp(i_gpio_a[9]),  .bidir(io_data_a[9]));
    // bidirec gpio10a (.oe(en_gpio_a[10]), .inp(o_gpio_a[10]), .outp(i_gpio_a[10]), .bidir(io_data_a[10]));
    // bidirec gpio11a (.oe(en_gpio_a[11]), .inp(o_gpio_a[11]), .outp(i_gpio_a[11]), .bidir(io_data_a[11]));
    // bidirec gpio12a (.oe(en_gpio_a[12]), .inp(o_gpio_a[12]), .outp(i_gpio_a[12]), .bidir(io_data_a[12]));
    // bidirec gpio13a (.oe(en_gpio_a[13]), .inp(o_gpio_a[13]), .outp(i_gpio_a[13]), .bidir(io_data_a[13]));
    // bidirec gpio14a (.oe(en_gpio_a[14]), .inp(o_gpio_a[14]), .outp(i_gpio_a[14]), .bidir(io_data_a[14]));
    // bidirec gpio15a (.oe(en_gpio_a[15]), .inp(o_gpio_a[15]), .outp(i_gpio_a[15]), .bidir(io_data_a[15]));
    // bidirec gpio16a (.oe(en_gpio_a[16]), .inp(o_gpio_a[16]), .outp(i_gpio_a[16]), .bidir(io_data_a[16]));
    // bidirec gpio17a (.oe(en_gpio_a[17]), .inp(o_gpio_a[17]), .outp(i_gpio_a[17]), .bidir(io_data_a[17]));
    // bidirec gpio18a (.oe(en_gpio_a[18]), .inp(o_gpio_a[18]), .outp(i_gpio_a[18]), .bidir(io_data_a[18]));
    // bidirec gpio19a (.oe(en_gpio_a[19]), .inp(o_gpio_a[19]), .outp(i_gpio_a[19]), .bidir(io_data_a[19]));
    // bidirec gpio20a (.oe(en_gpio_a[20]), .inp(o_gpio_a[20]), .outp(i_gpio_a[20]), .bidir(io_data_a[20]));
    // bidirec gpio21a (.oe(en_gpio_a[21]), .inp(o_gpio_a[21]), .outp(i_gpio_a[21]), .bidir(io_data_a[21]));
    // bidirec gpio22a (.oe(en_gpio_a[22]), .inp(o_gpio_a[22]), .outp(i_gpio_a[22]), .bidir(io_data_a[22]));
    // bidirec gpio23a (.oe(en_gpio_a[23]), .inp(o_gpio_a[23]), .outp(i_gpio_a[23]), .bidir(io_data_a[23]));
    // bidirec gpio24a (.oe(en_gpio_a[24]), .inp(o_gpio_a[24]), .outp(i_gpio_a[24]), .bidir(io_data_a[24]));
    // bidirec gpio25a (.oe(en_gpio_a[25]), .inp(o_gpio_a[25]), .outp(i_gpio_a[25]), .bidir(io_data_a[25]));
    // bidirec gpio26a (.oe(en_gpio_a[26]), .inp(o_gpio_a[26]), .outp(i_gpio_a[26]), .bidir(io_data_a[26]));
    // bidirec gpio27a (.oe(en_gpio_a[27]), .inp(o_gpio_a[27]), .outp(i_gpio_a[27]), .bidir(io_data_a[27]));
    // bidirec gpio28a (.oe(en_gpio_a[28]), .inp(o_gpio_a[28]), .outp(i_gpio_a[28]), .bidir(io_data_a[28]));
    // bidirec gpio29a (.oe(en_gpio_a[29]), .inp(o_gpio_a[29]), .outp(i_gpio_a[29]), .bidir(io_data_a[29]));
    // bidirec gpio30a (.oe(en_gpio_a[30]), .inp(o_gpio_a[30]), .outp(i_gpio_a[30]), .bidir(io_data_a[30]));
    // bidirec gpio31a (.oe(en_gpio_a[31]), .inp(o_gpio_a[31]), .outp(i_gpio_a[31]), .bidir(io_data_a[31]));

    // Debouncing Module
    debounce db_buttons(
        .clk          (clk),
        .pbtn_in      ({1'bz, i_gpio_a[4:0]}),
        .switch_in    (i_gpio[31:16]),
        .pbtn_db      (pbtn_db[5:0]),
        .swtch_db     (sw_db[15:0])
   );

    gpio_top gpio_module(
        .wb_clk_i     (clk), 
        .wb_rst_i     (wb_rst), 
        .wb_cyc_i     (wb_m2s_gpio_cyc), 
        .wb_adr_i     ({2'b0,wb_m2s_gpio_adr[5:2],2'b0}), 
        .wb_dat_i     (wb_m2s_gpio_dat), 
        .wb_sel_i     (4'b1111),
        .wb_we_i      (wb_m2s_gpio_we), 
        .wb_stb_i     (wb_m2s_gpio_stb), 
        .wb_dat_o     (wb_s2m_gpio_dat),
        .wb_ack_o     (wb_s2m_gpio_ack), 
        .wb_err_o     (wb_s2m_gpio_err),
        .wb_inta_o    (gpio_irq),
        // External GPIO Interface
        .ext_pad_i     ({sw_db[15:0],i_gpio[15:0]}),
        .ext_pad_o     (o_gpio[31:0]),
        .ext_padoe_o   (en_gpio));


   // New Instantiation of GPIO A for SimpleBot
    gpio_top gpio_module_a(
        .wb_clk_i     (clk), 
        .wb_rst_i     (wb_rst), 
        .wb_cyc_i     (wb_m2s_gpio_a_cyc), 
        .wb_adr_i     ({2'b0,wb_m2s_gpio_a_adr[5:2],2'b0}), 
        .wb_dat_i     (wb_m2s_gpio_a_dat), 
        .wb_sel_i     (4'b1111),
        .wb_we_i      (wb_m2s_gpio_a_we), 
        .wb_stb_i     (wb_m2s_gpio_a_stb), 
        .wb_dat_o     (wb_s2m_gpio_a_dat),
        .wb_ack_o     (wb_s2m_gpio_a_ack), 
        .wb_err_o     (wb_s2m_gpio_a_err),
        .wb_inta_o    (gpio_a_irq),
        // External GPIO Interface
        .ext_pad_i     ({i_gpio_a[31:5],pbtn_db[4:0]}),
        .ext_pad_o     (o_gpio_a[31:0]),
        .ext_padoe_o   (en_gpio_a));


    // Instantiation of RojoBot Peripheral
    // wire            per1_irq;

    // periph_top per1 (
    //     .wb_clk_i   (clk), 
    //     .wb_rst_i   (wb_rst), 
    //     .wb_adr_i   (wb_m2s_per1_adr), 
    //     .wb_dat_i   (wb_m2s_per1_dat), 
    //     .wb_sel_i   (wb_m2s_per1_sel), 
    //     .wb_we_i    (wb_m2s_per1_we), 
    //     .wb_cyc_i   (wb_m2s_per1_cyc), 
    //     .wb_stb_i   (wb_m2s_per1_stb), 
    //     .wb_dat_o   (wb_s2m_per1_dat), 
    //     .wb_ack_o   (wb_s2m_per1_ack), 
    //     .wb_err_o   (wb_s2m_per1_err), 
    //     .wb_inta_o  (per1_irq),
    //     .i_reg_a    (io_botinfo[31:0]),
    //     .o_reg_a    (io_botctrl[7:0]),
    //     .i_reg_b    ({31'b0, io_botupdt_sync}),
    //     .o_reg_b    (io_int_ack)
    // );


    // Instantiation of Rope Game Peripheral
    wire            per2_irq;

    periph_top per2 (
        .wb_clk_i   (clk), 
        .wb_rst_i   (wb_rst), 
        .wb_adr_i   (wb_m2s_per2_adr), 
        .wb_dat_i   (wb_m2s_per2_dat), 
        .wb_sel_i   (wb_m2s_per2_sel), 
        .wb_we_i    (wb_m2s_per2_we), 
        .wb_cyc_i   (wb_m2s_per2_cyc), 
        .wb_stb_i   (wb_m2s_per2_stb), 
        .wb_dat_o   (wb_s2m_per2_dat), 
        .wb_ack_o   (wb_s2m_per2_ack), 
        .wb_err_o   (wb_s2m_per2_err), 
        .wb_inta_o  (per2_irq),
        .i_reg_a    (ble_accel_val[31:0]),
        .o_reg_a    (rope_loc[9:0]),
        .i_reg_b    (),
        .o_reg_b    ()
    );

   // PTC
   wire        ptc_irq;

   ptc_top timer_ptc(
        .wb_clk_i     (clk), 
        .wb_rst_i     (wb_rst), 
        .wb_cyc_i     (wb_m2s_ptc_cyc), 
        .wb_adr_i     ({2'b0,wb_m2s_ptc_adr[5:2],2'b0}), 
        .wb_dat_i     (wb_m2s_ptc_dat), 
        .wb_sel_i     (4'b1111),
        .wb_we_i      (wb_m2s_ptc_we), 
        .wb_stb_i     (wb_m2s_ptc_stb), 
        .wb_dat_o     (wb_s2m_ptc_dat),
        .wb_ack_o     (wb_s2m_ptc_ack), 
        .wb_err_o     (wb_s2m_ptc_err),
        .wb_inta_o    (ptc_irq),
        // External PTC Interface
        .gate_clk_pad_i (),
        .capt_pad_i (),
        .pwm_pad_o (),
        .oen_padoen_o ()
   );

   // SPI for the Accelerometer
   wire [7:0]            spi2_rdt;
   assign wb_s2m_spi_accel_dat = {24'd0,spi2_rdt};
   wire        spi2_irq;

   simple_spi spi2
     (// Wishbone slave interface
      .clk_i  (clk),
      .rst_i  (wb_rst),
      .adr_i  (wb_m2s_spi_accel_adr[2] ? 3'd0 : wb_m2s_spi_accel_adr[5:3]),
      .dat_i  (wb_m2s_spi_accel_dat[7:0]),
      .we_i   (wb_m2s_spi_accel_we),
      .cyc_i  (wb_m2s_spi_accel_cyc),
      .stb_i  (wb_m2s_spi_accel_stb),
      .dat_o  (spi2_rdt),
      .ack_o  (wb_s2m_spi_accel_ack),
      .inta_o (spi2_irq),
      // SPI interface
      .sck_o  (o_accel_sclk),
      .ss_o   (o_accel_cs_n),
      .mosi_o (o_accel_mosi),
      .miso_i (i_accel_miso));


   swerv_wrapper swerv_eh1
     (
      .clk     (clk),
      .rst_l   (rstn),
      .dbg_rst_l   (rstn),
      .rst_vec (31'h40000000),
      .nmi_int (nmi_int),
      .nmi_vec (nmi_vec[31:1]),

      .trace_rv_i_insn_ip      (),
      .trace_rv_i_address_ip   (),
      .trace_rv_i_valid_ip     (),
      .trace_rv_i_exception_ip (),
      .trace_rv_i_ecause_ip    (),
      .trace_rv_i_interrupt_ip (),
      .trace_rv_i_tval_ip      (),

      // Bus signals
      //-------------------------- LSU AXI signals--------------------------
      .lsu_axi_awvalid  (lsu_awvalid),
      .lsu_axi_awready  (lsu_awready),
      .lsu_axi_awid     (lsu_awid   ),
      .lsu_axi_awaddr   (lsu_awaddr ),
      .lsu_axi_awregion (lsu_awregion),
      .lsu_axi_awlen    (lsu_awlen  ),
      .lsu_axi_awsize   (lsu_awsize ),
      .lsu_axi_awburst  (lsu_awburst),
      .lsu_axi_awlock   (lsu_awlock ),
      .lsu_axi_awcache  (lsu_awcache),
      .lsu_axi_awprot   (lsu_awprot ),
      .lsu_axi_awqos    (lsu_awqos  ),

      .lsu_axi_wvalid   (lsu_wvalid),
      .lsu_axi_wready   (lsu_wready),
      .lsu_axi_wdata    (lsu_wdata),
      .lsu_axi_wstrb    (lsu_wstrb),
      .lsu_axi_wlast    (lsu_wlast),

      .lsu_axi_bvalid   (lsu_bvalid),
      .lsu_axi_bready   (lsu_bready),
      .lsu_axi_bresp    (lsu_bresp ),
      .lsu_axi_bid      (lsu_bid   ),

      .lsu_axi_arvalid  (lsu_arvalid ),
      .lsu_axi_arready  (lsu_arready ),
      .lsu_axi_arid     (lsu_arid    ),
      .lsu_axi_araddr   (lsu_araddr  ),
      .lsu_axi_arregion (lsu_arregion),
      .lsu_axi_arlen    (lsu_arlen   ),
      .lsu_axi_arsize   (lsu_arsize  ),
      .lsu_axi_arburst  (lsu_arburst ),
      .lsu_axi_arlock   (lsu_arlock  ),
      .lsu_axi_arcache  (lsu_arcache ),
      .lsu_axi_arprot   (lsu_arprot  ),
      .lsu_axi_arqos    (lsu_arqos   ),

      .lsu_axi_rvalid   (lsu_rvalid),
      .lsu_axi_rready   (lsu_rready),
      .lsu_axi_rid      (lsu_rid   ),
      .lsu_axi_rdata    (lsu_rdata ),
      .lsu_axi_rresp    (lsu_rresp ),
      .lsu_axi_rlast    (lsu_rlast ),

      //-------------------------- IFU AXI signals--------------------------
      .ifu_axi_awvalid  (),
      .ifu_axi_awready  (1'b0),
      .ifu_axi_awid     (),
      .ifu_axi_awaddr   (),
      .ifu_axi_awregion (),
      .ifu_axi_awlen    (),
      .ifu_axi_awsize   (),
      .ifu_axi_awburst  (),
      .ifu_axi_awlock   (),
      .ifu_axi_awcache  (),
      .ifu_axi_awprot   (),
      .ifu_axi_awqos    (),

      .ifu_axi_wvalid   (),
      .ifu_axi_wready   (1'b0),
      .ifu_axi_wdata    (),
      .ifu_axi_wstrb    (),
      .ifu_axi_wlast    (),

      .ifu_axi_bvalid   (1'b0),
      .ifu_axi_bready   (),
      .ifu_axi_bresp    (2'b00),
      .ifu_axi_bid      (3'd0),

      .ifu_axi_arvalid  (ifu_arvalid ),
      .ifu_axi_arready  (ifu_arready ),
      .ifu_axi_arid     (ifu_arid    ),
      .ifu_axi_araddr   (ifu_araddr  ),
      .ifu_axi_arregion (ifu_arregion),
      .ifu_axi_arlen    (ifu_arlen   ),
      .ifu_axi_arsize   (ifu_arsize  ),
      .ifu_axi_arburst  (ifu_arburst ),
      .ifu_axi_arlock   (ifu_arlock  ),
      .ifu_axi_arcache  (ifu_arcache ),
      .ifu_axi_arprot   (ifu_arprot  ),
      .ifu_axi_arqos    (ifu_arqos   ),

      .ifu_axi_rvalid   (ifu_rvalid),
      .ifu_axi_rready   (ifu_rready),
      .ifu_axi_rid      (ifu_rid   ),
      .ifu_axi_rdata    (ifu_rdata ),
      .ifu_axi_rresp    (ifu_rresp ),
      .ifu_axi_rlast    (ifu_rlast ),

      //-------------------------- SB AXI signals-------------------------
      .sb_axi_awvalid  (sb_awvalid ),
      .sb_axi_awready  (sb_awready ),
      .sb_axi_awid     (sb_awid    ),
      .sb_axi_awaddr   (sb_awaddr  ),
      .sb_axi_awregion (sb_awregion),
      .sb_axi_awlen    (sb_awlen   ),
      .sb_axi_awsize   (sb_awsize  ),
      .sb_axi_awburst  (sb_awburst ),
      .sb_axi_awlock   (sb_awlock  ),
      .sb_axi_awcache  (sb_awcache ),
      .sb_axi_awprot   (sb_awprot  ),
      .sb_axi_awqos    (sb_awqos   ),
      .sb_axi_wvalid   (sb_wvalid  ),
      .sb_axi_wready   (sb_wready  ),
      .sb_axi_wdata    (sb_wdata   ),
      .sb_axi_wstrb    (sb_wstrb   ),
      .sb_axi_wlast    (sb_wlast   ),
      .sb_axi_bvalid   (sb_bvalid  ),
      .sb_axi_bready   (sb_bready  ),
      .sb_axi_bresp    (sb_bresp   ),
      .sb_axi_bid      (sb_bid     ),
      .sb_axi_arvalid  (sb_arvalid ),
      .sb_axi_arready  (sb_arready ),
      .sb_axi_arid     (sb_arid    ),
      .sb_axi_araddr   (sb_araddr  ),
      .sb_axi_arregion (sb_arregion),
      .sb_axi_arlen    (sb_arlen   ),
      .sb_axi_arsize   (sb_arsize  ),
      .sb_axi_arburst  (sb_arburst ),
      .sb_axi_arlock   (sb_arlock  ),
      .sb_axi_arcache  (sb_arcache ),
      .sb_axi_arprot   (sb_arprot  ),
      .sb_axi_arqos    (sb_arqos   ),
      .sb_axi_rvalid   (sb_rvalid  ),
      .sb_axi_rready   (sb_rready  ),
      .sb_axi_rid      (sb_rid     ),
      .sb_axi_rdata    (sb_rdata   ),
      .sb_axi_rresp    (sb_rresp   ),
      .sb_axi_rlast    (sb_rlast   ),

      //-------------------------- DMA AXI signals--------------------------
      .dma_axi_awvalid  (1'b0),
      .dma_axi_awready  (),
      .dma_axi_awid     (`RV_DMA_BUS_TAG'd0),
      .dma_axi_awaddr   (32'd0),
      .dma_axi_awsize   (3'd0),
      .dma_axi_awprot   (3'd0),
      .dma_axi_awlen    (8'd0),
      .dma_axi_awburst  (2'd0),

      .dma_axi_wvalid   (1'b0),
      .dma_axi_wready   (),
      .dma_axi_wdata    (64'd0),
      .dma_axi_wstrb    (8'd0),
      .dma_axi_wlast    (1'b0),

      .dma_axi_bvalid   (),
      .dma_axi_bready   (1'b0),
      .dma_axi_bresp    (),
      .dma_axi_bid      (),

      .dma_axi_arvalid  (1'b0),
      .dma_axi_arready  (),
      .dma_axi_arid     (`RV_DMA_BUS_TAG'd0),
      .dma_axi_araddr   (32'd0),
      .dma_axi_arsize   (3'd0),
      .dma_axi_arprot   (3'd0),
      .dma_axi_arlen    (8'd0),
      .dma_axi_arburst  (2'd0),

      .dma_axi_rvalid   (),
      .dma_axi_rready   (1'b0),
      .dma_axi_rid      (),
      .dma_axi_rdata    (),
      .dma_axi_rresp    (),
      .dma_axi_rlast    (),

      // clk ratio signals
      .lsu_bus_clk_en (1'b1),
      .ifu_bus_clk_en (1'b1),
      .dbg_bus_clk_en (1'b1),
      .dma_bus_clk_en (1'b1),

      .timer_int (timer_irq),
      .extintsrc_req ({4'd0, pwm_irq, sw_irq3, spi0_irq, uart_irq}),
      .dec_tlu_perfcnt0 (),
      .dec_tlu_perfcnt1 (),
      .dec_tlu_perfcnt2 (),
      .dec_tlu_perfcnt3 (),

      .dmi_reg_rdata    (dmi_reg_rdata),
      .dmi_reg_wdata    (dmi_reg_wdata),
      .dmi_reg_addr     (dmi_reg_addr),
      .dmi_reg_en       (dmi_reg_en),
      .dmi_reg_wr_en    (dmi_reg_wr_en),
      .dmi_hard_reset   (dmi_hard_reset),

      .mpc_debug_halt_req (1'b0),
      .mpc_debug_run_req  (1'b0),
      .mpc_reset_run_req  (1'b1),
      .mpc_debug_halt_ack (),
      .mpc_debug_run_ack  (),
      .debug_brkpt_status (),

      .i_cpu_halt_req      (1'b0),
      .o_cpu_halt_ack      (),
      .o_cpu_halt_status   (),
      .o_debug_mode_status (),
      .i_cpu_run_req       (1'b0),
      .o_cpu_run_ack       (),

      .scan_mode  (1'b0),
      .mbist_mode (1'b0));

endmodule


// GPIO Extended
module bidirec (input wire oe, input wire inp, output wire outp, inout wire bidir);

assign bidir = oe ? inp : 1'bZ ;
assign outp  = bidir;

endmodule
