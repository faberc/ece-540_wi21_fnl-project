/*
 * File: \jumprope.c
 * Project: \GitHub\fnlproj-team-tbc\software\jump_rope\src
 * Created Date: Tuesday, February 23th 2021, 6:19:47 pm
 * Author: Brett Thornhill
 * -----
 * Last Modified: Thu Mar 04 2021
 * Modified By: Chuck Faber
 * -----
 * Copyright (c) 2021 Portland State University
 * 
 */

#include <stdbool.h>
#include <stdio.h>
#include <stdlib.h>
#include <time.h>

// Nexys Port Addresses
#define PORT_SLSWTCH    0x80001400      // (i) slide switches
#define PORT_LEDS       0x80001404      // (o) LEDs
#define PORT_GPIO_EN    0x80001408      // (i) enable LEDs for output
#define PORT_PBTNS      0x80001500      // (i) pushbuttons inputs

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

#define VGA_WIDTH 768
#define HALF_VGA_WIDTH  (VGA_WIDTH / 2)       // = 384 

// Global variables
int global_score = 0;
int global_actionwindow = 50;
int bpm = 150;
// Made up number right now to see if timing works
long int test_time =  2000000; // quarter-beat time? 


void score(int amount){
    int ones, tens, hundreds, thousands;

    global_score += amount;
    
    if(global_score > 9999){
        global_score = 0;
    }

    ones = global_score % 10;
    tens = global_score / 10;
    hundreds = global_score / 100;
    thousands = global_score / 1000;

    WRITE_GPIO(PORT_SEVENSEG_LOW, ones);
    WRITE_GPIO((PORT_SEVENSEG_LOW + 1), tens);
    WRITE_GPIO((PORT_SEVENSEG_LOW + 2), hundreds);
    WRITE_GPIO((PORT_SEVENSEG_LOW + 3), thousands);

}


void rope_down(){
    int i, j;
    bool thresh1 = false;
    bool thresh2 = false;
    int btn_value = 0;

    // Rope starts descent
    for(i = HALF_VGA_WIDTH; i < VGA_WIDTH; i++ ){
        WRITE_GPIO(ROPE_REG, i);
        
        // Delay - will get changed to delay(half beat / vga half-width)
        for(j=0;j<(test_time/(HALF_VGA_WIDTH * 4));j++);
        
        // If we are in action window, check for button push
        if ( i > (VGA_WIDTH - global_actionwindow)){
            btn_value = READ_GPIO(PORT_PBTNS);
            if(btn_value == BTN_U_MASK){
                thresh1 = true;
            }
        }
    }

    // Rope starts ascent 
    for(i = VGA_WIDTH; i >= HALF_VGA_WIDTH; i--){
        WRITE_GPIO(ROPE_REG, i);
        
        for(j=0;j<(test_time/(HALF_VGA_WIDTH * 4));j++);

        // If we are in action window, check for button push
        if ( i > (VGA_WIDTH - global_actionwindow)){
            btn_value = READ_GPIO(PORT_PBTNS);
            if(btn_value == BTN_U_MASK){
                thresh2 = true;
            }
        }
        else if( i == (VGA_WIDTH - global_actionwindow)){
            if ( thresh1 | thresh2){
                score(1);
            }
        }
    }
}

void rope_center(){
    int j;
    WRITE_GPIO(ROPE_REG, HALF_VGA_WIDTH);
    for(j=0;j<((test_time/4));j++);
    WRITE_GPIO(ROPE_REG, (HALF_VGA_WIDTH + 10));
    for(j=0;j<((test_time/4));j++);
    WRITE_GPIO(ROPE_REG, HALF_VGA_WIDTH);
    for(j=0;j<((test_time/4));j++);
    WRITE_GPIO(ROPE_REG, (HALF_VGA_WIDTH + 10));
    for(j=0;j<((test_time/4));j++);
    WRITE_GPIO(ROPE_REG, HALF_VGA_WIDTH);
}

int main ( void ) 
{
    int gpio_enable = 0xFFFF;    //GPIO enable value
    int sseg_enable = 0xF0;      //Seven Segment enable
    int start = 0;

    char jump_array[] = {0b00, 0b00, 0b00, 0b01, 0b00, 0b00, 0b00, 0b01, 0b00, 0b00, 0b00, 0b00, 0b00, 0b01, 0b00, 0b00, 0b00, 0b01,
                        0b00, 0b00, 0b00, 0b00, 0b00, 0b01, 0b00, 0b00, 0b00, 0b00, 0b00, 0b01, 0b00, 0b01, 0b00, 0b00, 0b00, 0b01, 
                        0b00, 0b01, 0b00, 0b00, 0b00, 0b00, 0b00, 0b01, 0b00, 0b00};

    int jump_array_size = sizeof jump_array;

    WRITE_GPIO(PORT_GPIO_EN, gpio_enable);          // Enable GPIOs
    WRITE_GPIO(PORT_SEVENSEG_EN, sseg_enable);      // Enable seven-segment display
    WRITE_GPIO(PORT_SEVENSEG_LOW, global_score);    // Initialize score to 0000
    WRITE_GPIO(ROPE_REG, HALF_VGA_WIDTH);           // Start rope in the middle of the screen
    
    int i;

    while (1) { 

        start = READ_GPIO(PORT_PBTNS);          // Game starts when the user presses any button

        if(start) {

            for(i = 0; i < jump_array_size; i++){
                switch (jump_array[i])
                {
                case 0b00:  // Rope stays at center
                    rope_center();
                    break;
                
                case 0b01:  //Jump action -- rope moves down and back to center
                    rope_down();
                    break;
                
                case 0b10:  //Duck action -- rope moves up and back to center
                    break;

                default:
                    WRITE_GPIO(ROPE_REG, HALF_VGA_WIDTH);
                    break;
                } 
            }
        }
    }
    return(0);    
}