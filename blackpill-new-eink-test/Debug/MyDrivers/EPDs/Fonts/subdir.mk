################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../MyDrivers/EPDs/Fonts/font12.c \
../MyDrivers/EPDs/Fonts/font12CN.c \
../MyDrivers/EPDs/Fonts/font16.c \
../MyDrivers/EPDs/Fonts/font20.c \
../MyDrivers/EPDs/Fonts/font24.c \
../MyDrivers/EPDs/Fonts/font24CN.c \
../MyDrivers/EPDs/Fonts/font8.c 

OBJS += \
./MyDrivers/EPDs/Fonts/font12.o \
./MyDrivers/EPDs/Fonts/font12CN.o \
./MyDrivers/EPDs/Fonts/font16.o \
./MyDrivers/EPDs/Fonts/font20.o \
./MyDrivers/EPDs/Fonts/font24.o \
./MyDrivers/EPDs/Fonts/font24CN.o \
./MyDrivers/EPDs/Fonts/font8.o 

C_DEPS += \
./MyDrivers/EPDs/Fonts/font12.d \
./MyDrivers/EPDs/Fonts/font12CN.d \
./MyDrivers/EPDs/Fonts/font16.d \
./MyDrivers/EPDs/Fonts/font20.d \
./MyDrivers/EPDs/Fonts/font24.d \
./MyDrivers/EPDs/Fonts/font24CN.d \
./MyDrivers/EPDs/Fonts/font8.d 


# Each subdirectory must supply rules for building sources it contributes
MyDrivers/EPDs/Fonts/%.o MyDrivers/EPDs/Fonts/%.su MyDrivers/EPDs/Fonts/%.cyclo: ../MyDrivers/EPDs/Fonts/%.c MyDrivers/EPDs/Fonts/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F401xC -c -I../Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../MyDrivers/EPDs/Fonts -I../MyDrivers/EPDs/EPD -I../MyDrivers/EPDs/GUI -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-MyDrivers-2f-EPDs-2f-Fonts

clean-MyDrivers-2f-EPDs-2f-Fonts:
	-$(RM) ./MyDrivers/EPDs/Fonts/font12.cyclo ./MyDrivers/EPDs/Fonts/font12.d ./MyDrivers/EPDs/Fonts/font12.o ./MyDrivers/EPDs/Fonts/font12.su ./MyDrivers/EPDs/Fonts/font12CN.cyclo ./MyDrivers/EPDs/Fonts/font12CN.d ./MyDrivers/EPDs/Fonts/font12CN.o ./MyDrivers/EPDs/Fonts/font12CN.su ./MyDrivers/EPDs/Fonts/font16.cyclo ./MyDrivers/EPDs/Fonts/font16.d ./MyDrivers/EPDs/Fonts/font16.o ./MyDrivers/EPDs/Fonts/font16.su ./MyDrivers/EPDs/Fonts/font20.cyclo ./MyDrivers/EPDs/Fonts/font20.d ./MyDrivers/EPDs/Fonts/font20.o ./MyDrivers/EPDs/Fonts/font20.su ./MyDrivers/EPDs/Fonts/font24.cyclo ./MyDrivers/EPDs/Fonts/font24.d ./MyDrivers/EPDs/Fonts/font24.o ./MyDrivers/EPDs/Fonts/font24.su ./MyDrivers/EPDs/Fonts/font24CN.cyclo ./MyDrivers/EPDs/Fonts/font24CN.d ./MyDrivers/EPDs/Fonts/font24CN.o ./MyDrivers/EPDs/Fonts/font24CN.su ./MyDrivers/EPDs/Fonts/font8.cyclo ./MyDrivers/EPDs/Fonts/font8.d ./MyDrivers/EPDs/Fonts/font8.o ./MyDrivers/EPDs/Fonts/font8.su

.PHONY: clean-MyDrivers-2f-EPDs-2f-Fonts

