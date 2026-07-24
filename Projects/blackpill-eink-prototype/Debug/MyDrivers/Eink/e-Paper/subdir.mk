################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../MyDrivers/Eink/e-Paper/EPD_4in0e.c 

OBJS += \
./MyDrivers/Eink/e-Paper/EPD_4in0e.o 

C_DEPS += \
./MyDrivers/Eink/e-Paper/EPD_4in0e.d 


# Each subdirectory must supply rules for building sources it contributes
MyDrivers/Eink/e-Paper/%.o MyDrivers/Eink/e-Paper/%.su MyDrivers/Eink/e-Paper/%.cyclo: ../MyDrivers/Eink/e-Paper/%.c MyDrivers/Eink/e-Paper/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F401xC -c -I../Inc -I../MyDrivers/Eink/GUI -I../MyDrivers/Eink/UI -I../MyDrivers/Eink/Examples -I../MyDrivers/Eink/e-Paper -I../MyDrivers/Eink/Fonts -I../MyDrivers/Eink/Config -I../MyDrivers/RTC/ -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-MyDrivers-2f-Eink-2f-e-2d-Paper

clean-MyDrivers-2f-Eink-2f-e-2d-Paper:
	-$(RM) ./MyDrivers/Eink/e-Paper/EPD_4in0e.cyclo ./MyDrivers/Eink/e-Paper/EPD_4in0e.d ./MyDrivers/Eink/e-Paper/EPD_4in0e.o ./MyDrivers/Eink/e-Paper/EPD_4in0e.su

.PHONY: clean-MyDrivers-2f-Eink-2f-e-2d-Paper

