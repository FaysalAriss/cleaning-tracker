################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../MyDrivers/Eink/GUI/GUI_Paint.c 

OBJS += \
./MyDrivers/Eink/GUI/GUI_Paint.o 

C_DEPS += \
./MyDrivers/Eink/GUI/GUI_Paint.d 


# Each subdirectory must supply rules for building sources it contributes
MyDrivers/Eink/GUI/%.o MyDrivers/Eink/GUI/%.su MyDrivers/Eink/GUI/%.cyclo: ../MyDrivers/Eink/GUI/%.c MyDrivers/Eink/GUI/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F401xC -c -I../Inc -I../MyDrivers/Eink/GUI -I../MyDrivers/Eink/UI -I../MyDrivers/Eink/Examples -I../MyDrivers/Eink/e-Paper -I../MyDrivers/Eink/Fonts -I../MyDrivers/Eink/Config -I../MyDrivers/RTC/ -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-MyDrivers-2f-Eink-2f-GUI

clean-MyDrivers-2f-Eink-2f-GUI:
	-$(RM) ./MyDrivers/Eink/GUI/GUI_Paint.cyclo ./MyDrivers/Eink/GUI/GUI_Paint.d ./MyDrivers/Eink/GUI/GUI_Paint.o ./MyDrivers/Eink/GUI/GUI_Paint.su

.PHONY: clean-MyDrivers-2f-Eink-2f-GUI

