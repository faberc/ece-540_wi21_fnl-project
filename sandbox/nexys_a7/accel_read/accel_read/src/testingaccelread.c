/*
 * File: \testingbuttons_c.c
 * Project: c:\Users\Chuck\ECE540\fnlproj-team-tbc\sandbox\nexys_a7\accel_read
 * Created Date: Tuesday, March 2nd 2021, 7:07:11 pm
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

#include <stdlib.h>
#include <string.h>

#define ROPE_REG 0x80001704
#define ACCEL_REG 0x80001700
#define START_REG 0x8000170C

#define READ_GPIO(dir) (*(volatile unsigned *)dir)
#define WRITE_GPIO(dir, value)                 \
    {                                          \
        (*(volatile unsigned *)dir) = (value); \
    }



union accel {
    float f;
    unsigned int i;
};

union accel mem;

int main(void)
{
    WRITE_GPIO(ROPE_REG, 300);
    WRITE_GPIO(START_REG, 0x00);
    while (1)
    {
        mem.i = READ_GPIO(ACCEL_REG);
        for(int i = 0; i < 0xFFFF; i++);
    }

    return (0);
}
