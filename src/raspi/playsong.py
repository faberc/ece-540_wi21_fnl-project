##
# playsong.py
# Plays song when GPIO4 pin goes high as long as script is running
# 'Transition.wav' must be in same folder as script
# This script runs from Raspberry Pi. A connection must be made
# to Nexys A7 JD1 pin --> GPIO4 on Raspi, and also connect
# ground pins together.
#
# Created by Chuck Faber -- 3-05-2021
##

import pygame
import wave
try:
    import RPi.GPIO as GPIO
except RunTimeError:
    print("Error importing RPi.GPIO. Try sudo.")

# Get the framerate of the WAV file to sample at correct frequency
# otherwise song plays too slow
file_path = 'Transition.wav'
file_wav = wave.open(file_path)
frequency = file_wav.getframerate()

# Setup GPIO pins for start signal
GPIO.setmode(GPIO.BCM)
GPIO.setup(4, GPIO.IN)      # GPIO4

# Initialize pygame music player
pygame.mixer.quit()
pygame.mixer.init(frequency=frequency)
pygame.mixer.music.load(file_path)
pygame.mixer.music.set_volume(1.0)

# Main script body
while True:
    if (GPIO.input(4)):
        print("Playing Transition.wav")
        pygame.mixer.music.play()
        while pygame.mixer.music.get_busy() == True:
            continue