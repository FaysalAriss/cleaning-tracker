################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../MyDrivers/EPDs/GUI/GUI_Paint.c 

OBJS += \
./MyDrivers/EPDs/GUI/GUI_Paint.o 

C_DEPS += \
./MyDrivers/EPDs/GUI/GUI_Paint.d 


# Each subdirectory must supply rules for building sources it contributes
MyDrivers/EPDs/GUI/%.o MyDrivers/EPDs/GUI/%.su MyDrivers/EPDs/GUI/%.cyclo: ../MyDrivers/EPDs/GUI/%.c MyDrivers/EPDs/GUI/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F401xC -c -I../Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../MyDrivers/EPDs/Fonts -I../MyDrivers/EPDs/EPD -I../MyDrivers/EPDs/GUI -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-MyDrivers-2f-EPDs-2f-GUI

clean-MyDrivers-2f-EPDs-2f-GUI:
	-$(RM) ./MyDrivers/EPDs/GUI/GUI_Paint.cyclo ./MyDrivers/EPDs/GUI/GUI_Paint.d ./MyDrivers/EPDs/GUI/GUI_Paint.o ./MyDrivers/EPDs/GUI/GUI_Paint.su

.PHONY: clean-MyDrivers-2f-EPDs-2f-GUI

