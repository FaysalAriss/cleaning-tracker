################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/Eink/e-Paper/EPD_4in0e.c 

OBJS += \
./Drivers/Eink/e-Paper/EPD_4in0e.o 

C_DEPS += \
./Drivers/Eink/e-Paper/EPD_4in0e.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/Eink/e-Paper/%.o Drivers/Eink/e-Paper/%.su Drivers/Eink/e-Paper/%.cyclo: ../Drivers/Eink/e-Paper/%.c Drivers/Eink/e-Paper/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F401xC -c -I../Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../Drivers/Eink/Examples -I../Drivers/Eink/Fonts -I../Drivers/Eink/e-Paper -I../Drivers/Eink/GUI -I../Drivers/Eink/Config -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers-2f-Eink-2f-e-2d-Paper

clean-Drivers-2f-Eink-2f-e-2d-Paper:
	-$(RM) ./Drivers/Eink/e-Paper/EPD_4in0e.cyclo ./Drivers/Eink/e-Paper/EPD_4in0e.d ./Drivers/Eink/e-Paper/EPD_4in0e.o ./Drivers/Eink/e-Paper/EPD_4in0e.su

.PHONY: clean-Drivers-2f-Eink-2f-e-2d-Paper

