################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../MyDrivers/Eink/Config/DEV_Config.c 

OBJS += \
./MyDrivers/Eink/Config/DEV_Config.o 

C_DEPS += \
./MyDrivers/Eink/Config/DEV_Config.d 


# Each subdirectory must supply rules for building sources it contributes
MyDrivers/Eink/Config/%.o MyDrivers/Eink/Config/%.su MyDrivers/Eink/Config/%.cyclo: ../MyDrivers/Eink/Config/%.c MyDrivers/Eink/Config/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F401xC -c -I../Inc -I../MyDrivers/Eink/GUI -I../MyDrivers/Eink/UI -I../MyDrivers/Eink/Examples -I../MyDrivers/Eink/e-Paper -I../MyDrivers/Eink/Fonts -I../MyDrivers/Eink/Config -I../MyDrivers/RTC/ -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-MyDrivers-2f-Eink-2f-Config

clean-MyDrivers-2f-Eink-2f-Config:
	-$(RM) ./MyDrivers/Eink/Config/DEV_Config.cyclo ./MyDrivers/Eink/Config/DEV_Config.d ./MyDrivers/Eink/Config/DEV_Config.o ./MyDrivers/Eink/Config/DEV_Config.su

.PHONY: clean-MyDrivers-2f-Eink-2f-Config

