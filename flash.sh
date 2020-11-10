#!/bin/sh

#Flash program onto Arduino UNO board
avrdude -p m328p -c arduino -P \\.\COM4 -b 115200 -U flash:w:$1.hex