################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../MyDrivers/EPDs/EPD/Display_EPD_W21.c \
../MyDrivers/EPDs/EPD/Display_EPD_W21_spi.c 

OBJS += \
./MyDrivers/EPDs/EPD/Display_EPD_W21.o \
./MyDrivers/EPDs/EPD/Display_EPD_W21_spi.o 

C_DEPS += \
./MyDrivers/EPDs/EPD/Display_EPD_W21.d \
./MyDrivers/EPDs/EPD/Display_EPD_W21_spi.d 


# Each subdirectory must supply rules for building sources it contributes
MyDrivers/EPDs/EPD/%.o MyDrivers/EPDs/EPD/%.su MyDrivers/EPDs/EPD/%.cyclo: ../MyDrivers/EPDs/EPD/%.c MyDrivers/EPDs/EPD/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F401xC -c -I../Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../MyDrivers/EPDs/Fonts -I../MyDrivers/EPDs/EPD -I../MyDrivers/EPDs/GUI -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-MyDrivers-2f-EPDs-2f-EPD

clean-MyDrivers-2f-EPDs-2f-EPD:
	-$(RM) ./MyDrivers/EPDs/EPD/Display_EPD_W21.cyclo ./MyDrivers/EPDs/EPD/Display_EPD_W21.d ./MyDrivers/EPDs/EPD/Display_EPD_W21.o ./MyDrivers/EPDs/EPD/Display_EPD_W21.su ./MyDrivers/EPDs/EPD/Display_EPD_W21_spi.cyclo ./MyDrivers/EPDs/EPD/Display_EPD_W21_spi.d ./MyDrivers/EPDs/EPD/Display_EPD_W21_spi.o ./MyDrivers/EPDs/EPD/Display_EPD_W21_spi.su

.PHONY: clean-MyDrivers-2f-EPDs-2f-EPD

