################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/Eink/GUI/GUI_Paint.c 

OBJS += \
./Drivers/Eink/GUI/GUI_Paint.o 

C_DEPS += \
./Drivers/Eink/GUI/GUI_Paint.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/Eink/GUI/%.o Drivers/Eink/GUI/%.su Drivers/Eink/GUI/%.cyclo: ../Drivers/Eink/GUI/%.c Drivers/Eink/GUI/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F401xC -c -I../Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../Drivers/Eink/Examples -I../Drivers/Eink/Fonts -I../Drivers/Eink/e-Paper -I../Drivers/Eink/GUI -I../Drivers/Eink/Config -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers-2f-Eink-2f-GUI

clean-Drivers-2f-Eink-2f-GUI:
	-$(RM) ./Drivers/Eink/GUI/GUI_Paint.cyclo ./Drivers/Eink/GUI/GUI_Paint.d ./Drivers/Eink/GUI/GUI_Paint.o ./Drivers/Eink/GUI/GUI_Paint.su

.PHONY: clean-Drivers-2f-Eink-2f-GUI

