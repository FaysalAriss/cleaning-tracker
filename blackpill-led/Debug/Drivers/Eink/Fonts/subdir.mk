################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/Eink/Fonts/font12.c \
../Drivers/Eink/Fonts/font12CN.c \
../Drivers/Eink/Fonts/font16.c \
../Drivers/Eink/Fonts/font20.c \
../Drivers/Eink/Fonts/font24.c \
../Drivers/Eink/Fonts/font24CN.c \
../Drivers/Eink/Fonts/font8.c 

OBJS += \
./Drivers/Eink/Fonts/font12.o \
./Drivers/Eink/Fonts/font12CN.o \
./Drivers/Eink/Fonts/font16.o \
./Drivers/Eink/Fonts/font20.o \
./Drivers/Eink/Fonts/font24.o \
./Drivers/Eink/Fonts/font24CN.o \
./Drivers/Eink/Fonts/font8.o 

C_DEPS += \
./Drivers/Eink/Fonts/font12.d \
./Drivers/Eink/Fonts/font12CN.d \
./Drivers/Eink/Fonts/font16.d \
./Drivers/Eink/Fonts/font20.d \
./Drivers/Eink/Fonts/font24.d \
./Drivers/Eink/Fonts/font24CN.d \
./Drivers/Eink/Fonts/font8.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/Eink/Fonts/%.o Drivers/Eink/Fonts/%.su Drivers/Eink/Fonts/%.cyclo: ../Drivers/Eink/Fonts/%.c Drivers/Eink/Fonts/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F401xC -c -I../Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../Drivers/Eink/Examples -I../Drivers/Eink/Fonts -I../Drivers/Eink/e-Paper -I../Drivers/Eink/GUI -I../Drivers/Eink/Config -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers-2f-Eink-2f-Fonts

clean-Drivers-2f-Eink-2f-Fonts:
	-$(RM) ./Drivers/Eink/Fonts/font12.cyclo ./Drivers/Eink/Fonts/font12.d ./Drivers/Eink/Fonts/font12.o ./Drivers/Eink/Fonts/font12.su ./Drivers/Eink/Fonts/font12CN.cyclo ./Drivers/Eink/Fonts/font12CN.d ./Drivers/Eink/Fonts/font12CN.o ./Drivers/Eink/Fonts/font12CN.su ./Drivers/Eink/Fonts/font16.cyclo ./Drivers/Eink/Fonts/font16.d ./Drivers/Eink/Fonts/font16.o ./Drivers/Eink/Fonts/font16.su ./Drivers/Eink/Fonts/font20.cyclo ./Drivers/Eink/Fonts/font20.d ./Drivers/Eink/Fonts/font20.o ./Drivers/Eink/Fonts/font20.su ./Drivers/Eink/Fonts/font24.cyclo ./Drivers/Eink/Fonts/font24.d ./Drivers/Eink/Fonts/font24.o ./Drivers/Eink/Fonts/font24.su ./Drivers/Eink/Fonts/font24CN.cyclo ./Drivers/Eink/Fonts/font24CN.d ./Drivers/Eink/Fonts/font24CN.o ./Drivers/Eink/Fonts/font24CN.su ./Drivers/Eink/Fonts/font8.cyclo ./Drivers/Eink/Fonts/font8.d ./Drivers/Eink/Fonts/font8.o ./Drivers/Eink/Fonts/font8.su

.PHONY: clean-Drivers-2f-Eink-2f-Fonts

