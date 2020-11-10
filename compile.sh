#!/bin/sh

#Compiles C program to hex file for use with Arduino UNO
avr-gcc -g -Os -mmcu=atmega328p -c $1.c
avr-gcc -g -mmcu=atmega328p -o $1.elf $1.o
avr-objcopy -j .text -j .data -O ihex $1.elf $1.hex
