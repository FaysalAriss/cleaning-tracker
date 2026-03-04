################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../MyDrivers/Eink/Fonts/font12.c \
../MyDrivers/Eink/Fonts/font16.c \
../MyDrivers/Eink/Fonts/font20.c \
../MyDrivers/Eink/Fonts/font24.c \
../MyDrivers/Eink/Fonts/font8.c 

OBJS += \
./MyDrivers/Eink/Fonts/font12.o \
./MyDrivers/Eink/Fonts/font16.o \
./MyDrivers/Eink/Fonts/font20.o \
./MyDrivers/Eink/Fonts/font24.o \
./MyDrivers/Eink/Fonts/font8.o 

C_DEPS += \
./MyDrivers/Eink/Fonts/font12.d \
./MyDrivers/Eink/Fonts/font16.d \
./MyDrivers/Eink/Fonts/font20.d \
./MyDrivers/Eink/Fonts/font24.d \
./MyDrivers/Eink/Fonts/font8.d 


# Each subdirectory must supply rules for building sources it contributes
MyDrivers/Eink/Fonts/%.o MyDrivers/Eink/Fonts/%.su MyDrivers/Eink/Fonts/%.cyclo: ../MyDrivers/Eink/Fonts/%.c MyDrivers/Eink/Fonts/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F401xC -c -I../Inc -I../MyDrivers/Eink/GUI -I../MyDrivers/Eink/UI -I../MyDrivers/Eink/Examples -I../MyDrivers/Eink/e-Paper -I../MyDrivers/Eink/Fonts -I../MyDrivers/Eink/Config -I../MyDrivers/RTC/ -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-MyDrivers-2f-Eink-2f-Fonts

clean-MyDrivers-2f-Eink-2f-Fonts:
	-$(RM) ./MyDrivers/Eink/Fonts/font12.cyclo ./MyDrivers/Eink/Fonts/font12.d ./MyDrivers/Eink/Fonts/font12.o ./MyDrivers/Eink/Fonts/font12.su ./MyDrivers/Eink/Fonts/font16.cyclo ./MyDrivers/Eink/Fonts/font16.d ./MyDrivers/Eink/Fonts/font16.o ./MyDrivers/Eink/Fonts/font16.su ./MyDrivers/Eink/Fonts/font20.cyclo ./MyDrivers/Eink/Fonts/font20.d ./MyDrivers/Eink/Fonts/font20.o ./MyDrivers/Eink/Fonts/font20.su ./MyDrivers/Eink/Fonts/font24.cyclo ./MyDrivers/Eink/Fonts/font24.d ./MyDrivers/Eink/Fonts/font24.o ./MyDrivers/Eink/Fonts/font24.su ./MyDrivers/Eink/Fonts/font8.cyclo ./MyDrivers/Eink/Fonts/font8.d ./MyDrivers/Eink/Fonts/font8.o ./MyDrivers/Eink/Fonts/font8.su

.PHONY: clean-MyDrivers-2f-Eink-2f-Fonts

