When making new project

- Make MyDrivers folder a source folder

- Include each folder until the source, need to include each individually. Select project root -> properties -> C/C++ General -> Paths And Symbols -> Includes -> Add then add each

HSE = high speed external clock. The crystal on the PCB

HSIx = high speed internal clock @ xMhz

HAL = hardware abstraction layer, software that abstracts using the hardware by giving you functions to do things at a high level

UART

- TX = transmit, RX = receive. Obviosuly need to flip that for the other end
- Baud rate = amount of bits/s to send
- Word length = minimum amount of bits to send, packet size

Open drain = normally low. Often used to avoid collisions from multiple devices trying to use the line at once. If both try to pull high, no problems

I2C (inter-integrated circuit)

- intergrated circuit (IC) = chips, inter = communication between them

- 2 wires: one for serial data (SDA) one for serial clock (SCL)
  
  - Open drain (normally low) so pulled high using pull up resistors. Lower resistance for higher speeds to change voltage quicker due to tao=RC. Lower resistance = higher power draw/wasted.

- Multi-master: a master is the one that asks the slave to do something. typically a mcu. there can be multiple masters on the same line. so multiple mcus can get data from one slave

- Multi-slave: a slave does the requested action. typically a sensor like the RTC. there can be multiple slaves on the same line. so an mcu can get data from multiple slaves

- Built in collision detection to be able to do ^

- Synchronous: the ICs share a clock line so they are synchronized

- Bidirectional: the data line can be used to read and write so goes both ways
  
  - Half-duplex: we can only write or read on the data line at a time. not both at the same time

- Serial communication: one bit is sent at a time. as oppose to something like 1 byte at a time.

- Each component using I2C typically has how to use I2C in it, as there is no official standard

- First send 8 bits, first 7 bits = device you want to talk to and then 1 bit for read (1) or write (0)

- Often the device you're talking to has a register pointer for its memory and when you ask to receive it gives you data in that place, also often incremented after reading. You can set it by transmitting the address you want in one

SPI (serial communication protocol)

- One master many slaves
  - Each slave can only have one master
  - A master can have multiple slaves and interact which each by having a dedicated chip/slave select pin for each (so they don't need a dedicated address each like I2C)
- Synchronous (has a shared clock signal)
- (Can be) Full duplex
  - Data can be read and written at the same time by using both the MOSI and MISO lines at the same time
    Pins:
- MISO: master in slave out
- MOSI: master out slave in
- SCK: serial clock
- !SS/CS: chip select
  SPI is not standardized so there are some things to watch out for like clock polarity and when to sample. To figure out how I had to configure the project and to see how I was going to communicate with the screen I pulled up the documentation. The english isn't always great and some of the images are quite blurry but I can work with it. This screen has color unlike the final one and it has a driver board which is mostly passive components, a Bidirectional Voltage-Level Translator which lets communication happen through wires with different voltages (I don't believe I need this on my final board as I will only use the screen driving voltage of 3.3V) and a eeprom. They provide example code for a stm32 board however they warn some boards might not have enough storage so some settings might need to be adjusted. However first I need to solder some wires as the driver comes with jst connector but my corresponding female wire only has bare wires at the end and doubled up wires through soldering. Didn't have brown, orange or purple so I had to take it from a rainbow connector.

```cpp
#ifndef XXX
#define XXX

//body

#endif /* XXX */
```

Makes it so if multiple files include this one it will only be included/pasted once. The final line has a comment to know which `endif` corresponds to which `ifndef`

When putting board to sleep mode with wake on any interrupt. Disable ticks which interrupt every millisecond. Not needed with more aggressive sleep modes which don't let code run.
