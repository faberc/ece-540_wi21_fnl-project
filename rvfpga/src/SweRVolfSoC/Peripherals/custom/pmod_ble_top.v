/*
 * File: \ble_pmod_top.v
 * Project: c:\Users\Chuck\ECE540\fnlproj-team-tbc\rvfpga\src\SweRVolfSoC\Peripherals\custom
 * Created Date: Wednesday, February 24th 2021, 7:39:35 pm
 * Author: Chuck Faber
 * -----
 * Last Modified: Mon Mar 01 2021
 * Modified By: Chuck Faber
 * -----
 * Copyright (c) 2021 Portland State University
 *
 * This module connects the BLE PMOD to the boards external UART lines, and also to the
 * UART core instantiated in swervolf_core. Upon receiving data, it also outputs its data
 * to the UART parsing modules to retrieve the acceleration data to place it in the
 * software accessible memory locations exposed by periph_top.
 * 
 * "Any time I had a problem, and I threw a Molotov cocktail…Boom, right away, I had a different problem."
 * - Jason Mendoza
 * -----
 * HISTORY:
 * Date      	By	Comments
 * ----------	---	----------------------------------------------------------
 */

module pmod_ble_top
(
    input clk,

    // Computer UART Connections
    input i_uart_rx,        // UART RX Data from Computer
    output o_uart_tx,       // UART TX Data To Computer

    // Uart Core Connections
    input i_core_rx,
    output o_core_tx,

    // Signal for hardware parsing
    output o_parse_tx,

    // Select switch
    input sw,

    // PMOD Interface
    output o_pmod_rxd,      // Receive on RN4871 - FPGA drives this -- pin 2
    input i_pmod_txd,       // Transmit on RN4871 -- pin 3
    output o_pmod_rstn     // pin 8

);

    // Forward data from computer to the bluetooth transmitter
    assign o_uart_tx = i_pmod_txd;
    assign o_core_tx = i_pmod_txd;
    assign o_parse_tx = i_pmod_txd;
    assign o_pmod_rxd = sw ? i_core_rx : i_uart_rx;
    // assign o_pmod_rxd = i_uart_rx;

    // Drive BT chip out of reset
    assign o_pmod_rstn = 1'b1;

endmodule