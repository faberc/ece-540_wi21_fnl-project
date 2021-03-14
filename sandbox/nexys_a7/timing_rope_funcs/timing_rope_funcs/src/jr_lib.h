/*
 * File: \jr_lib.h
 * Project: c:\Users\Chuck\ECE540\fnlproj-team-tbc\sandbox\nexys_a7\level2\src
 * Created Date: Thursday, March 4th 2021, 7:34:28 pm
 * Author: Chuck Faber
 * -----
 * Last Modified: Tue Mar 09 2021
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

//////////////////
// UART Defines //
//////////////////

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

//////////////////////
// Nexys A7 Defines //
//////////////////////

// Nexys Port Addresses
#define PORT_LEDS 0x80001404    // (o) LEDs
#define PORT_SLSWTCH 0x80001400 // (i) slide switches
#define PORT_PBTNS 0x80001500   // (i) pushbuttons inputs
#define PORT_GPIO_EN 0x80001408 // (o) enable LEDs for output

// Rope Game Peripheral Ports
#define PORT_ACCEL 0x80001700
#define PORT_ROPE 0x80001704
#define PORT_UNUSED 0x80001708
#define PORT_START 0x8000170C

// Seven Segment Display Ports
#define PORT_SEVENSEG_EN 0x80001038  // (o) 7 Segment enable
#define PORT_SEVENSEG_HGH 0x8000103c // (o) 7 Segment Higher Display
#define PORT_SEVENSEG_LOW 0x80001024 // (o) 7 Segment Lower Display
#define PORT_SEVENSEG_DP 0x80001018  // (o) 7 segment Decimal Point Display

// Masks for Pushbuttons
#define BTN_R_MASK 0x2
#define BTN_C_MASK 0x1
#define BTN_L_MASK 0x4
#define BTN_D_MASK 0x8
#define BTN_U_MASK 0x10
#define PUSHBUTTON_MASK 0x1F

//////////////////////
// Gameplay Defines //
//////////////////////

#define VGA_WIDTH 768
#define HALF_VGA_WIDTH 384
#define ACTION_WINDOW 300
#define CENT_DISP 20

// Timing Corrections
#define COARSE_CORRECT 0
#define FINE_CORRECT 0
#define CENTER_CORRECT 0

/* Notes on specific Songs/BPM
 * Transition: BPM = 125, Coarse = 988, Fine = 0
 */

// Base Acceleration Defines
#define BASE_ACCEL 10
#define THRESH 3

///////////////////
// MMIO Commands //
///////////////////

#define READ_MMIO(dir) (*(volatile unsigned *)dir)
#define WRITE_MMIO(dir, value)                 \
    {                                          \
        (*(volatile unsigned *)dir) = (value); \
    }

/////////////////////////
// Function Prototypes //
/////////////////////////

void uartInit(void);
int sendByte(unsigned char b);
void myDelay(unsigned long int delay);
void sendString(char *str);
void bleConnect(void);
void bleDisconnect(void);
void bleStartStream(void);
void bleStopStream(void);
int beatDelay(unsigned long int ns);

void rope_center();
void rope_up();
void rope_down();
void score(int amount);
float calibration_val(void);

    /* example of usage */
    // int main(void)
    // {
    //     uartInit();
    //     bleConnect();
    //     bleStartStream();
    //     return (0);
    // }

///////////////////////////////
// Gameplay Global Variables //
///////////////////////////////

int global_score = 0;
const double bpm = 125.0;                               // beats per minute
const double bps = bpm / 60.0;                          // beats per second
const double spb = 1 / bps;                             // seconds per beat
const unsigned long int uspb = spb * 1e6;               // us per beat
const unsigned long int hbd = uspb / 2;                 // Half beat delay in us
const unsigned long int rdl = (hbd / HALF_VGA_WIDTH) 
    + COARSE_CORRECT;                                   // rope movement delay for half screen movement
// unsigned long int cdl = hbd / (CENT_DISP / 1.25)
unsigned long int cdl = (hbd / 2) / (CENT_DISP)
     + CENTER_CORRECT;
union accel                                             // Acceleration Reading Value Union
{
    float f;
    unsigned int i;
};
union accel acl;                                        // Acceleration reading value
float calib_arr[100];                                   // Calibration array for averaging
float center_baseline;                                  // baseline acceleration value when player standing still

// Made up number right now to see if timing works
long int test_time = 2000000; // quarter-beat time?

//////////////////////////
// Function Definitions //
//////////////////////////

    void bleConnect(void)
{
    sendString("$$$");
    myDelay(UART_DELAY);
    sendString("+\r\n");
    myDelay(UART_DELAY);
    sendString("C1\r\n");
    myDelay(UART_DELAY);
    sendString("CI\r\n");
    myDelay(UART_DELAY);
}

void bleDisconnect(void)
{
    sendString("K,1\r\n");
    myDelay(UART_DELAY);
}

void bleStartStream(void)
{
    sendString("CHW,002B,0100\r\n");
    myDelay(UART_DELAY);
}

void bleStopStream(void)
{
    sendString("CHW,002B,0000\r\n");
    myDelay(UART_DELAY);
}

