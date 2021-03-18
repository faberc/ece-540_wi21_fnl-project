/*
 * File: \jumprope.c
 * Project: \GitHub\fnlproj-team-tbc\software\jump_rope\src
 * Created Date: Tuesday, February 23th 2021, 6:19:47 pm
 * Author: Brett Thornhill
 * -----
 * Last Modified: Tue Mar 09 2021
 * Modified By: Chuck Faber
 * -----
 * Copyright (c) 2021 Portland State University
 * 
 */

#include <stdbool.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "jr_lib.h"                     // custom library for jump rope game
#include "game_arrays.h"                // gameplay arrays

#define ARRAY transition
#define START_DELAY 0 /*14*/

int local_score;

int main (void) 
{

    // char *game_array;
    // game_array = calloc(sizeof(center_arr), sizeof(char));
    // game_array = memcpy(game_array, center_arr, sizeof(center_arr));
    int game_arr_sz = sizeof(ARRAY);
    int gpio_enable = 0xFFFF;    //GPIO enable value
    int sseg_enable = 0xF0;      //Seven Segment enable
    int start = 0;

    uartInit();
    bleClientInit();

    WRITE_MMIO(PORT_GPIO_EN, gpio_enable);          // Enable GPIOs
    WRITE_MMIO(PORT_SEVENSEG_EN, sseg_enable);      // Enable seven-segment display
    WRITE_MMIO(PORT_SEVENSEG_LOW, global_score);    // Initialize score to 0000
    WRITE_MMIO(PORT_ROPE, HALF_VGA_WIDTH);           // Start rope in the middle of the screen


    int i;
    while (1) { 

        start = READ_MMIO(PORT_PBTNS);          // Game starts when the user presses any button
        if(start) {

            // Calibrate while player stands still to get a baseline acceleration value
            center_baseline = calibration_val();

            // Start song -- using raspi for testing atm
            WRITE_MMIO(PORT_START,0x01);    // Starts song playing on raspberry pi
            myDelay(0x10);
            WRITE_MMIO(PORT_START,0x00);    // clears start bit

            // for (int i = 0; i < START_DELAY; i++) {
            //     beatDelay(uspb);
            // }

            // Run through game array
            for(i = 0; i < game_arr_sz; i++){
                switch (ARRAY[i])
                {
                case 0b00:  // Rope stays at center
                    rope_center();
                    break;
                
                case 0b01:  //Jump action -- rope moves down and back to center
                    rope_down();
                    break;
                
                case 0b10:  //Duck action -- rope moves up and back to center
                    rope_up();
                    break;

                default:
                    WRITE_MMIO(PORT_ROPE, HALF_VGA_WIDTH);
                    break;
                }
                local_score = global_score;
            }
            bleSendScore(local_score);
        }
    }

    return(0);
}