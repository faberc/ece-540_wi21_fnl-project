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
    * android - includes the Android Studio/IntelliJ project that contains our android app
    * nexys_a7 - includes the Jump Rope game software and the rvfpga HDL source code
    * raspi - includes the python script for music playback

#### Relevant modified/added files in RVFPGA src folder:
 * src/rvfpga.xdc
 * src/rvfpga.sv
 * src/OtherSources/colorizer2.sv
 * src/OtherSources/rope.v
 * src/SweRVolfSoC/swervolf_core.v
 * src/SweRVolfSoC/OtherSources/uart_rx/ascii_2_hex.sv
 * src/SweRVolfSoC/OtherSources/uart_rx/baud_gen.sv
 * src/SweRVolfSoC/OtherSources/uart_rx/uart_parse.sv
 * src/SweRVolfSoC/OtherSources/uart_rx/uart_rx.sv
 * src/SweRVolfSoC/Peripherals/custom/periph_top.v
 * src/SweRVolfSoC/Peripherals/custom/pmod_ble_top.v
 * src/SweRVolfSoC/Peripherals/custom/axis_i2s2.v
 * src/SweRVolfSoC/Peripherals/custom/axi_volume_controller.v
 * src/SweRVolfSoC/Peripherals/custom/wbpwmaudio.v
 * src/SweRVolfSoC/Interconnect/WishboneInterconnect/wb_intercon.v
 * src/SweRVolfSoC/Interconnect/WishboneInterconnect/wb_intercon.vh
