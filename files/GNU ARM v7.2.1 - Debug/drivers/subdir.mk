################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
E:/Simplicity\ studio/developer/sdks/gecko_sdk_suite/v2.7/hardware/kit/common/drivers/segmentlcd.c 

OBJS += \
./drivers/segmentlcd.o 

C_DEPS += \
./drivers/segmentlcd.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/segmentlcd.o: E:/Simplicity\ studio/developer/sdks/gecko_sdk_suite/v2.7/hardware/kit/common/drivers/segmentlcd.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m3 -mthumb -std=c99 '-DEFM32GG990F1024=1' -I"E:/Simplicity studio/developer/sdks/gecko_sdk_suite/v2.7//platform/CMSIS/Include" -I"E:/Simplicity studio/developer/sdks/gecko_sdk_suite/v2.7//hardware/kit/common/bsp" -I"E:/Simplicity studio/developer/sdks/gecko_sdk_suite/v2.7//platform/emlib/inc" -I"E:/Simplicity studio/developer/sdks/gecko_sdk_suite/v2.7//hardware/kit/common/drivers" -I"E:/Simplicity studio/developer/sdks/gecko_sdk_suite/v2.7//platform/Device/SiliconLabs/EFM32GG/Include" -I"E:/Simplicity studio/developer/sdks/gecko_sdk_suite/v2.7//hardware/kit/EFM32GG_STK3700/config" -I"E:\Simplicity studio\sajatworkspace\testCProjectLCD\BSP" -O0 -Wall -c -fmessage-length=0 -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -MMD -MP -MF"drivers/segmentlcd.d" -MT"drivers/segmentlcd.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


