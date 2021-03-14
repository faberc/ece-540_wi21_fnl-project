/*
 * File: \game_arrays.h
 * Project: c:\Users\Chuck\ECE540\fnlproj-team-tbc\sandbox\nexys_a7\level2\src
 * Created Date: Thursday, March 4th 2021, 8:49:14 pm
 * Author: Chuck Faber
 * -----
 * Last Modified: Mon Mar 08 2021
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

// char test_array1[46] = {0b00, 0b00, 0b00, 0b01, 0b00, 0b00, 0b00, 0b01, 0b00, 0b00, 0b00, 0b00, 0b00, 0b01, 0b00, 0b00, 0b00, 0b01,
//                      0b00, 0b00, 0b00, 0b00, 0b00, 0b01, 0b00, 0b00, 0b00, 0b00, 0b00, 0b01, 0b00, 0b01, 0b00, 0b00, 0b00, 0b01,
//                      0b00, 0b01, 0b00, 0b00, 0b00, 0b00, 0b00, 0b01, 0b00, 0b00};

char up_arr[100] = {
    0b10, 0b10, 0b10, 0b10, 0b10, 0b10, 0b10, 0b10, 0b10, 0b10,
    0b10, 0b10, 0b10, 0b10, 0b10, 0b10, 0b10, 0b10, 0b10, 0b10,
    0b10, 0b10, 0b10, 0b10, 0b10, 0b10, 0b10, 0b10, 0b10, 0b10,
    0b10, 0b10, 0b10, 0b10, 0b10, 0b10, 0b10, 0b10, 0b10, 0b10,
    0b10, 0b10, 0b10, 0b10, 0b10, 0b10, 0b10, 0b10, 0b10, 0b10,
    0b10, 0b10, 0b10, 0b10, 0b10, 0b10, 0b10, 0b10, 0b10, 0b10,
    0b10, 0b10, 0b10, 0b10, 0b10, 0b10, 0b10, 0b10, 0b10, 0b10,
    0b10, 0b10, 0b10, 0b10, 0b10, 0b10, 0b10, 0b10, 0b10, 0b10,
    0b10, 0b10, 0b10, 0b10, 0b10, 0b10, 0b10, 0b10, 0b10, 0b10,
    0b10, 0b10, 0b10, 0b10, 0b10, 0b10, 0b10, 0b10, 0b10, 0b10
};

char down_arr[100] = {
    0b01, 0b01, 0b01, 0b01, 0b01, 0b01, 0b01, 0b01, 0b01, 0b01, 
    0b01, 0b01, 0b01, 0b01, 0b01, 0b01, 0b01, 0b01, 0b01, 0b01, 
    0b01, 0b01, 0b01, 0b01, 0b01, 0b01, 0b01, 0b01, 0b01, 0b01, 
    0b01, 0b01, 0b01, 0b01, 0b01, 0b01, 0b01, 0b01, 0b01, 0b01, 
    0b01, 0b01, 0b01, 0b01, 0b01, 0b01, 0b01, 0b01, 0b01, 0b01,
    0b01, 0b01, 0b01, 0b01, 0b01, 0b01, 0b01, 0b01, 0b01, 0b01, 
    0b01, 0b01, 0b01, 0b01, 0b01, 0b01, 0b01, 0b01, 0b01, 0b01, 
    0b01, 0b01, 0b01, 0b01, 0b01, 0b01, 0b01, 0b01, 0b01, 0b01, 
    0b01, 0b01, 0b01, 0b01, 0b01, 0b01, 0b01, 0b01, 0b01, 0b01, 
    0b01, 0b01, 0b01, 0b01, 0b01, 0b01, 0b01, 0b01, 0b01, 0b01
};

char updown_arr[100] = {
    0b01, 0b10, 0b01, 0b10, 0b01, 0b10, 0b01, 0b10, 0b01, 0b10,
    0b01, 0b10, 0b01, 0b10, 0b01, 0b10, 0b01, 0b10, 0b01, 0b10,
    0b01, 0b10, 0b01, 0b10, 0b01, 0b10, 0b01, 0b10, 0b01, 0b10,
    0b01, 0b10, 0b01, 0b10, 0b01, 0b10, 0b01, 0b10, 0b01, 0b10,
    0b01, 0b10, 0b01, 0b10, 0b01, 0b10, 0b01, 0b10, 0b01, 0b10,
    0b01, 0b10, 0b01, 0b10, 0b01, 0b10, 0b01, 0b10, 0b01, 0b10,
    0b01, 0b10, 0b01, 0b10, 0b01, 0b10, 0b01, 0b10, 0b01, 0b10,
    0b01, 0b10, 0b01, 0b10, 0b01, 0b10, 0b01, 0b10, 0b01, 0b10,
    0b01, 0b10, 0b01, 0b10, 0b01, 0b10, 0b01, 0b10, 0b01, 0b10,
    0b01, 0b10, 0b01, 0b10, 0b01, 0b10, 0b01, 0b10, 0b01, 0b10
};

char center_arr[100] = {
    0b00, 0b00, 0b00, 0b00, 0b00, 0b00, 0b00, 0b00, 0b00, 0b00,
    0b00, 0b00, 0b00, 0b00, 0b00, 0b00, 0b00, 0b00, 0b00, 0b00,
    0b00, 0b00, 0b00, 0b00, 0b00, 0b00, 0b00, 0b00, 0b00, 0b00,
    0b00, 0b00, 0b00, 0b00, 0b00, 0b00, 0b00, 0b00, 0b00, 0b00,
    0b00, 0b00, 0b00, 0b00, 0b00, 0b00, 0b00, 0b00, 0b00, 0b00,
    0b00, 0b00, 0b00, 0b00, 0b00, 0b00, 0b00, 0b00, 0b00, 0b00,
    0b00, 0b00, 0b00, 0b00, 0b00, 0b00, 0b00, 0b00, 0b00, 0b00,
    0b00, 0b00, 0b00, 0b00, 0b00, 0b00, 0b00, 0b00, 0b00, 0b00,
    0b00, 0b00, 0b00, 0b00, 0b00, 0b00, 0b00, 0b00, 0b00, 0b00,
    0b00, 0b00, 0b00, 0b00, 0b00, 0b00, 0b00, 0b00, 0b00, 0b00
};

char test_arr[100] = {
    0b01, 0b10, 0b01, 0b10, 0b01, 0b10, 0b01, 0b10, 0b01, 0b10,
    0b00, 0b00, 0b00, 0b00, 0b00, 0b00, 0b00, 0b00, 0b00, 0b00,
    0b01, 0b10, 0b01, 0b10, 0b01, 0b10, 0b01, 0b10, 0b01, 0b10,
    0b00, 0b00, 0b00, 0b00, 0b00, 0b00, 0b00, 0b00, 0b00, 0b00,
    0b01, 0b10, 0b01, 0b10, 0b01, 0b10, 0b01, 0b10, 0b01, 0b10,
    0b00, 0b00, 0b00, 0b00, 0b00, 0b00, 0b00, 0b00, 0b00, 0b00,
    0b01, 0b10, 0b01, 0b10, 0b01, 0b10, 0b01, 0b10, 0b01, 0b10,
    0b00, 0b00, 0b00, 0b00, 0b00, 0b00, 0b00, 0b00, 0b00, 0b00,
    0b01, 0b10, 0b01, 0b10, 0b01, 0b10, 0b01, 0b10, 0b01, 0b10,
    0b00, 0b00, 0b00, 0b00, 0b00, 0b00, 0b00, 0b00, 0b00, 0b00
};

char transition[436] = {

    /*Warm-Up*/
    // 0b00,0b00,0b00,0b00,    0b00,0b00,0b00,0b00,
    0b00,0b00,0b00,0b00,    0b00,0b00,0b00,0b00,

    0b01,0b00,0b00,0b00,    0b00,0b00,0b00,0b00,
    0b00,0b00,0b00,0b00,    0b00,0b00,0b00,0b00,
    0b01,0b00,0b00,0b00,    0b00,0b00,0b00,0b00,
    0b00,0b00,0b00,0b00,    0b00,0b00,0b00,0b00,

    0b01,0b00,0b00,0b00,    0b00,0b00,0b00,0b00,
    0b00,0b00,0b00,0b00,    0b00,0b00,0b00,0b00,
    0b01,0b00,0b00,0b00,    0b00,0b00,0b00,0b00,
    0b00,0b00,0b00,0b00,    0b00,0b00,0b00,0b00,

    /*Picking up*/
    0b01,0b00,0b00,0b00,    0b01,0b00,0b00,0b00,
    0b10,0b00,0b00,0b00,    0b10,0b00,0b00,0b00,
    0b01,0b00,0b00,0b00,    0b01,0b00,0b00,0b00,
    0b10,0b00,0b00,0b00,    0b10,0b00,0b00,0b00,

    /*A little more*/
    0b01,0b00,0b10,0b00,    0b01,0b00,0b10,0b00,
    0b10,0b00,0b01,0b00,    0b10,0b00,0b01,0b00,
    0b01,0b00,0b10,0b00,    0b01,0b00,0b10,0b00,
    0b10,0b00,0b01,0b00,    0b10,0b00,0b01,0b00,

    /*even more*/
    0b01,0b01,0b01,0b10,    0b00,0b00,0b00,0b00,
    0b01,0b01,0b01,0b10,    0b00,0b00,0b00,0b00,
    0b01,0b01,0b01,0b10,    0b00,0b00,0b00,0b00,
    0b01,0b01,0b01,0b10,    0b00,0b00,0b00,0b00,

    /*chill out smooth*/
    0b10,0b00,0b00,0b00,    0b10,0b00,0b00,0b00,
    0b10,0b00,0b00,0b00,    0b10,0b00,0b00,0b00,
    0b10,0b00,0b00,0b00,    0b10,0b00,0b00,0b00,
    0b10,0b00,0b00,0b00,    0b10,0b00,0b00,0b00,

    /*upbeat smooth*/
    0b00,0b01,0b00,0b10,    0b00,0b00,0b00,0b00,
    0b00,0b01,0b00,0b10,    0b00,0b00,0b00,0b00,
    0b00,0b01,0b00,0b10,    0b00,0b00,0b00,0b00,
    0b00,0b01,0b00,0b10,    0b00,0b00,0b00,0b00,

    /*jazzy crescendo*/
    0b00,0b01,0b00,0b01,    0b10,0b01,0b01,0b10,
    0b01,0b00,0b01,0b10,    0b00,0b01,0b01,0b01,
    0b10,0b01,0b01,0b00,    0b01,0b00,0b00,0b10,
    0b00,0b00,0b10,0b00,    0b01,0b01,0b01,0b01,

    /*robotic simple rhythm*/
    0b01,0b00,0b00,0b00,    0b01,0b00,0b00,0b00,
    0b01,0b00,0b00,0b00,    0b01,0b00,0b00,0b00,
    0b01,0b00,0b00,0b00,    0b01,0b00,0b00,0b00,
    0b01,0b00,0b00,0b00,    0b01,0b00,0b00,0b00,

    /*smooth again*/
    0b10,0b00,0b00,0b00,    0b00,0b00,0b00,0b00,
    0b00,0b00,0b00,0b00,    0b01,0b00,0b00,0b00,
    0b10,0b00,0b00,0b00,    0b00,0b00,0b00,0b00,
    0b00,0b00,0b00,0b00,    0b01,0b00,0b00,0b00,

    /*smooth more beat*/
    0b10,0b00,0b00,0b00,    0b01,0b00,0b00,0b00,
    0b01,0b00,0b00,0b00,    0b10,0b00,0b00,0b00,
    0b10,0b00,0b00,0b00,    0b01,0b00,0b00,0b00,
    0b01,0b00,0b00,0b00,    0b10,0b00,0b00,0b00,

    /*crescendo!*/
    0b01,0b00,0b01,0b00,    0b00,0b01,0b00,0b01,
    0b10,0b00,0b10,0b00,    0b00,0b10,0b00,0b10,
    0b01,0b00,0b01,0b00,    0b00,0b01,0b00,0b01,
    0b10,0b00,0b10,0b00,    0b00,0b10,0b00,0b10,

    /*super crescendo!*/
    0b01,0b00,0b01,0b00,    0b01,0b00,0b10,0b00,
    0b01,0b00,0b01,0b00,    0b01,0b00,0b10,0b00,
    0b01,0b00,0b01,0b00,    0b01,0b00,0b10,0b00,
    0b01,0b00,0b01,0b00,    0b01,0b00,0b10,0b00,

    /*Cool down*/
    0b00,0b00,0b00,0b00,    0b00,0b00,0b00,0b00,
    0b00,0b00,0b00,0b00

};

