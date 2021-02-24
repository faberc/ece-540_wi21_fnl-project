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
#include <stdio.h>
#include <stdlib.h>

// Nexys Port Addresses
#define PORT_LEDS       0x80001404      // (o) LEDs
#define PORT_SLSWTCH    0x80001400      // (i) slide switches
#define PORT_PBTNS      0x80001500      // (i) pushbuttons inputs
#define PORT_GPIO_EN    0x80001408      // (o) enable LEDs for output

#define ROPE_REG        0x80001704

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
    int En_Value = 0xFFFF;    //GPIO enable value
    int start = 0x00;

    int vga_width = 768;
    int half_vga_width = vga_width / 2;       // = 384    
    int bpm = 150;                            // beats per minute -- defined by song
    int mpb = 1 / bpm;                        // minutes per beat
    int spb = mpb / 60.0;                     // seconds per beat
    int hbd = spb / 2.0;                      // half-beat delay
    
    char jump_array[] = {0b00, 0b00, 0b00, 0b01, 0b00, 0b00, 0b00, 0b01, 0b00, 0b00};
    int jump_array_size = sizeof jump_array;

    WRITE_GPIO(PORT_GPIO_EN, En_Value);         // Enable GPIOs
    WRITE_GPIO(ROPE_REG, half_vga_width);       // Start rope in the middle of the screen
    
    int j;

    while (1) { 

        start = READ_GPIO(PORT_PBTNS);          // Game starts when the user presses any button

        if(start) {
            WRITE_GPIO(ROPE_REG, 10);
            for(j=0;j<10000000;j++);

            int i = 0;
            
            for(i = 0; i < jump_array_size; i++){
                switch (jump_array[i])
                {
                case 0b00:  // Rope stays at center
                    WRITE_GPIO(ROPE_REG, half_vga_width);
                    break;
                
                case 0b01:  //Jump action -- rope moves down and back to center
                    WRITE_GPIO(ROPE_REG, vga_width);
                    break;

                default:
                    WRITE_GPIO(ROPE_REG, half_vga_width);
                    break;
                }
                for(j=0;j<10000000;j++);
            }
        }


    }

    return(0);    
}
