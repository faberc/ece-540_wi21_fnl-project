import pygame
try:
    import RPi.GPIO as GPIO
except RunTimeError:
    print("Error importing RPi.GPIO. Try sudo.")

GPIO.setmode(GPIO.BCM)
GPIO.setup(4, GPIO.IN)      # Connect JD1 to GPIO 4 and GND to GND

pygame.mixer.init()
pygame.mixer.music.load("Transition.wav")
pygame.mixer.music.set_volume(1.0)

while True:
    if (GPIO.input(4)):
        print("Playing Transition.wav")
        pygame.mixer.music.play()
        while pygame.mixer.music.get_busy() == True:
            continue