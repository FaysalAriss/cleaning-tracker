################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/EInk/Fonts/font12.c \
../Drivers/EInk/Fonts/font12CN.c \
../Drivers/EInk/Fonts/font16.c \
../Drivers/EInk/Fonts/font20.c \
../Drivers/EInk/Fonts/font24.c \
../Drivers/EInk/Fonts/font24CN.c \
../Drivers/EInk/Fonts/font8.c 

OBJS += \
./Drivers/EInk/Fonts/font12.o \
./Drivers/EInk/Fonts/font12CN.o \
./Drivers/EInk/Fonts/font16.o \
./Drivers/EInk/Fonts/font20.o \
./Drivers/EInk/Fonts/font24.o \
./Drivers/EInk/Fonts/font24CN.o \
./Drivers/EInk/Fonts/font8.o 

C_DEPS += \
./Drivers/EInk/Fonts/font12.d \
./Drivers/EInk/Fonts/font12CN.d \
./Drivers/EInk/Fonts/font16.d \
./Drivers/EInk/Fonts/font20.d \
./Drivers/EInk/Fonts/font24.d \
./Drivers/EInk/Fonts/font24CN.d \
./Drivers/EInk/Fonts/font8.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/EInk/Fonts/%.o Drivers/EInk/Fonts/%.su Drivers/EInk/Fonts/%.cyclo: ../Drivers/EInk/Fonts/%.c Drivers/EInk/Fonts/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F072xB -c -I../Drivers/EInk/GUI -I../Drivers/EInk/e-Paper -I../Drivers/EInk/Examples -I../Drivers/EInk/Fonts -I../Inc -I../Drivers/EInk/Config -I../Drivers/STM32F0xx_HAL_Driver/Inc -I../Drivers/STM32F0xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F0xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Drivers-2f-EInk-2f-Fonts

clean-Drivers-2f-EInk-2f-Fonts:
	-$(RM) ./Drivers/EInk/Fonts/font12.cyclo ./Drivers/EInk/Fonts/font12.d ./Drivers/EInk/Fonts/font12.o ./Drivers/EInk/Fonts/font12.su ./Drivers/EInk/Fonts/font12CN.cyclo ./Drivers/EInk/Fonts/font12CN.d ./Drivers/EInk/Fonts/font12CN.o ./Drivers/EInk/Fonts/font12CN.su ./Drivers/EInk/Fonts/font16.cyclo ./Drivers/EInk/Fonts/font16.d ./Drivers/EInk/Fonts/font16.o ./Drivers/EInk/Fonts/font16.su ./Drivers/EInk/Fonts/font20.cyclo ./Drivers/EInk/Fonts/font20.d ./Drivers/EInk/Fonts/font20.o ./Drivers/EInk/Fonts/font20.su ./Drivers/EInk/Fonts/font24.cyclo ./Drivers/EInk/Fonts/font24.d ./Drivers/EInk/Fonts/font24.o ./Drivers/EInk/Fonts/font24.su ./Drivers/EInk/Fonts/font24CN.cyclo ./Drivers/EInk/Fonts/font24CN.d ./Drivers/EInk/Fonts/font24CN.o ./Drivers/EInk/Fonts/font24CN.su ./Drivers/EInk/Fonts/font8.cyclo ./Drivers/EInk/Fonts/font8.d ./Drivers/EInk/Fonts/font8.o ./Drivers/EInk/Fonts/font8.su

.PHONY: clean-Drivers-2f-EInk-2f-Fonts

