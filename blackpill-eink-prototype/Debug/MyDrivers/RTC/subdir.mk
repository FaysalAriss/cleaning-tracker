################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../MyDrivers/RTC/ds_3231.c 

OBJS += \
./MyDrivers/RTC/ds_3231.o 

C_DEPS += \
./MyDrivers/RTC/ds_3231.d 


# Each subdirectory must supply rules for building sources it contributes
MyDrivers/RTC/%.o MyDrivers/RTC/%.su MyDrivers/RTC/%.cyclo: ../MyDrivers/RTC/%.c MyDrivers/RTC/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F401xC -c -I../Inc -I../MyDrivers/Eink/GUI -I../MyDrivers/Eink/UI -I../MyDrivers/Eink/Examples -I../MyDrivers/Eink/e-Paper -I../MyDrivers/Eink/Fonts -I../MyDrivers/Eink/Config -I../MyDrivers/RTC/ -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-MyDrivers-2f-RTC

clean-MyDrivers-2f-RTC:
	-$(RM) ./MyDrivers/RTC/ds_3231.cyclo ./MyDrivers/RTC/ds_3231.d ./MyDrivers/RTC/ds_3231.o ./MyDrivers/RTC/ds_3231.su

.PHONY: clean-MyDrivers-2f-RTC

