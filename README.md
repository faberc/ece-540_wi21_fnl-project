# ECE 540/558 Final Project
# Jump Rope Fitness Game

#### Chuck Faber, Brett Thornhill, Tiffani Shilts

This project is a rhythm based fitness game.
The player jumps and ducks according to the beats of the song, and awards points the more in sync the person's movement is with the song and the game movements.

### Hardware
 * Nexys A7
    * Implements the hardware and software for the game.
 * Android Phone
    * Sends the acceleration data from the player to the Nexys A7
 * Raspberry Pi
    * Plays the music upon receipt of the start_song signal.


### Project Tree
 * docs - Documentation. Includes project requirements, pseudocode, research, etc.
 * media - Includes song files.
 * rvfpga - rvfpga source and Vivado project files
    * vivado - includes Vivado project files
 * sandbox - landing location for working on intermediary code and testing.
 * src - final version source code for each hardware element

