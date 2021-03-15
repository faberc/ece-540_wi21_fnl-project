// SPDX-License-Identifier: Apache-2.0
// Copyright 2019 Western Digital Corporation or its affiliates.
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
// Function: SweRVolf toplevel for Nexys A7 board
//
// Comments: Updated 2/15/2021 by Chuck Faber 
// Implemented rojobot31_0 module, 75MHz clock, and VGA display timing generator
// 
//
//********************************************************************************

`default_nettype none
module rvfpga
  #(parameter bootrom_file  = "")
   (input wire 	       clk,
    input wire 	       rstn,
    output wire [12:0] ddram_a,
    output wire [2:0]  ddram_ba,
    output wire        ddram_ras_n,
    output wire        ddram_cas_n,
    output wire        ddram_we_n,
    output wire        ddram_cs_n,
    output wire [1:0]  ddram_dm,
    inout wire [15:0]  ddram_dq,
    inout wire [1:0]   ddram_dqs_p,
    inout wire [1:0]   ddram_dqs_n,
    output wire        ddram_clk_p,
    output wire        ddram_clk_n,
    output wire        ddram_cke,
    output wire        ddram_odt,
    output wire        o_flash_cs_n,
    output wire        o_flash_mosi,
    input wire 	       i_flash_miso,
    input wire 	       i_uart_rx,
    output wire        o_uart_tx,
    inout wire [15:0]  i_sw,
    output reg [15:0]  o_led,
    output reg [7:0]   AN,
    output reg         CA, CB, CC, CD, CE, CF, CG, DP,
    output wire        o_accel_cs_n,
    output wire        o_accel_mosi,
    input wire         i_accel_miso,
    output wire        accel_sclk,
    inout wire         i_btn_u,
    inout wire         i_btn_d,
    inout wire         i_btn_l,
    inout wire         i_btn_r,
    inout wire         i_btn_c,
    output reg [3:0]   RED, GRN, BLU,
    output wire        vsync, hsync,
    output wire        AUD_PWM,
    output wire        AUD_SD,

    // Junction A -- BLE PMOD
    output wire        JA1,     // RTS
    output wire        JA2,     // RXD
    input wire         JA3,     // TXD
    input wire         JA4,     // CTS
    inout wire         JA7,     // GPIO
    inout wire         JA8,     // RST_N
    inout wire         JA9,     // MODE
    inout wire         JA10,     // STATUS

    // Junction B -- I2S2
    output wire tx_mclk,
    output wire tx_lrck,
    output wire tx_sclk,
    output wire tx_data,
    output wire rx_mclk,
    output wire rx_lrck,
    output wire rx_sclk,
    input  wire rx_data

    );


    wire [15:0]     gpio_out;
    wire            cpu_tx,litedram_tx;
    wire            litedram_init_done;
    wire            litedram_init_error;

    localparam RAM_SIZE     = 32'h10000;

    wire clk_core;
    wire rst_core;
    wire user_clk;
    wire user_rst;


    clk_gen_nexys clk_gen (
        .i_clk (user_clk),
        .i_rst (user_rst),
        .o_clk_core (clk_core),
        .o_rst_core (rst_core)
    );

    wire o_clk_75M;

    clk_gen_75M clk_gen_75M
    (
        .o_clk_75M(o_clk_75M),              // output o_clk_75M
        .reset(user_rst),                   // input reset
        .i_clk_100M(clk)               // Clock in ports
    );


    AXI_BUS #(32, 64, 6, 1) mem();
    AXI_BUS #(32, 64, 6, 1) cpu();

    assign cpu.aw_atop = 6'd0;
    assign cpu.aw_user = 1'b0;
    assign cpu.ar_user = 1'b0;
    assign cpu.w_user = 1'b0;
    assign cpu.b_user = 1'b0;
    assign cpu.r_user = 1'b0;
    assign mem.b_user = 1'b0;
    assign mem.r_user = 1'b0;

    axi_cdc_intf
    #(.AXI_USER_WIDTH (1),
        .AXI_ADDR_WIDTH (32),
        .AXI_DATA_WIDTH (64),
        .AXI_ID_WIDTH   (6))
    cdc (
        .src_clk_i  (clk_core),
        .src_rst_ni (~rst_core),
        .src        (cpu),
        .dst_clk_i  (user_clk),
        .dst_rst_ni (~user_rst),
        .dst        (mem));

    litedram_top
      #(.ID_WIDTH (6))
    ddr2 (   
        .serial_tx   (litedram_tx),
        .serial_rx   (i_uart_rx),
        .clk100      (clk),
        .rst_n       (rstn),
        .pll_locked  (),
        .user_clk    (user_clk),
        .user_rst    (user_rst),
        .ddram_a     (ddram_a),
        .ddram_ba    (ddram_ba),
        .ddram_ras_n (ddram_ras_n),
        .ddram_cas_n (ddram_cas_n),
        .ddram_we_n  (ddram_we_n),
        .ddram_cs_n  (ddram_cs_n),
        .ddram_dm    (ddram_dm   ),
        .ddram_dq    (ddram_dq   ),
        .ddram_dqs_p (ddram_dqs_p),
        .ddram_dqs_n (ddram_dqs_n),
        .ddram_clk_p (ddram_clk_p),
        .ddram_clk_n (ddram_clk_n),
        .ddram_cke   (ddram_cke  ),
        .ddram_odt   (ddram_odt  ),
        .init_done  (litedram_init_done),
        .init_error (litedram_init_error),
        .i_awid    (mem.aw_id   ),
        .i_awaddr  (mem.aw_addr[26:0] ),
        .i_awlen   (mem.aw_len  ),
        .i_awsize  ({1'b0,mem.aw_size} ),
        .i_awburst (mem.aw_burst),
        .i_awvalid (mem.aw_valid),
        .o_awready (mem.aw_ready),
        .i_arid    (mem.ar_id   ),
        .i_araddr  (mem.ar_addr[26:0] ),
        .i_arlen   (mem.ar_len  ),
        .i_arsize  ({1'b0,mem.ar_size} ),
        .i_arburst (mem.ar_burst),
        .i_arvalid (mem.ar_valid),
        .o_arready (mem.ar_ready),
        .i_wdata   (mem.w_data  ),
        .i_wstrb   (mem.w_strb  ),
        .i_wlast   (mem.w_last  ),
        .i_wvalid  (mem.w_valid ),
        .o_wready  (mem.w_ready ),
        .o_bid     (mem.b_id    ),
        .o_bresp   (mem.b_resp  ),
        .o_bvalid  (mem.b_valid ),
        .i_bready  (mem.b_ready ),
        .o_rid     (mem.r_id    ),
        .o_rdata   (mem.r_data  ),
        .o_rresp   (mem.r_resp  ),
        .o_rlast   (mem.r_last  ),
        .o_rvalid  (mem.r_valid ),
        .i_rready  (mem.r_ready ));

   wire        dmi_reg_en;
   wire [6:0]  dmi_reg_addr;
   wire        dmi_reg_wr_en;
   wire [31:0] dmi_reg_wdata;
   wire [31:0] dmi_reg_rdata;
   wire        dmi_hard_reset;

   wire        flash_sclk;

   STARTUPE2 STARTUPE2
     (
      .CFGCLK    (),
      .CFGMCLK   (),
      .EOS       (),
      .PREQ      (),
      .CLK       (1'b0),
      .GSR       (1'b0),
      .GTS       (1'b0),
      .KEYCLEARB (1'b1),
      .PACK      (1'b0),
      .USRCCLKO  (flash_sclk),
      .USRCCLKTS (1'b0),
      .USRDONEO  (1'b1),
      .USRDONETS (1'b0));

   bscan_tap tap (
        .clk            (clk_core),
        .rst            (rst_core),
        .jtag_id        (31'd0),
        .dmi_reg_wdata  (dmi_reg_wdata),
        .dmi_reg_addr   (dmi_reg_addr),
        .dmi_reg_wr_en  (dmi_reg_wr_en),
        .dmi_reg_en     (dmi_reg_en),
        .dmi_reg_rdata  (dmi_reg_rdata),
        .dmi_hard_reset (dmi_hard_reset),
        .rd_status      (2'd0),
        .idle           (3'd0),
        .dmi_stat       (2'd0),
        .version        (4'd1)
    );

    wire [15:0] sw_db;

   swervolf_core
     #(.bootrom_file (bootrom_file))
   swervolf
     (.clk            (clk_core),
      .rstn           (~rst_core),
      .dmi_reg_rdata  (dmi_reg_rdata),
      .dmi_reg_wdata  (dmi_reg_wdata),
      .dmi_reg_addr   (dmi_reg_addr ),
      .dmi_reg_en     (dmi_reg_en   ),
      .dmi_reg_wr_en  (dmi_reg_wr_en),
      .dmi_hard_reset (dmi_hard_reset),
      .o_flash_sclk   (flash_sclk),
      .o_flash_cs_n   (o_flash_cs_n),
      .o_flash_mosi   (o_flash_mosi),
      .i_flash_miso   (i_flash_miso),
      .i_uart_rx      (i_uart_rx),
      .o_uart_tx      (cpu_tx),
      .o_ram_awid     (cpu.aw_id),
      .o_ram_awaddr   (cpu.aw_addr),
      .o_ram_awlen    (cpu.aw_len),
      .o_ram_awsize   (cpu.aw_size),
      .o_ram_awburst  (cpu.aw_burst),
      .o_ram_awlock   (cpu.aw_lock),
      .o_ram_awcache  (cpu.aw_cache),
      .o_ram_awprot   (cpu.aw_prot),
      .o_ram_awregion (cpu.aw_region),
      .o_ram_awqos    (cpu.aw_qos),
      .o_ram_awvalid  (cpu.aw_valid),
      .i_ram_awready  (cpu.aw_ready),
      .o_ram_arid     (cpu.ar_id),
      .o_ram_araddr   (cpu.ar_addr),
      .o_ram_arlen    (cpu.ar_len),
      .o_ram_arsize   (cpu.ar_size),
      .o_ram_arburst  (cpu.ar_burst),
      .o_ram_arlock   (cpu.ar_lock),
      .o_ram_arcache  (cpu.ar_cache),
      .o_ram_arprot   (cpu.ar_prot),
      .o_ram_arregion (cpu.ar_region),
      .o_ram_arqos    (cpu.ar_qos),
      .o_ram_arvalid  (cpu.ar_valid),
      .i_ram_arready  (cpu.ar_ready),
      .o_ram_wdata    (cpu.w_data),
      .o_ram_wstrb    (cpu.w_strb),
      .o_ram_wlast    (cpu.w_last),
      .o_ram_wvalid   (cpu.w_valid),
      .i_ram_wready   (cpu.w_ready),
      .i_ram_bid      (cpu.b_id),
      .i_ram_bresp    (cpu.b_resp),
      .i_ram_bvalid   (cpu.b_valid),
      .o_ram_bready   (cpu.b_ready),
      .i_ram_rid      (cpu.r_id),
      .i_ram_rdata    (cpu.r_data),
      .i_ram_rresp    (cpu.r_resp),
      .i_ram_rlast    (cpu.r_last),
      .i_ram_rvalid   (cpu.r_valid),
      .o_ram_rready   (cpu.r_ready),
      .i_ram_init_done  (litedram_init_done),
      .i_ram_init_error (litedram_init_error),
      .io_data        ({i_sw[15:0],gpio_out[15:0]}),
      .io_data_a      ({i_btn_u,i_btn_d,i_btn_l,i_btn_r,i_btn_c}),
      .io_aux         ({AUD_PWM, AUD_SD}),
      .AN (AN),
      .DP (DP),
      .Digits_Bits ({CA,CB,CC,CD,CE,CF,CG}),
      .o_accel_sclk     (accel_sclk),
      .o_accel_cs_n     (o_accel_cs_n),
      .o_accel_mosi     (o_accel_mosi),
      .i_accel_miso     (i_accel_miso),
    //   .io_botinfo       (io_botinfo),
    //   .io_botctrl       (io_botctrl),
    //   .io_botupdt_sync  (io_botupdt_sync),
    //   .io_int_ack       (io_int_ack),
      .sw_db            (sw_db),
      .rope_loc         (rope_loc),
      .ble_rts          (JA1),
      .ble_rxd          (JA2),
      .ble_txd          (JA3),
      .ble_cts          (JA4),
      .ble_gpio         (JA7), 
      .ble_rstn         (JA8), 
      .ble_mode         (JA9), 
      .ble_status       (JA10)
      );

    always @(posedge clk_core) begin
        o_led[15:0] <= gpio_out[15:0];
    end

   assign o_uart_tx = 1'b0 ? litedram_tx : cpu_tx;

// VGA Implementation
    wire        vid_en;
    wire [9:0]  px_row;
    wire [9:0]  px_col;

    dtg disp1 (
        .clock(o_clk_75M),
        .rst(~rstn),
        .horiz_sync(hsync),
        .vert_sync(vsync),
        .video_on(vid_en),
        .pixel_row(px_row),
        .pixel_column(px_col)
    );

// // Implementing ROJOBOT 

//     wire [7:0]  io_botctrl;
//     wire [31:0] io_botinfo;
//     reg         io_botupdt_sync; 
//     wire        io_int_ack;
//     wire        upd_sysregs;
//     wire [13:0] wm_addr_a, wm_addr_b;
//     wire [1:0]  wm_data_a, wm_data_b;

//     rojobot31_0 rojo_bot_0 (
//         .MotCtl_in(io_botctrl),            // input wire [7 : 0] MotCtl_in
//         .LocX_reg(io_botinfo[31:24]),      // output wire [7 : 0] LocX_reg
//         .LocY_reg(io_botinfo[23:16]),      // output wire [7 : 0] LocY_reg
//         .Sensors_reg(io_botinfo[15:8]),    // output wire [7 : 0] Sensors_reg
//         .BotInfo_reg(io_botinfo[7:0]),     // output wire [7 : 0] BotInfo_reg
//         .worldmap_addr(wm_addr_a),         // output wire [13 : 0] worldmap_addr
//         .worldmap_data(wm_data_a),         // input wire [1 : 0] worldmap_data
//         .clk_in(o_clk_75M),                // input wire clk_in   Will need 75MHz
//         .reset(~rstn),                     // input wire reset
//         .upd_sysregs(upd_sysregs),         // output wire upd_sysregs
//         .Bot_Config_reg(sw_db[7:0])        // input wire [7 : 0] Bot_Config_reg
//     );

//     // World map implementation
//     // map_mux was used to mux the output of the different
//     // world_map modules to be output to the rojo_bot and
//     // colorizer module based on the values of switches 13
//     // and 14 on the Nexys A7
    
//     wire [1:0] wm0_data_a, wm0_data_b;
//     wire [1:0] wm1_data_a, wm1_data_b;
//     wire [1:0] wm2_data_a, wm2_data_b;

//     world_map_part_a wm_pa (
//         .clka(o_clk_75M),
//         .addra(wm_addr_a),
//         .douta(wm0_data_a),

//         // Dual Ported, connect B to VGA logic.
//         .clkb(o_clk_75M),
//         .addrb(wm_addr_b),
//         .doutb(wm0_data_b)
//     );

//     world_map_loop wm_loop (
//         .clka(o_clk_75M),
//         .addra(wm_addr_a),
//         .douta(wm1_data_a),

//         // Dual Ported, connect B to VGA logic.
//         .clkb(o_clk_75M),
//         .addrb(wm_addr_b),
//         .doutb(wm1_data_b)
//     );

//     world_map_lr wm_lr (
//         .clka(o_clk_75M),
//         .addra(wm_addr_a),
//         .douta(wm2_data_a),

//         // Dual Ported, connect B to VGA logic.
//         .clkb(o_clk_75M),
//         .addrb(wm_addr_b),
//         .doutb(wm2_data_b)
//     );

//     map_mux mm1 (
//         .i_sw_sel(sw_db[14:13]),
//         .i_data_a({2'b00, wm2_data_a, wm1_data_a, wm0_data_a}),
//         .i_data_b({2'b00, wm2_data_b, wm1_data_b, wm0_data_b}),
//         .o_data_a(wm_data_a),
//         .o_data_b(wm_data_b)
//     );

//     scale sc1 (
//         .pixel_addr({px_col, px_row}),
//         .vid_addr(wm_addr_b)
//     );

//     wire [1:0]  icon_px;

//     icon #(
//         .ICON_SCALE(1),
//         .CENT_CORR(1)
//     ) corgi1 (
//         .pixel_row(px_row),
//         .pixel_column(px_col),
//         .botinfo_reg(io_botinfo[7:0]),
//         .locx_reg(io_botinfo[31:24]),
//         .locy_reg(io_botinfo[23:16]),
//         .icon(icon_px)
//     );

//     colorizer color_out (
//         .video_on(vid_en),
//         .world_pixel(wm_data_b),
//         .icon(icon_px),
//         .vgaRed(RED),
//         .vgaGreen(GRN),
//         .vgaBlue(BLU)
//     );

//     always @(posedge o_clk_75M) begin: Handshake_FF
//      // io_int_ack needs to be handled in an interrupt handler or software bit-banging
//         if (io_int_ack == 1'b1) begin
//             io_botupdt_sync <= 1'b0;
//         end
//         else 
//         if (upd_sysregs == 1'b1) begin
//             io_botupdt_sync <= 1'b1;
//         end else begin
//             io_botupdt_sync <= io_botupdt_sync;
//         end
//     end: Handshake_FF

// Implementing Rope Game

    wire [9:0]  rope_loc;
    wire [1:0]  ico_px;

    rope rope_0 (
        .pixel_row(px_row),
        .pixel_column(px_col),
        .rope_loc(rope_loc),
        .icon(ico_px)
    );

    colorizer2 color_out2 (
        .video_on(vid_en),
        .icon(ico_px),
        .vgaRed(RED), 
        .vgaGreen(GRN), 
        .vgaBlue(BLU)
    );

    wire axis_clk;
    
    wire [23:0] axis_tx_data;
    wire axis_tx_valid;
    wire axis_tx_ready;
    wire axis_tx_last;
    
    wire [23:0] axis_rx_data;
    wire axis_rx_valid;
    wire axis_rx_ready;
    wire axis_rx_last;

    wire resetn = (rstn == 0) ? 1'b0 : 1'b1;
	
    clk_wiz_0 m_clk (
        .clk_in1(clk),
        .reset(user_rst),
        .axis_clk(axis_clk)
    );

    axis_i2s2 m_i2s2 (
        .axis_clk(axis_clk),
        .axis_resetn(resetn),
    
        .tx_axis_s_data(axis_tx_data),
        .tx_axis_s_valid(axis_tx_valid),
        .tx_axis_s_ready(axis_tx_ready),
        .tx_axis_s_last(axis_tx_last),
    
        .rx_axis_m_data(axis_rx_data),
        .rx_axis_m_valid(axis_rx_valid),
        .rx_axis_m_ready(axis_rx_ready),
        .rx_axis_m_last(axis_rx_last),
        
        .tx_mclk(tx_mclk),
        .tx_lrck(tx_lrck),
        .tx_sclk(tx_sclk),
        .tx_sdout(tx_data),
        .rx_mclk(rx_mclk),
        .rx_lrck(rx_lrck),
        .rx_sclk(rx_sclk),
        .rx_sdin(rx_data)
    );
    
    axis_volume_controller #(
		.SWITCH_WIDTH(4),
		.DATA_WIDTH(24)
	) m_vc (
        .clk(axis_clk),
        .sw(sw_db[4:1]),
        
        .s_axis_data(axis_rx_data),
        .s_axis_valid(axis_rx_valid),
        .s_axis_ready(axis_rx_ready),
        .s_axis_last(axis_rx_last),
        
        .m_axis_data(axis_tx_data),
        .m_axis_valid(axis_tx_valid),
        .m_axis_ready(axis_tx_ready),
        .m_axis_last(axis_tx_last)
    );

endmodule
