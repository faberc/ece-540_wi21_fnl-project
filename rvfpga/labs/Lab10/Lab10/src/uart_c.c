/*
 * File: \uart.c
 * Project: c:\Users\Chuck\ECE540\fnlproj-team-tbc\rvfpga\labs\Lab10\Lab10\src
 * Created Date: Thursday, March 4th 2021, 2:01:35 pm
 * Author: Chuck Faber
 * -----
 * Last Modified: Thu Mar 04 2021
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

#define UART_BASE 0x80002000
#define UART_DELAY 0x100000

#define REG_BRDL 0x80002000 /* Baud rate divisor (LSB) */
#define REG_IER 0x80002004  /* Interrupt enable reg. */
#define REG_FCR 0x80002008  /* FIFO control reg. */
#define REG_LCR 0x8000200C  /* Line control reg. */
#define REG_LSR 0x80002014  /* Line status reg. */

#define LCR_CS8 0x03   /* 8 bits data size */
#define LCR_1_STB 0x00 /* 1 stop bit */
#define LCR_PDIS 0x00  /* parity disable */

#define LSR_THRE 0x20

#define FCR_FIFO 0x01    /* enable XMIT and RCVR FIFO */
#define FCR_RCVRCLR 0x02 /* clear RCVR FIFO */
#define FCR_XMITCLR 0x04 /* clear XMIT FIFO */
#define FCR_MODE0 0x00   /* set receiver in mode 0 */
#define FCR_MODE1 0x08   /* set receiver in mode 1 */
#define FCR_FIFO_8 0x80  /* 8 bytes in RCVR FIFO */

#define READ_MMIO(dir) (*(volatile unsigned *)dir)
#define WRITE_MMIO(dir, value)                 \
    {                                          \
        (*(volatile unsigned *)dir) = (value); \
    }

void uartInit(void);
int sendByte(unsigned char b);
void myDelay(unsigned long int delay);
void sendString(char *str);
void bleConnect(void);
void bleDisconnect(void);
void bleStartStream(void);
void bleStopStream(void);

int main(void) {
    uartInit();
    sendString("$$$");
    myDelay(UART_DELAY);
    sendString("+\r\n");
    myDelay(UART_DELAY);
    sendString("C1\r\n");
    myDelay(UART_DELAY);
    sendString("CI\r\n");
    myDelay(UART_DELAY);
    sendString("CHW,002B,0100\r\n");
    myDelay(UART_DELAY);
    return (0);
}

void bleConnect(void) {
    sendString("$$$");
    myDelay(UART_DELAY);
    sendString("+\r\n");
    myDelay(UART_DELAY);
    sendString("C1\r\n");
    myDelay(UART_DELAY);
    sendString("CI\r\n");
    myDelay(UART_DELAY);
}

void bleDisconnect(void) {
    sendString("K,1\r\n");
    myDelay(UART_DELAY);
}

void bleStartStream(void) {
    sendString("CHW,002B,0100\r\n");
    myDelay(UART_DELAY);
}

void bleStopStream(void) {
    sendString("CHW,002B,0000\r\n");
    myDelay(UART_DELAY);
}

void uartInit(void) {
    /* Makes it so the divisor latches can be accessed using offset 0x00 (needs to be reset later) */
    WRITE_MMIO(REG_LCR, 0x80);
    /* Set Divisor for 115200 baud rate */
    WRITE_MMIO(REG_BRDL, 27);
    /* 8 data bits, 1 stop bit, no parity, clear DLAB (to return access of this address to THR and receiver buffer) */
    WRITE_MMIO(REG_LCR, (LCR_CS8 | LCR_1_STB | LCR_PDIS));
    /* Enable the TX and RX FIFO. Clear the FIFOs. set bits[7-6] to 0b10 to signify 8 bytes in FIFO */
    WRITE_MMIO(REG_FCR, (FCR_FIFO | FCR_MODE0 | FCR_FIFO_8 | FCR_RCVRCLR | FCR_XMITCLR));
    /* disable all interrupts */
    WRITE_MMIO(REG_IER, 0x00);
}

int sendByte(unsigned char b) {
    unsigned long int tmp, tmp2;
    tmp = READ_MMIO(REG_LSR); // Read value in LSR
    // tmp2 = LSR_THRE & tmp;
    // while (!(LSR_THRE & tmp));           // Wait until bit 5 in LSR goes high
    if (!(LSR_THRE & tmp))
    {
        return (-1); // Bit 5 is not 1 so FIFO not empty - failure to write
    }
    WRITE_MMIO(UART_BASE, b); // Write byte to TX FIFO
    return (0);
}

void sendString(char *str) {
    char *c;
    for (c = str; *c != '\0'; c++) {
        while (sendByte(*c) < 0);
    }
}

void myDelay (unsigned long int delay)
{
    for (int i = 0; i < delay; i++){
        __asm__("nop");
    }
}