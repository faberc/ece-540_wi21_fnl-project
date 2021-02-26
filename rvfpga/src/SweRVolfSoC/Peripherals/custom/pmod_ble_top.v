/*
 * File: \ble_pmod_top.v
 * Project: c:\Users\Chuck\ECE540\fnlproj-team-tbc\rvfpga\src\SweRVolfSoC\Peripherals\custom
 * Created Date: Wednesday, February 24th 2021, 7:39:35 pm
 * Author: Chuck Faber
 * -----
 * Last Modified: Thu Feb 25 2021
 * Modified By: Chuck Faber
 * -----
 * Copyright (c) 2021 Portland State University
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

    // UART Connections
    input i_uart_rx,        // UART RX Data from Computer
    output o_uart_tx,       // UART TX Data To Computer

    // PMOD Interface
    output io_pmod_rxd,     // Receive on RN4871 - FPGA drives this -- pin 2
    input io_pmod_txd,      // Transmit on RN4871 -- pin 3
    output io_pmod_rstn     // pin 8

);

    // Forward data from computer to the bluetooth transmitter
    assign o_uart_tx = io_pmod_txd;
    assign io_pmod_rxd = i_uart_rx;

    // Drive BT chip out of reset
    assign io_pmod_rstn = 1'b1;

endmodule