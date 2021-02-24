/*
 * File: \uart_ex.s
 * Project: c:\Users\Chuck\RVfpga\labs\Lab10
 * Created Date: Tuesday, February 23rd 2021, 6:05:33 pm
 * Author: Chuck Faber
 * -----
 * Last Modified: Wed Feb 24 2021
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

# Register addresses for Uart Peripheral 
# ---------------------------------------------------------------------------- 
#define CONSOLE_ADDR 0x80001008 
#define HALT_ADDR 0x80001009 
#define UART_BASE 0x80002000 
#define REG_BRDL (4*0x00) /* Baud rate divisor (LSB) */ 
#define REG_IER (4*0x01) /* Interrupt enable reg. */ 
#define REG_FCR (4*0x02) /* FIFO control reg. */ 
#define REG_LCR (4*0x03) /* Line control reg. */
#define REG_LSR (4*0x05) /* Line status reg. */ 

#define LCR_CS8 0x03 /* 8 bits data size */ 
#define LCR_1_STB 0x00 /* 1 stop bit */ 
#define LCR_PDIS 0x00 /* parity disable */ 

#define LSR_THRE 0x20 

#define FCR_FIFO 0x01 /* enable XMIT and RCVR FIFO */ 
#define FCR_RCVRCLR 0x02 /* clear RCVR FIFO */ 
#define FCR_XMITCLR 0x04 /* clear XMIT FIFO */ 
#define FCR_MODE0 0x00 /* set receiver in mode 0 */ 
#define FCR_MODE1 0x08 /* set receiver in mode 1 */ 
#define FCR_FIFO_8 0x80 /* 8 bytes in RCVR FIFO */

.globl main
main:
    jal uartInit
    la a0, WELCOME
    jal uartSendString

loop:
    nop
    j loop



# .globl main
# main:

# configureHW:
# 	call ra, uartInit

# sayHello:
# 	la a0, WELCOME

# 	call uartSendString

#     and x1, zero, zero           # Wait some time before the next iteration
# 	li   x29, 0x1000000
#     time1:
#         addi x1, x1, 1
#         bne  x29, x1, time1

# 	j sayHello



# Function: Initialize UART peripheral 
# call: by call ra, uartInit 
# inputs: None 
# outputs: None 
# destroys: t0, t1 
# ---------------------------------------------------------------------------- 
uartInit: 
    li t0, UART_BASE 
    
    /* Set DLAB bit in LCR */ 
    li t1, 0x80 
    sb t1, REG_LCR(t0)  // Makes it so the divisor latches can be accessed using offset 0x00 (needs to be reset later)
    
    /* Set divisor regs */ 
    li t1, 27               // set to sys_clock / (16 * desired baud) -- 100e6/(16*230400) = 27?? For some reason it only prints at 115200...
    sb t1, REG_BRDL(t0)
    
    /* 8 data bits, 1 stop bit, no parity, clear DLAB (to return access of this address to THR and receiver buffer) */ 
    li t1, LCR_CS8 | LCR_1_STB | LCR_PDIS   // Set bits[1-0] = 0b11 for 8 data bits. Set bit[2] = 0 (1 stop bit), set bit[3] = 0 (no parity) in the LCR 
    sb t1, REG_LCR(t0) 

    li t1, FCR_FIFO | FCR_MODE0 | FCR_FIFO_8 | FCR_RCVRCLR | FCR_XMITCLR  // Enable the TX and RX FIFO. Clear the FIFOs. set bits[7-6] to 0b10 to signify 8 bytes in FIFO
    sb t1, REG_FCR(t0)  // Write to FIFO control register
    
    /* disable interrupts */ 
    sb zero, REG_IER(t0)    // zero out all interrupts in interrupt enable register
    ret

# Function: Send byte through UART 
# call: by call ra, uartSendByte 
# inputs: a0, byte to be sent 
# outputs: None 
# destroys: t0, t1 
# ---------------------------------------------------------------------------- 
uartSendByte: 
    li t1, UART_BASE /* Check for space in UART FIFO */ 
    lb t0, REG_LSR(t1)      // Read Line Status Register
    andi t0, t0, LSR_THRE   // Check bit 5 of LSR.
    beqz t0, uartSendByte   // If it is zero, the FIFO is NOT empty. go back to beginning and check again
    sb a0, 0(t1)            // FIFO is empty. Store byte in a0 to FIFO.
    ret

# Function: Send string through UART (terminated by \0) 
# call: by call ra, uartSendString 
# uses: uartSendByte 
# inputs: a0, address of first character of string to be sent 
# outputs: None 
# destroys: t0, t1, t2 
# ---------------------------------------------------------------------------- 
uartSendString: 
    li t1, UART_BASE 
    add t2,zero,ra # save caller address to t2
    add a1,zero,a0 # use a1 as index into string location
    /* Load first byte */ 
    lb a0, 0(a1)    // Load byte from a1 into a0 to use as argument for uartSendByte

internalNextChar: 
    call ra, uartSendByte   // Send out byte
    addi a1, a1, 1          // Increment to next byte/char in string
    lb a0, 0(a1)            // load next byte into a0 to use as arugment for uartSendByte
    bne a0, zero, internalNextChar  // wrap around and send byte until there is no character loaded into a0
    
    add ra,zero,t2 # restore caller address 
        ret

.section .data 

WELCOME: 
.string "\nHELLO TERMINAL !!!\n"