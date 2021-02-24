/*
 * File: \jumprope.c
 * Project: \GitHub\fnlproj-team-tbc\software\jump_rope\src
 * Created Date: Tuesday, February 23th 2021, 6:19:47 pm
 * Author: Brett Thornhill
 * -----
 * Last Modified: 
 * Modified By: 
 * -----
 * Copyright (c) 2021 Portland State University
 * 
 */

// #include <stdbool.h>

// Nexys Port Addresses
#define PORT_LEDS       0x80001404      // (o) LEDs
#define PORT_SLSWTCH    0x80001400      // (i) slide switches
#define PORT_PBTNS      0x80001500      // (i) pushbuttons inputs
#define PORT_GPIO_EN    0x80001408      // (o) enable LEDs for output

#define PORT_SEVENSEG_EN    0x80001038      // (o) 7 Segment enable
#define PORT_SEVENSEG_HGH   0x8000103c      // (o) 7 Segment Higher Display
#define PORT_SEVENSEG_LOW   0x80001024      // (o) 7 Segment Lower Display
#define PORT_SEVENSEG_DP    0x80001018      // (o) 7 segment Decimal Point Display

// Masks for Pushbuttons 
#define BTN_R_MASK           0x2
#define BTN_C_MASK           0x1
#define BTN_L_MASK           0x4
#define BTN_D_MASK           0x8
#define BTN_U_MASK           0x10
#define PUSHBUTTON_MASK      0x1F

#define READ_GPIO(dir) (*(volatile unsigned *)dir)
#define WRITE_GPIO(dir, value) { (*(volatile unsigned *)dir) = (value); }


int main ( void ) 
{
    int En_Value=0xFFFF, switches_value;

    WRITE_GPIO(PORT_GPIO_EN, En_Value);

    while (1) { 
        switches_value = READ_GPIO(PORT_SLSWTCH);
        switches_value = switches_value >> 16;
        WRITE_GPIO(PORT_LEDS, switches_value);
    }

    return(0);    
}