void uartInit(void)
{
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

int sendByte(unsigned char b)
{
    unsigned long int tmp;
    tmp = READ_MMIO(REG_LSR); // Read value in LSR
    // while (!(LSR_THRE & tmp));           // Wait until bit 5 in LSR goes high
    if (!(LSR_THRE & tmp))
    {
        return (-1); // Bit 5 is not 1 so FIFO not empty - failure to write
    }
    WRITE_MMIO(UART_BASE, b); // Write byte to TX FIFO
    return (0);
}

void sendString(char *str)
{
    char *c;
    for (c = str; *c != '\0'; c++)
    {
        while (sendByte(*c) < 0)
            ;
    }
}

void myDelay(unsigned long int delay)
{
    for (unsigned long int i = 0; i < delay; i++)
    {
        __asm__("nop");
    }
}

int beatDelay(unsigned long int us)
{
    unsigned long int cycles = (us * 10) + FINE_CORRECT;
    if (cycles > 0) {
        for (unsigned long int i = 0; i < cycles; i++)
        {
            __asm__("nop");
        }
        return(0);
    } else {
        return(-1);
    }
}

void score(int amount)
{
    int ones, tens, hundreds, thousands;

    global_score += amount;

    if (global_score > 9999)
    {
        global_score = 0;
    }

    ones = global_score % 10;
    tens = global_score / 10;
    hundreds = global_score / 100;
    thousands = global_score / 1000;

    WRITE_MMIO(PORT_SEVENSEG_LOW, ones);
    WRITE_MMIO((PORT_SEVENSEG_LOW + 1), tens);
    WRITE_MMIO((PORT_SEVENSEG_LOW + 2), hundreds);
    WRITE_MMIO((PORT_SEVENSEG_LOW + 3), thousands);
}

void rope_down()
{
    int i;
    bool thresh1 = false;
    bool thresh2 = false;
    // int btn_value = 0;

    // Rope starts descent
    for (i = HALF_VGA_WIDTH; i < VGA_WIDTH; i++)
    {
        WRITE_MMIO(PORT_ROPE, i);
        beatDelay(rdl);
        // If we are in action window, check for button push
        if (i > (VGA_WIDTH - ACTION_WINDOW))
        {
            // btn_value = READ_MMIO(PORT_PBTNS);
            // if (btn_value == BTN_U_MASK)
            // {
            //     thresh1 = true;
            // }
            acl.i = READ_MMIO(PORT_ACCEL);
            if (acl.f < (center_baseline - THRESH)) {
                thresh1 = true;
            }
        }
    }

    // Rope starts ascent
    for (i = VGA_WIDTH; i >= HALF_VGA_WIDTH; i--)
    {
        WRITE_MMIO(PORT_ROPE, i);
        beatDelay(rdl);
        // If we are in action window, check for button push
        if (i > (VGA_WIDTH - ACTION_WINDOW))
        {
            // btn_value = READ_MMIO(PORT_PBTNS);
            // if (btn_value == BTN_U_MASK)
            // {
            //     thresh2 = true;
            // }
            acl.i = READ_MMIO(PORT_ACCEL);
            if (acl.f < (center_baseline - THRESH)) {
                thresh2 = true;
            }
        }
        else if (i == (VGA_WIDTH - ACTION_WINDOW))
        {
            if (thresh1 && thresh2) {       // Perfectly timed
                score(10);
            }
            else if (thresh1 || thresh2) {  // A little off (half score)
                score(5);
            }
        }
    }
}

void rope_up()
{
    int i;
    bool thresh1 = false;
    bool thresh2 = false;
    // int btn_value = 0;

    // Rope starts ascent
    for (i = HALF_VGA_WIDTH; i > 0; i--)
    {
        WRITE_MMIO(PORT_ROPE, i);
        beatDelay(rdl);

        // If we are in action window, check for button push
        if (i > ACTION_WINDOW)
        {
            acl.i = READ_MMIO(PORT_ACCEL);
            if (acl.f > (center_baseline + THRESH))
            {
                thresh1 = true;
            }
            // btn_value = READ_MMIO(PORT_PBTNS);
            // if (btn_value == BTN_U_MASK)
            // {
            //     thresh1 = true;
            // }
        }
    }

    // Rope starts descent
    for (i = 0; i <= HALF_VGA_WIDTH; i++)
    {
        WRITE_MMIO(PORT_ROPE, i);
        beatDelay(rdl);

        // If we are in action window, check for button push
        if (i < ACTION_WINDOW)
        {
            acl.i = READ_MMIO(PORT_ACCEL);
            if (acl.f > (center_baseline + THRESH))
            {
                thresh1 = true;
            }
            // btn_value = READ_MMIO(PORT_PBTNS);
            // if (btn_value == BTN_U_MASK)
            // {
            //     thresh2 = true;
            // }
        }
        else if (i == ACTION_WINDOW)
        {
            if (thresh1 && thresh2) {       // Perfectly timed
                score(10);
            }
            else if (thresh1 || thresh2) {  // A little off (half score)
                score(5);
            }
        }
    }
}

void rope_center()
{
    int i;
    for (i = HALF_VGA_WIDTH; i < (HALF_VGA_WIDTH + CENT_DISP); i++)
    {
        WRITE_MMIO(PORT_ROPE, i);
        beatDelay(cdl);
    }
    for (i = (HALF_VGA_WIDTH + CENT_DISP); i > HALF_VGA_WIDTH; i--) 
    {
        WRITE_MMIO(PORT_ROPE, i);
        beatDelay(cdl);
    }
    for (i = HALF_VGA_WIDTH; i > (HALF_VGA_WIDTH - CENT_DISP); i--)
    {
        WRITE_MMIO(PORT_ROPE, i);
        beatDelay(cdl);
    }
    for (i = (HALF_VGA_WIDTH - CENT_DISP); i <= HALF_VGA_WIDTH; i++)
    {
        WRITE_MMIO(PORT_ROPE, i);
        beatDelay(cdl);
    }
}

float calibration_val (void) 
{
    int i;
    float sum = 0;
    for (i = 0; i < 100; i++)
    {
        acl.i = READ_MMIO(PORT_ACCEL);
        calib_arr[i] = acl.f;
        sum = sum + calib_arr[i];
        myDelay(0xFF);
    }
    return (sum / 100.0);
}