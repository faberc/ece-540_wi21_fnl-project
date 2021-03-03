/*
 * File: \testingbuttons_c.c
 * Project: c:\Users\Chuck\ECE540\fnlproj-team-tbc\sandbox\nexys_a7\accel_read
 * Created Date: Tuesday, March 2nd 2021, 7:07:11 pm
 * Author: Chuck Faber
 * -----
 * Last Modified: Tue Mar 02 2021
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


#define ROPE_REG 0x80001704
#define ACCEL_REG 0x80001700

#define READ_GPIO(dir) (*(volatile unsigned *)dir)
#define WRITE_GPIO(dir, value)                 \
    {                                          \
        (*(volatile unsigned *)dir) = (value); \
    }

int accel_value = 0x00000000;

int main(void)
{
    WRITE_GPIO(ROPE_REG, 300);
    while (1)
    {
        accel_value = READ_GPIO(ACCEL_REG);
        // printf("Value Read: %x\n", accel_value);
        for(int i = 0; i < 0xFFFF; i++);
    }

    return (0);
}
