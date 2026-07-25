Make sure ON: CubeMX > Project Manager > Code Generator > Set all free pins as analog (to optimize the power consumption)

Shift 7 bit I2C address left before using it in HAL I2C functions

There is one interrupt callback function for all pins and ot gives you which pin so you can just use if/switch to check for your pin then call your specific function. Gives you the interrupt pin number which is separate from the pin number that's tied with the port. Can find it in pin configuration will say something like "GPIO_EXTIXX" where XX is the number.

Measure power without stlink connected at all or else will make a big influence on the measurement

Check power flags if board won't go to sleep. Need to reset them on wakeup.

Need to enable specific pins for wakeup when going to deep sleep.

Might want to try using DMA for eink

Add interfacing with RTC (write/read in one go 03-02)

If hanging on HAL_Delay when trying to use it in the ISR then your interrupt is higher priority than the tick interrupt so it never gets handled.
