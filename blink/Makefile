compile:
	make object
	make executable
	make binary

object:
	avr-gcc -Os -DF_CPU=16000000UL -mmcu=atmega328p -c -o blink.o blink.c

executable:
	avr-gcc -mmcu=atmega328p blink.o -o blink

binary:
	avr-objcopy -O ihex -R .eeprom blink blink.hex

flash:
	avrdude -F -V -c arduino -p ATMEGA328P -P /dev/ttyACM0 -b 115200 -U flash:w:blink.hex