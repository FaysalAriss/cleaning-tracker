################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (14.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../MyDrivers/EPD/GUI/GUI_Paint.c 

OBJS += \
./MyDrivers/EPD/GUI/GUI_Paint.o 

C_DEPS += \
./MyDrivers/EPD/GUI/GUI_Paint.d 


# Each subdirectory must supply rules for building sources it contributes
MyDrivers/EPD/GUI/%.o MyDrivers/EPD/GUI/%.su MyDrivers/EPD/GUI/%.cyclo: ../MyDrivers/EPD/GUI/%.c MyDrivers/EPD/GUI/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0plus -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32U073xx -c -I../Inc -I../Drivers/STM32U0xx_HAL_Driver/Inc -I../Drivers/STM32U0xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32U0xx/Include -I../Drivers/CMSIS/Include -I../MyDrivers/EPD/EPD -I../MyDrivers/EPD/Fonts -I../MyDrivers/EPD/GUI -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-MyDrivers-2f-EPD-2f-GUI

clean-MyDrivers-2f-EPD-2f-GUI:
	-$(RM) ./MyDrivers/EPD/GUI/GUI_Paint.cyclo ./MyDrivers/EPD/GUI/GUI_Paint.d ./MyDrivers/EPD/GUI/GUI_Paint.o ./MyDrivers/EPD/GUI/GUI_Paint.su

.PHONY: clean-MyDrivers-2f-EPD-2f-GUI

