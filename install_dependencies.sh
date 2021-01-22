#!/bin/sh

#Upgrade system packages
apt-get update
apt-get upgrade all

#Install gcc-avr for compiling programs
apt get install gcc-avr binutils-avr avr-libc gdb-avr

#Install avrdude for flashing programs to microcontroller
apt-get install avrdude
