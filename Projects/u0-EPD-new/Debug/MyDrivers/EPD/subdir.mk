################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (14.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../MyDrivers/EPD/GDEY037T03.c 

OBJS += \
./MyDrivers/EPD/GDEY037T03.o 

C_DEPS += \
./MyDrivers/EPD/GDEY037T03.d 


# Each subdirectory must supply rules for building sources it contributes
MyDrivers/EPD/%.o MyDrivers/EPD/%.su MyDrivers/EPD/%.cyclo: ../MyDrivers/EPD/%.c MyDrivers/EPD/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0plus -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32U073xx -c -I../Inc -I../Drivers/STM32U0xx_HAL_Driver/Inc -I../Drivers/STM32U0xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32U0xx/Include -I../Drivers/CMSIS/Include -I../MyDrivers/General -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-MyDrivers-2f-EPD

clean-MyDrivers-2f-EPD:
	-$(RM) ./MyDrivers/EPD/GDEY037T03.cyclo ./MyDrivers/EPD/GDEY037T03.d ./MyDrivers/EPD/GDEY037T03.o ./MyDrivers/EPD/GDEY037T03.su

.PHONY: clean-MyDrivers-2f-EPD

