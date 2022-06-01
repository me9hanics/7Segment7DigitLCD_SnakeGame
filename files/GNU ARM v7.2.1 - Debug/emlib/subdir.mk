################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
E:/Simplicity\ studio/developer/sdks/gecko_sdk_suite/v2.7/platform/emlib/src/em_cmu.c \
../emlib/em_gpio.c \
E:/Simplicity\ studio/developer/sdks/gecko_sdk_suite/v2.7/platform/emlib/src/em_lcd.c \
E:/Simplicity\ studio/developer/sdks/gecko_sdk_suite/v2.7/platform/emlib/src/em_system.c 

OBJS += \
./emlib/em_cmu.o \
./emlib/em_gpio.o \
./emlib/em_lcd.o \
./emlib/em_system.o 

C_DEPS += \
./emlib/em_cmu.d \
./emlib/em_gpio.d \
./emlib/em_lcd.d \
./emlib/em_system.d 


# Each subdirectory must supply rules for building sources it contributes
emlib/em_cmu.o: E:/Simplicity\ studio/developer/sdks/gecko_sdk_suite/v2.7/platform/emlib/src/em_cmu.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m3 -mthumb -std=c99 '-DEFM32GG990F1024=1' -I"E:/Simplicity studio/developer/sdks/gecko_sdk_suite/v2.7//platform/CMSIS/Include" -I"E:/Simplicity studio/developer/sdks/gecko_sdk_suite/v2.7//hardware/kit/common/bsp" -I"E:/Simplicity studio/developer/sdks/gecko_sdk_suite/v2.7//platform/emlib/inc" -I"E:/Simplicity studio/developer/sdks/gecko_sdk_suite/v2.7//hardware/kit/common/drivers" -I"E:/Simplicity studio/developer/sdks/gecko_sdk_suite/v2.7//platform/Device/SiliconLabs/EFM32GG/Include" -I"E:/Simplicity studio/developer/sdks/gecko_sdk_suite/v2.7//hardware/kit/EFM32GG_STK3700/config" -I"E:\Simplicity studio\sajatworkspace\testCProjectLCD\BSP" -O0 -Wall -c -fmessage-length=0 -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -MMD -MP -MF"emlib/em_cmu.d" -MT"emlib/em_cmu.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

emlib/em_gpio.o: ../emlib/em_gpio.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m3 -mthumb -std=c99 '-DEFM32GG990F1024=1' -I"E:/Simplicity studio/developer/sdks/gecko_sdk_suite/v2.7//platform/CMSIS/Include" -I"E:/Simplicity studio/developer/sdks/gecko_sdk_suite/v2.7//hardware/kit/common/bsp" -I"E:/Simplicity studio/developer/sdks/gecko_sdk_suite/v2.7//platform/emlib/inc" -I"E:/Simplicity studio/developer/sdks/gecko_sdk_suite/v2.7//hardware/kit/common/drivers" -I"E:/Simplicity studio/developer/sdks/gecko_sdk_suite/v2.7//platform/Device/SiliconLabs/EFM32GG/Include" -I"E:/Simplicity studio/developer/sdks/gecko_sdk_suite/v2.7//hardware/kit/EFM32GG_STK3700/config" -I"E:\Simplicity studio\sajatworkspace\testCProjectLCD\BSP" -O0 -Wall -c -fmessage-length=0 -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -MMD -MP -MF"emlib/em_gpio.d" -MT"emlib/em_gpio.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

emlib/em_lcd.o: E:/Simplicity\ studio/developer/sdks/gecko_sdk_suite/v2.7/platform/emlib/src/em_lcd.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m3 -mthumb -std=c99 '-DEFM32GG990F1024=1' -I"E:/Simplicity studio/developer/sdks/gecko_sdk_suite/v2.7//platform/CMSIS/Include" -I"E:/Simplicity studio/developer/sdks/gecko_sdk_suite/v2.7//hardware/kit/common/bsp" -I"E:/Simplicity studio/developer/sdks/gecko_sdk_suite/v2.7//platform/emlib/inc" -I"E:/Simplicity studio/developer/sdks/gecko_sdk_suite/v2.7//hardware/kit/common/drivers" -I"E:/Simplicity studio/developer/sdks/gecko_sdk_suite/v2.7//platform/Device/SiliconLabs/EFM32GG/Include" -I"E:/Simplicity studio/developer/sdks/gecko_sdk_suite/v2.7//hardware/kit/EFM32GG_STK3700/config" -I"E:\Simplicity studio\sajatworkspace\testCProjectLCD\BSP" -O0 -Wall -c -fmessage-length=0 -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -MMD -MP -MF"emlib/em_lcd.d" -MT"emlib/em_lcd.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

emlib/em_system.o: E:/Simplicity\ studio/developer/sdks/gecko_sdk_suite/v2.7/platform/emlib/src/em_system.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m3 -mthumb -std=c99 '-DEFM32GG990F1024=1' -I"E:/Simplicity studio/developer/sdks/gecko_sdk_suite/v2.7//platform/CMSIS/Include" -I"E:/Simplicity studio/developer/sdks/gecko_sdk_suite/v2.7//hardware/kit/common/bsp" -I"E:/Simplicity studio/developer/sdks/gecko_sdk_suite/v2.7//platform/emlib/inc" -I"E:/Simplicity studio/developer/sdks/gecko_sdk_suite/v2.7//hardware/kit/common/drivers" -I"E:/Simplicity studio/developer/sdks/gecko_sdk_suite/v2.7//platform/Device/SiliconLabs/EFM32GG/Include" -I"E:/Simplicity studio/developer/sdks/gecko_sdk_suite/v2.7//hardware/kit/EFM32GG_STK3700/config" -I"E:\Simplicity studio\sajatworkspace\testCProjectLCD\BSP" -O0 -Wall -c -fmessage-length=0 -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -MMD -MP -MF"emlib/em_system.d" -MT"emlib/em_system.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


