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

#include <stdbool.h>
int main() {

    int vga_width = 768;
    float half_vga_width = vga_width / 2;       // = 384    
    int bpm = 150;                              // beats per minute -- defined by song
    float mpb = 1 / bpm;                        // minutes per beat
    float spb = mpb / 60.0;                     // seconds per beat
    float hbd = spb / 2.0;                      // half-beat delay

    // At which row from critical point do we start checking for jumps and stop checking for landings?
    // Increase to make it easier, decrease to make it harder
    int action_window = 50;

    // What acceleration threshold in z-axis must be met to register a jump or duck
    // Increase to make it harder, decrease to make it easier
    int acceleration_threshold = 20;

    char jump_array[] = {0b00, 0b00, 0b00, 0b01, 0b00, 0b00, 0b00, 0b10, 0b00, 0b00 ...};

    int global_points = 0;               // Number of points to start with
    int points_increment = 10;           // Number of points to increase by
    
    
    float rope_location = half_vga_width;      // Start rope in center of screen

    //Wait for start_game input
    if (start_game){
        start_song();
        delay(hbd);          // Delay half beat


        // Check array between each beat so the critical point lines up with the beat
        for (i = 0, i < jump_array.length, i++):
            case (jump_array[i]):
                0b00:
                    // Stay in rope_center (maybe a slight animation?)
                    rope_center()
                0b01:
                    // Jump action -- rope moves down and back to center
                    rope_down();
                0b10:
                    // Duck action -- rope moves up and back to center
                    rope_up()
        }
        
}

/*
void rope_down () {
    bool thresh1 = false;                   // jump acceleration requirement not met
    bool thresh2 = false;                    // land acceleration requirement not met
    for (int i = half_vga_width; i <= vga_width; i++){        // Starting from center, move down to row 768
        int rope_location = i;
        
        delay(hbd / half_width)             // movement time: half beat divided by the the number of rows
        if (i > 768-action_window):         // When rope is within action window...
            measurement = take_measurement
            if (measurement > acceleration_threshold):
                thresh1 = true
    }

    for (i = vga_width; i <= half_vga_width; i--):      // Starting from row 768, move back to center
        rope_location = i
        delay(hbd / half_width)
        if (i > 768-action_window):         // When rope is within action window...
            measurement = take_measurement
            if (measurement < -1 * acceleration_threshold):     // threshold made negative and measurement must be less than it
                thresh2 = true
    end for

    // Check to see if jump profile matches.
    // Note: It may be possible to use these thresh measurements to tell the user if they are too late or too early.
    if (thresh1 && thresh2):
        global_points += points_increment                              // If acceleration profile matches that of a jump, award points
        write points to sev seg display
    else display miss

    return;
}

function rope_up ()
    thresh1 = false             // jump acceleration requirement not met
    thresh2 = false             // land acceleration requirement not met
    for (i=half_vga_width; i > 0; i--):     // Starting at center, rope moves up to row 0
        rope_location = i
        delay(hbd / half_width)             // time between each rope movement
        if (i < action_window):             // measurement threshold
            measurement = take_measurement
            if (measurement < -1 * acceleration_threshold):     // Moving in the neg Z direction (ducking)
                thresh1 = true
    end for
    for (i = 0; i <= half_vga_width; i++):  // starting at top, rope moves back to center
        rope_location = i
        delay(hbd / half_width)             // time between each frame
        if (i < action_window):
            measurement = take_measurement
            if (measurement > acceleration_threshold):   // moving in the pos Z direction (standing back up)
                thresh2 = true
    end for
    if (thresh1 && thresh2):
        global_points += points_increment                       // If acceleration profile mathes that of a duck, award points
        write points to sev seg display
    else:
        display miss
end function: rope_up

function rope_center():
    keep rope at center
    in future: maybe some small oscillation animation around center 

    return 0;
}
*/