################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/EInk/GUI/GUI_Paint.c 

OBJS += \
./Drivers/EInk/GUI/GUI_Paint.o 

C_DEPS += \
./Drivers/EInk/GUI/GUI_Paint.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/EInk/GUI/%.o Drivers/EInk/GUI/%.su Drivers/EInk/GUI/%.cyclo: ../Drivers/EInk/GUI/%.c Drivers/EInk/GUI/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F072xB -c -I../Drivers/EInk/GUI -I../Drivers/EInk/e-Paper -I../Drivers/EInk/Examples -I../Drivers/EInk/Fonts -I../Inc -I../Drivers/EInk/Config -I../Drivers/STM32F0xx_HAL_Driver/Inc -I../Drivers/STM32F0xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F0xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Drivers-2f-EInk-2f-GUI

clean-Drivers-2f-EInk-2f-GUI:
	-$(RM) ./Drivers/EInk/GUI/GUI_Paint.cyclo ./Drivers/EInk/GUI/GUI_Paint.d ./Drivers/EInk/GUI/GUI_Paint.o ./Drivers/EInk/GUI/GUI_Paint.su

.PHONY: clean-Drivers-2f-EInk-2f-GUI

