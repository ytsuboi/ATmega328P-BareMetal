default:
	avr-gcc -Os -DF_CPU=16000000UL -mmcu=atmega328p -c -o main.o main.c
	avr-gcc -o main.bin main.o
	avr-objcopy -j .text -j .data -R .eeprom -O ihex main.bin main.hex

clean:
	rm -f main.o main.bin main.hex
