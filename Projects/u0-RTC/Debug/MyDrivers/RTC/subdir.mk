################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../MyDrivers/RTC/RV3028.c 

OBJS += \
./MyDrivers/RTC/RV3028.o 

C_DEPS += \
./MyDrivers/RTC/RV3028.d 


# Each subdirectory must supply rules for building sources it contributes
MyDrivers/RTC/%.o MyDrivers/RTC/%.su MyDrivers/RTC/%.cyclo: ../MyDrivers/RTC/%.c MyDrivers/RTC/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0plus -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32U073xx -c -I../Inc -I../Drivers/STM32U0xx_HAL_Driver/Inc -I../Drivers/STM32U0xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32U0xx/Include -I../Drivers/CMSIS/Include -I../MyDrivers/RTC -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-MyDrivers-2f-RTC

clean-MyDrivers-2f-RTC:
	-$(RM) ./MyDrivers/RTC/RV3028.cyclo ./MyDrivers/RTC/RV3028.d ./MyDrivers/RTC/RV3028.o ./MyDrivers/RTC/RV3028.su

.PHONY: clean-MyDrivers-2f-RTC

