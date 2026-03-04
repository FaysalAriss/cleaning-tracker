################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../MyDrivers/Eink/Examples/EPD_4in0e_test.c \
../MyDrivers/Eink/Examples/ImageData.c 

OBJS += \
./MyDrivers/Eink/Examples/EPD_4in0e_test.o \
./MyDrivers/Eink/Examples/ImageData.o 

C_DEPS += \
./MyDrivers/Eink/Examples/EPD_4in0e_test.d \
./MyDrivers/Eink/Examples/ImageData.d 


# Each subdirectory must supply rules for building sources it contributes
MyDrivers/Eink/Examples/EPD_4in0e_test.o: ../MyDrivers/Eink/Examples/EPD_4in0e_test.c MyDrivers/Eink/Examples/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F401xC -c -I../Inc -I../MyDrivers/Eink/UI -I../MyDrivers/Eink/Config -I../MyDrivers/Eink/Examples -I../MyDrivers/Eink/e-Paper -I../MyDrivers/Eink/Fonts -I../MyDrivers/Eink/GUI -I../MyDrivers/RTC/ -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
MyDrivers/Eink/Examples/%.o MyDrivers/Eink/Examples/%.su MyDrivers/Eink/Examples/%.cyclo: ../MyDrivers/Eink/Examples/%.c MyDrivers/Eink/Examples/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F401xC -c -I../Inc -I../MyDrivers/Eink/GUI -I../MyDrivers/Eink/UI -I../MyDrivers/Eink/Examples -I../MyDrivers/Eink/e-Paper -I../MyDrivers/Eink/Fonts -I../MyDrivers/Eink/Config -I../MyDrivers/RTC/ -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-MyDrivers-2f-Eink-2f-Examples

clean-MyDrivers-2f-Eink-2f-Examples:
	-$(RM) ./MyDrivers/Eink/Examples/EPD_4in0e_test.cyclo ./MyDrivers/Eink/Examples/EPD_4in0e_test.d ./MyDrivers/Eink/Examples/EPD_4in0e_test.o ./MyDrivers/Eink/Examples/EPD_4in0e_test.su ./MyDrivers/Eink/Examples/ImageData.cyclo ./MyDrivers/Eink/Examples/ImageData.d ./MyDrivers/Eink/Examples/ImageData.o ./MyDrivers/Eink/Examples/ImageData.su

.PHONY: clean-MyDrivers-2f-Eink-2f-Examples

