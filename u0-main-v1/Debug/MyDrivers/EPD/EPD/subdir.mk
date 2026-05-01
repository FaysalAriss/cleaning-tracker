################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../MyDrivers/EPD/EPD/Display_EPD_W21.c \
../MyDrivers/EPD/EPD/Display_EPD_W21_spi.c 

OBJS += \
./MyDrivers/EPD/EPD/Display_EPD_W21.o \
./MyDrivers/EPD/EPD/Display_EPD_W21_spi.o 

C_DEPS += \
./MyDrivers/EPD/EPD/Display_EPD_W21.d \
./MyDrivers/EPD/EPD/Display_EPD_W21_spi.d 


# Each subdirectory must supply rules for building sources it contributes
MyDrivers/EPD/EPD/%.o MyDrivers/EPD/EPD/%.su MyDrivers/EPD/EPD/%.cyclo: ../MyDrivers/EPD/EPD/%.c MyDrivers/EPD/EPD/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0plus -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32U073xx -c -I../Inc -I../Drivers/STM32U0xx_HAL_Driver/Inc -I../Drivers/STM32U0xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32U0xx/Include -I../Drivers/CMSIS/Include -I../MyDrivers/EPD/EPD -I../MyDrivers/EPD/Fonts -I../MyDrivers/EPD/GUI -I../MyDrivers/RTC -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-MyDrivers-2f-EPD-2f-EPD

clean-MyDrivers-2f-EPD-2f-EPD:
	-$(RM) ./MyDrivers/EPD/EPD/Display_EPD_W21.cyclo ./MyDrivers/EPD/EPD/Display_EPD_W21.d ./MyDrivers/EPD/EPD/Display_EPD_W21.o ./MyDrivers/EPD/EPD/Display_EPD_W21.su ./MyDrivers/EPD/EPD/Display_EPD_W21_spi.cyclo ./MyDrivers/EPD/EPD/Display_EPD_W21_spi.d ./MyDrivers/EPD/EPD/Display_EPD_W21_spi.o ./MyDrivers/EPD/EPD/Display_EPD_W21_spi.su

.PHONY: clean-MyDrivers-2f-EPD-2f-EPD

