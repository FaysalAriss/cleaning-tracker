################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/EInk/Examples/EPD_4in0e_test.c \
../Drivers/EInk/Examples/ImageData.c 

OBJS += \
./Drivers/EInk/Examples/EPD_4in0e_test.o \
./Drivers/EInk/Examples/ImageData.o 

C_DEPS += \
./Drivers/EInk/Examples/EPD_4in0e_test.d \
./Drivers/EInk/Examples/ImageData.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/EInk/Examples/%.o Drivers/EInk/Examples/%.su Drivers/EInk/Examples/%.cyclo: ../Drivers/EInk/Examples/%.c Drivers/EInk/Examples/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F072xB -c -I../Drivers/EInk/GUI -I../Drivers/EInk/e-Paper -I../Drivers/EInk/Examples -I../Drivers/EInk/Fonts -I../Inc -I../Drivers/EInk/Config -I../Drivers/STM32F0xx_HAL_Driver/Inc -I../Drivers/STM32F0xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F0xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Drivers-2f-EInk-2f-Examples

clean-Drivers-2f-EInk-2f-Examples:
	-$(RM) ./Drivers/EInk/Examples/EPD_4in0e_test.cyclo ./Drivers/EInk/Examples/EPD_4in0e_test.d ./Drivers/EInk/Examples/EPD_4in0e_test.o ./Drivers/EInk/Examples/EPD_4in0e_test.su ./Drivers/EInk/Examples/ImageData.cyclo ./Drivers/EInk/Examples/ImageData.d ./Drivers/EInk/Examples/ImageData.o ./Drivers/EInk/Examples/ImageData.su

.PHONY: clean-Drivers-2f-EInk-2f-Examples

