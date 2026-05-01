################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../MyDrivers/EPD/Fonts/font12.c \
../MyDrivers/EPD/Fonts/font12CN.c \
../MyDrivers/EPD/Fonts/font16.c \
../MyDrivers/EPD/Fonts/font20.c \
../MyDrivers/EPD/Fonts/font24.c \
../MyDrivers/EPD/Fonts/font24CN.c \
../MyDrivers/EPD/Fonts/font8.c 

OBJS += \
./MyDrivers/EPD/Fonts/font12.o \
./MyDrivers/EPD/Fonts/font12CN.o \
./MyDrivers/EPD/Fonts/font16.o \
./MyDrivers/EPD/Fonts/font20.o \
./MyDrivers/EPD/Fonts/font24.o \
./MyDrivers/EPD/Fonts/font24CN.o \
./MyDrivers/EPD/Fonts/font8.o 

C_DEPS += \
./MyDrivers/EPD/Fonts/font12.d \
./MyDrivers/EPD/Fonts/font12CN.d \
./MyDrivers/EPD/Fonts/font16.d \
./MyDrivers/EPD/Fonts/font20.d \
./MyDrivers/EPD/Fonts/font24.d \
./MyDrivers/EPD/Fonts/font24CN.d \
./MyDrivers/EPD/Fonts/font8.d 


# Each subdirectory must supply rules for building sources it contributes
MyDrivers/EPD/Fonts/%.o MyDrivers/EPD/Fonts/%.su MyDrivers/EPD/Fonts/%.cyclo: ../MyDrivers/EPD/Fonts/%.c MyDrivers/EPD/Fonts/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0plus -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32U073xx -c -I../Inc -I../Drivers/STM32U0xx_HAL_Driver/Inc -I../Drivers/STM32U0xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32U0xx/Include -I../Drivers/CMSIS/Include -I../MyDrivers/EPD/EPD -I../MyDrivers/EPD/Fonts -I../MyDrivers/EPD/GUI -I../MyDrivers/RTC -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-MyDrivers-2f-EPD-2f-Fonts

clean-MyDrivers-2f-EPD-2f-Fonts:
	-$(RM) ./MyDrivers/EPD/Fonts/font12.cyclo ./MyDrivers/EPD/Fonts/font12.d ./MyDrivers/EPD/Fonts/font12.o ./MyDrivers/EPD/Fonts/font12.su ./MyDrivers/EPD/Fonts/font12CN.cyclo ./MyDrivers/EPD/Fonts/font12CN.d ./MyDrivers/EPD/Fonts/font12CN.o ./MyDrivers/EPD/Fonts/font12CN.su ./MyDrivers/EPD/Fonts/font16.cyclo ./MyDrivers/EPD/Fonts/font16.d ./MyDrivers/EPD/Fonts/font16.o ./MyDrivers/EPD/Fonts/font16.su ./MyDrivers/EPD/Fonts/font20.cyclo ./MyDrivers/EPD/Fonts/font20.d ./MyDrivers/EPD/Fonts/font20.o ./MyDrivers/EPD/Fonts/font20.su ./MyDrivers/EPD/Fonts/font24.cyclo ./MyDrivers/EPD/Fonts/font24.d ./MyDrivers/EPD/Fonts/font24.o ./MyDrivers/EPD/Fonts/font24.su ./MyDrivers/EPD/Fonts/font24CN.cyclo ./MyDrivers/EPD/Fonts/font24CN.d ./MyDrivers/EPD/Fonts/font24CN.o ./MyDrivers/EPD/Fonts/font24CN.su ./MyDrivers/EPD/Fonts/font8.cyclo ./MyDrivers/EPD/Fonts/font8.d ./MyDrivers/EPD/Fonts/font8.o ./MyDrivers/EPD/Fonts/font8.su

.PHONY: clean-MyDrivers-2f-EPD-2f-Fonts