char jump[432] = {

    /*Warm-Up*/
    0b01, 0b01, 0b01, 0b01, 0b01, 0b01, 0b01, 0b01,
    0b01, 0b01, 0b01, 0b01, 0b01, 0b01, 0b01, 0b01,
    0b01, 0b01, 0b01, 0b01, 0b01, 0b01, 0b01, 0b01,
    0b01, 0b01, 0b01, 0b01, 0b01, 0b01, 0b01, 0b01,
    0b01, 0b01, 0b01, 0b01, 0b01, 0b01, 0b01, 0b01,
    0b01, 0b01, 0b01, 0b01, 0b01, 0b01, 0b01, 0b01,
    0b01, 0b01, 0b01, 0b01, 0b01, 0b01, 0b01, 0b01,
    0b01, 0b01, 0b01, 0b01, 0b01, 0b01, 0b01, 0b01,
    0b01, 0b01, 0b01, 0b01,

    /*Picking up*/
    0b01, 0b01, 0b01, 0b01, 0b01, 0b01, 0b01, 0b01,
    0b01, 0b01, 0b01, 0b01, 0b01, 0b01, 0b01, 0b01,
    0b01, 0b01, 0b01, 0b01, 0b01, 0b01, 0b01, 0b01,
    0b01, 0b01, 0b01, 0b01, 0b01, 0b01, 0b01, 0b01,

    /*A little more*/
    0b01, 0b01, 0b01, 0b01, 0b01, 0b01, 0b01, 0b01,
    0b01, 0b01, 0b01, 0b01, 0b01, 0b01, 0b01, 0b01,
    0b01, 0b01, 0b01, 0b01, 0b01, 0b01, 0b01, 0b01,
    0b01, 0b01, 0b01, 0b01, 0b01, 0b01, 0b01, 0b01,

    /*even more*/
    0b01, 0b01, 0b01, 0b01, 0b01, 0b01, 0b01, 0b01,
    0b01, 0b01, 0b01, 0b01, 0b01, 0b01, 0b01, 0b01,
    0b01, 0b01, 0b01, 0b01, 0b01, 0b01, 0b01, 0b01,
    0b01, 0b01, 0b01, 0b01, 0b01, 0b01, 0b01, 0b01,

    /*chill out smooth*/
    0b01, 0b01, 0b01, 0b01, 0b01, 0b01, 0b01, 0b01,
    0b01, 0b01, 0b01, 0b01, 0b01, 0b01, 0b01, 0b01,
    0b01, 0b01, 0b01, 0b01, 0b01, 0b01, 0b01, 0b01,
    0b01, 0b01, 0b01, 0b01, 0b01, 0b01, 0b01, 0b01,

    /*upbeat smooth*/
    0b01, 0b01, 0b01, 0b01, 0b01, 0b01, 0b01, 0b01,
    0b01, 0b01, 0b01, 0b01, 0b01, 0b01, 0b01, 0b01,
    0b01, 0b01, 0b01, 0b01, 0b01, 0b01, 0b01, 0b01,
    0b01, 0b01, 0b01, 0b01, 0b01, 0b01, 0b01, 0b01,

    /*jazzy crescendo*/
    0b01, 0b01, 0b01, 0b01, 0b01, 0b01, 0b01, 0b01,
    0b01, 0b01, 0b01, 0b01, 0b01, 0b01, 0b01, 0b01,
    0b01, 0b01, 0b01, 0b01, 0b01, 0b01, 0b01, 0b01,
    0b01, 0b01, 0b01, 0b01, 0b01, 0b01, 0b01, 0b01,

    /*robotic simple rhythm*/
    0b01, 0b01, 0b01, 0b01, 0b01, 0b01, 0b01, 0b01,
    0b01, 0b01, 0b01, 0b01, 0b01, 0b01, 0b01, 0b01,
    0b01, 0b01, 0b01, 0b01, 0b01, 0b01, 0b01, 0b01,
    0b01, 0b01, 0b01, 0b01, 0b01, 0b01, 0b01, 0b01,

    /*smooth again*/
    0b01, 0b01, 0b01, 0b01, 0b01, 0b01, 0b01, 0b01,
    0b01, 0b01, 0b01, 0b01, 0b01, 0b01, 0b01, 0b01,
    0b01, 0b01, 0b01, 0b01, 0b01, 0b01, 0b01, 0b01,
    0b01, 0b01, 0b01, 0b01, 0b01, 0b01, 0b01, 0b01,

    /*smooth more beat*/
    0b01, 0b01, 0b01, 0b01, 0b01, 0b01, 0b01, 0b01,
    0b01, 0b01, 0b01, 0b01, 0b01, 0b01, 0b01, 0b01,
    0b01, 0b01, 0b01, 0b01, 0b01, 0b01, 0b01, 0b01,
    0b01, 0b01, 0b01, 0b01, 0b01, 0b01, 0b01, 0b01,

    /*crescendo!*/
    0b01, 0b01, 0b01, 0b01, 0b01, 0b01, 0b01, 0b01,
    0b01, 0b01, 0b01, 0b01, 0b01, 0b01, 0b01, 0b01,
    0b01, 0b01, 0b01, 0b01, 0b01, 0b01, 0b01, 0b01,
    0b01, 0b01, 0b01, 0b01, 0b01, 0b01, 0b01, 0b01,

    /*super crescendo!*/
    0b01, 0b01, 0b01, 0b01, 0b01, 0b01, 0b01, 0b01,
    0b01, 0b01, 0b01, 0b01, 0b01, 0b01, 0b01, 0b01,
    0b01, 0b01, 0b01, 0b01, 0b01, 0b01, 0b01, 0b01,
    0b01, 0b01, 0b01, 0b01, 0b01, 0b01, 0b01, 0b01,

    /*Cool down*/
    0b01, 0b01, 0b01, 0b01, 0b01, 0b01, 0b01, 0b01,
    0b01, 0b01, 0b01, 0b01

};


