################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../BSP/bsp_bcc.c \
../BSP/bsp_stk.c \
../BSP/bsp_stk_buttons.c \
../BSP/bsp_stk_leds.c \
../BSP/bsp_trace.c 

OBJS += \
./BSP/bsp_bcc.o \
./BSP/bsp_stk.o \
./BSP/bsp_stk_buttons.o \
./BSP/bsp_stk_leds.o \
./BSP/bsp_trace.o 

C_DEPS += \
./BSP/bsp_bcc.d \
./BSP/bsp_stk.d \
./BSP/bsp_stk_buttons.d \
./BSP/bsp_stk_leds.d \
./BSP/bsp_trace.d 


# Each subdirectory must supply rules for building sources it contributes
BSP/bsp_bcc.o: ../BSP/bsp_bcc.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m3 -mthumb -std=c99 '-DEFM32GG990F1024=1' -I"E:/Simplicity studio/developer/sdks/gecko_sdk_suite/v2.7//platform/CMSIS/Include" -I"E:/Simplicity studio/developer/sdks/gecko_sdk_suite/v2.7//hardware/kit/common/bsp" -I"E:/Simplicity studio/developer/sdks/gecko_sdk_suite/v2.7//platform/emlib/inc" -I"E:/Simplicity studio/developer/sdks/gecko_sdk_suite/v2.7//hardware/kit/common/drivers" -I"E:/Simplicity studio/developer/sdks/gecko_sdk_suite/v2.7//platform/Device/SiliconLabs/EFM32GG/Include" -I"E:/Simplicity studio/developer/sdks/gecko_sdk_suite/v2.7//hardware/kit/EFM32GG_STK3700/config" -I"E:\Simplicity studio\sajatworkspace\testCProjectLCD\BSP" -O0 -Wall -c -fmessage-length=0 -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -MMD -MP -MF"BSP/bsp_bcc.d" -MT"BSP/bsp_bcc.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

BSP/bsp_stk.o: ../BSP/bsp_stk.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m3 -mthumb -std=c99 '-DEFM32GG990F1024=1' -I"E:/Simplicity studio/developer/sdks/gecko_sdk_suite/v2.7//platform/CMSIS/Include" -I"E:/Simplicity studio/developer/sdks/gecko_sdk_suite/v2.7//hardware/kit/common/bsp" -I"E:/Simplicity studio/developer/sdks/gecko_sdk_suite/v2.7//platform/emlib/inc" -I"E:/Simplicity studio/developer/sdks/gecko_sdk_suite/v2.7//hardware/kit/common/drivers" -I"E:/Simplicity studio/developer/sdks/gecko_sdk_suite/v2.7//platform/Device/SiliconLabs/EFM32GG/Include" -I"E:/Simplicity studio/developer/sdks/gecko_sdk_suite/v2.7//hardware/kit/EFM32GG_STK3700/config" -I"E:\Simplicity studio\sajatworkspace\testCProjectLCD\BSP" -O0 -Wall -c -fmessage-length=0 -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -MMD -MP -MF"BSP/bsp_stk.d" -MT"BSP/bsp_stk.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

BSP/bsp_stk_buttons.o: ../BSP/bsp_stk_buttons.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m3 -mthumb -std=c99 '-DEFM32GG990F1024=1' -I"E:/Simplicity studio/developer/sdks/gecko_sdk_suite/v2.7//platform/CMSIS/Include" -I"E:/Simplicity studio/developer/sdks/gecko_sdk_suite/v2.7//hardware/kit/common/bsp" -I"E:/Simplicity studio/developer/sdks/gecko_sdk_suite/v2.7//platform/emlib/inc" -I"E:/Simplicity studio/developer/sdks/gecko_sdk_suite/v2.7//hardware/kit/common/drivers" -I"E:/Simplicity studio/developer/sdks/gecko_sdk_suite/v2.7//platform/Device/SiliconLabs/EFM32GG/Include" -I"E:/Simplicity studio/developer/sdks/gecko_sdk_suite/v2.7//hardware/kit/EFM32GG_STK3700/config" -I"E:\Simplicity studio\sajatworkspace\testCProjectLCD\BSP" -O0 -Wall -c -fmessage-length=0 -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -MMD -MP -MF"BSP/bsp_stk_buttons.d" -MT"BSP/bsp_stk_buttons.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

BSP/bsp_stk_leds.o: ../BSP/bsp_stk_leds.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m3 -mthumb -std=c99 '-DEFM32GG990F1024=1' -I"E:/Simplicity studio/developer/sdks/gecko_sdk_suite/v2.7//platform/CMSIS/Include" -I"E:/Simplicity studio/developer/sdks/gecko_sdk_suite/v2.7//hardware/kit/common/bsp" -I"E:/Simplicity studio/developer/sdks/gecko_sdk_suite/v2.7//platform/emlib/inc" -I"E:/Simplicity studio/developer/sdks/gecko_sdk_suite/v2.7//hardware/kit/common/drivers" -I"E:/Simplicity studio/developer/sdks/gecko_sdk_suite/v2.7//platform/Device/SiliconLabs/EFM32GG/Include" -I"E:/Simplicity studio/developer/sdks/gecko_sdk_suite/v2.7//hardware/kit/EFM32GG_STK3700/config" -I"E:\Simplicity studio\sajatworkspace\testCProjectLCD\BSP" -O0 -Wall -c -fmessage-length=0 -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -MMD -MP -MF"BSP/bsp_stk_leds.d" -MT"BSP/bsp_stk_leds.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

BSP/bsp_trace.o: ../BSP/bsp_trace.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m3 -mthumb -std=c99 '-DEFM32GG990F1024=1' -I"E:/Simplicity studio/developer/sdks/gecko_sdk_suite/v2.7//platform/CMSIS/Include" -I"E:/Simplicity studio/developer/sdks/gecko_sdk_suite/v2.7//hardware/kit/common/bsp" -I"E:/Simplicity studio/developer/sdks/gecko_sdk_suite/v2.7//platform/emlib/inc" -I"E:/Simplicity studio/developer/sdks/gecko_sdk_suite/v2.7//hardware/kit/common/drivers" -I"E:/Simplicity studio/developer/sdks/gecko_sdk_suite/v2.7//platform/Device/SiliconLabs/EFM32GG/Include" -I"E:/Simplicity studio/developer/sdks/gecko_sdk_suite/v2.7//hardware/kit/EFM32GG_STK3700/config" -I"E:\Simplicity studio\sajatworkspace\testCProjectLCD\BSP" -O0 -Wall -c -fmessage-length=0 -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -MMD -MP -MF"BSP/bsp_trace.d" -MT"BSP/bsp_trace.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


