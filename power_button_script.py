#!/usr/bin/env python

# Special script to use the GPIO pins to control the power button and shutdown logic

import RPi.GPIO as GPIO
import subprocess

GPIO.setmode(GPIO.BCM)
GPIO.setwarnings(False)

# Set variables
LED_pin = 17 
POWER_pin = 3

# Setup Button and LED
GPIO.setup(LED_pin, GPIO.OUT)
#GPIO.setup(LED_pin, GPIO.OUT, initial=GPIO.LOW)
GPIO.setup(LED_pin, GPIO.OUT, initial=GPIO.HIGH)
GPIO.setup(POWER_pin, GPIO.IN, pull_up_down=GPIO.PUD_UP)    # Using the internal Pull up resistor
GPIO.wait_for_edge(POWER_pin, GPIO.FALLING)

subprocess.call(['shutdown', '-h', 'now'], shell=False)