char step_count[433] = {

    0b00,
    0b00,0b00,0b00,0b00,

    0b01,0b00,0b00,0b00,    0b00,0b00,0b00,0b00,
    0b01,0b00,0b00,0b00,    0b00,0b00,0b00,0b00,
    0b01,0b00,0b00,0b00,    0b00,0b00,0b00,0b00,
    0b01,0b00,0b00,0b00,    0b00,0b00,0b00,0b00,

    0b01,0b00,0b00,0b00,    0b00,0b00,0b00,0b00,
    0b01,0b00,0b00,0b00,    0b00,0b00,0b00,0b00,
    0b01,0b00,0b00,0b00,    0b00,0b00,0b00,0b00,
    0b01,0b00,0b00,0b00,    0b00,0b00,0b00,0b00,

    /*Picking up*/
    0b01,0b00,0b00,0b00,    0b01,0b00,0b00,0b00,
    0b01,0b00,0b00,0b00,    0b01,0b00,0b00,0b00,
    0b01,0b00,0b00,0b00,    0b01,0b00,0b00,0b00,
    0b01,0b00,0b00,0b00,    0b01,0b00,0b00,0b00,

    /*A little more*/
    0b01,0b00,0b00,0b00,    0b01,0b00,0b00,0b00,
    0b01,0b00,0b00,0b00,    0b01,0b00,0b00,0b00,
    0b01,0b00,0b00,0b00,    0b01,0b00,0b00,0b00,
    0b01,0b00,0b00,0b00,    0b01,0b00,0b00,0b00,

    /*even more*/
    0b01,0b00,0b00,0b00,    0b01,0b00,0b00,0b00,
    0b01,0b00,0b00,0b00,    0b01,0b00,0b00,0b00,
    0b01,0b00,0b00,0b00,    0b01,0b00,0b00,0b00,
    0b01,0b00,0b00,0b00,    0b01,0b00,0b00,0b00,

    /*chill out smooth*/
    0b01,0b00,0b00,0b00,    0b00,0b00,0b00,0b00,
    0b01,0b00,0b00,0b00,    0b00,0b00,0b00,0b00,
    0b01,0b00,0b00,0b00,    0b00,0b00,0b00,0b00,
    0b01,0b00,0b00,0b00,    0b00,0b00,0b00,0b00,

    /*upbeat smooth*/
    0b01,0b00,0b00,0b00,    0b00,0b00,0b00,0b00,
    0b01,0b00,0b00,0b00,    0b00,0b00,0b00,0b00,
    0b01,0b00,0b00,0b00,    0b00,0b00,0b00,0b00,
    0b01,0b00,0b00,0b00,    0b00,0b00,0b00,0b00,

    /*jazzy crescendo*/
    0b01,0b00,0b00,0b00,    0b01,0b00,0b00,0b00,
    0b01,0b00,0b00,0b00,    0b01,0b00,0b00,0b00,
    0b01,0b00,0b00,0b00,    0b01,0b00,0b00,0b00,
    0b01,0b00,0b00,0b00,    0b01,0b00,0b00,0b00,

    /*robotic simple rhythm*/
    0b01,0b00,0b00,0b00,    0b00,0b00,0b00,0b00,
    0b01,0b00,0b00,0b00,    0b00,0b00,0b00,0b00,
    0b01,0b00,0b00,0b00,    0b00,0b00,0b00,0b00,
    0b01,0b00,0b00,0b00,    0b00,0b00,0b00,0b00,

    /*smooth again*/
    0b01,0b00,0b00,0b00,    0b00,0b00,0b00,0b00,
    0b01,0b00,0b00,0b00,    0b00,0b00,0b00,0b00,
    0b01,0b00,0b00,0b00,    0b00,0b00,0b00,0b00,
    0b01,0b00,0b00,0b00,    0b00,0b00,0b00,0b00,

    /*smooth more beat*/
    0b01,0b00,0b00,0b00,    0b00,0b00,0b00,0b00,
    0b01,0b00,0b00,0b00,    0b00,0b00,0b00,0b00,
    0b01,0b00,0b00,0b00,    0b00,0b00,0b00,0b00,
    0b01,0b00,0b00,0b00,    0b00,0b00,0b00,0b00,

    /*crescendo!*/
    0b01,0b00,0b00,0b00,    0b01,0b00,0b00,0b00,
    0b01,0b00,0b00,0b00,    0b01,0b00,0b00,0b00,
    0b01,0b00,0b00,0b00,    0b01,0b00,0b00,0b00,
    0b01,0b00,0b00,0b00,    0b01,0b00,0b00,0b00,

    /*super crescendo!*/
    0b01,0b00,0b00,0b00,    0b01,0b00,0b00,0b00,
    0b01,0b00,0b00,0b00,    0b01,0b00,0b00,0b00,
    0b01,0b00,0b00,0b00,    0b01,0b00,0b00,0b00,
    0b01,0b00,0b00,0b00,    0b01,0b00,0b00,0b00,

    /*Cool down*/
    0b01,0b00,0b00,0b00,    0b00,0b00,0b00,0b00,
    0b00,0b00,0b00,0b00

};