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

#include <time.h>
#include <stdbool.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "jr_lib.h"                     // custom library for jump rope game
#include "game_arrays.h"                // gameplay arrays

#define ARRAY step_count
#define START_DELAY 0 /*14*/



int main (void) 
{

    WRITE_MMIO(PORT_START, 0x00);
    WRITE_MMIO(PORT_START, 0x01);
    rope_center();
    WRITE_MMIO(PORT_START, 0x00);

    // rope_down();

    __asm__("nop");
    __asm__("nop");
    __asm__("nop");
    __asm__("nop");

    return(0);
}