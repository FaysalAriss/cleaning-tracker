################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/Eink/Config/DEV_Config.c 

OBJS += \
./Drivers/Eink/Config/DEV_Config.o 

C_DEPS += \
./Drivers/Eink/Config/DEV_Config.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/Eink/Config/%.o Drivers/Eink/Config/%.su Drivers/Eink/Config/%.cyclo: ../Drivers/Eink/Config/%.c Drivers/Eink/Config/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F401xC -c -I../Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../Drivers/Eink/Examples -I../Drivers/Eink/Fonts -I../Drivers/Eink/e-Paper -I../Drivers/Eink/GUI -I../Drivers/Eink/Config -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers-2f-Eink-2f-Config

clean-Drivers-2f-Eink-2f-Config:
	-$(RM) ./Drivers/Eink/Config/DEV_Config.cyclo ./Drivers/Eink/Config/DEV_Config.d ./Drivers/Eink/Config/DEV_Config.o ./Drivers/Eink/Config/DEV_Config.su

.PHONY: clean-Drivers-2f-Eink-2f-Config

