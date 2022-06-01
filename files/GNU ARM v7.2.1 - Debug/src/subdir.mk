################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/eating.c \
../src/lose.c \
../src/main.c \
../src/moving.c \
../src/segmentlcd_individual.c \
../src/start.c \
../src/win.c 

OBJS += \
./src/eating.o \
./src/lose.o \
./src/main.o \
./src/moving.o \
./src/segmentlcd_individual.o \
./src/start.o \
./src/win.o 

C_DEPS += \
./src/eating.d \
./src/lose.d \
./src/main.d \
./src/moving.d \
./src/segmentlcd_individual.d \
./src/start.d \
./src/win.d 


# Each subdirectory must supply rules for building sources it contributes
src/eating.o: ../src/eating.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m3 -mthumb -std=c99 '-DEFM32GG990F1024=1' -I"E:/Simplicity studio/developer/sdks/gecko_sdk_suite/v2.7//platform/CMSIS/Include" -I"E:/Simplicity studio/developer/sdks/gecko_sdk_suite/v2.7//hardware/kit/common/bsp" -I"E:/Simplicity studio/developer/sdks/gecko_sdk_suite/v2.7//platform/emlib/inc" -I"E:/Simplicity studio/developer/sdks/gecko_sdk_suite/v2.7//hardware/kit/common/drivers" -I"E:/Simplicity studio/developer/sdks/gecko_sdk_suite/v2.7//platform/Device/SiliconLabs/EFM32GG/Include" -I"E:/Simplicity studio/developer/sdks/gecko_sdk_suite/v2.7//hardware/kit/EFM32GG_STK3700/config" -I"E:\Simplicity studio\sajatworkspace\testCProjectLCD\BSP" -O0 -Wall -c -fmessage-length=0 -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -MMD -MP -MF"src/eating.d" -MT"src/eating.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/lose.o: ../src/lose.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m3 -mthumb -std=c99 '-DEFM32GG990F1024=1' -I"E:/Simplicity studio/developer/sdks/gecko_sdk_suite/v2.7//platform/CMSIS/Include" -I"E:/Simplicity studio/developer/sdks/gecko_sdk_suite/v2.7//hardware/kit/common/bsp" -I"E:/Simplicity studio/developer/sdks/gecko_sdk_suite/v2.7//platform/emlib/inc" -I"E:/Simplicity studio/developer/sdks/gecko_sdk_suite/v2.7//hardware/kit/common/drivers" -I"E:/Simplicity studio/developer/sdks/gecko_sdk_suite/v2.7//platform/Device/SiliconLabs/EFM32GG/Include" -I"E:/Simplicity studio/developer/sdks/gecko_sdk_suite/v2.7//hardware/kit/EFM32GG_STK3700/config" -I"E:\Simplicity studio\sajatworkspace\testCProjectLCD\BSP" -O0 -Wall -c -fmessage-length=0 -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -MMD -MP -MF"src/lose.d" -MT"src/lose.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/main.o: ../src/main.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m3 -mthumb -std=c99 '-DEFM32GG990F1024=1' -I"E:/Simplicity studio/developer/sdks/gecko_sdk_suite/v2.7//platform/CMSIS/Include" -I"E:/Simplicity studio/developer/sdks/gecko_sdk_suite/v2.7//hardware/kit/common/bsp" -I"E:/Simplicity studio/developer/sdks/gecko_sdk_suite/v2.7//platform/emlib/inc" -I"E:/Simplicity studio/developer/sdks/gecko_sdk_suite/v2.7//hardware/kit/common/drivers" -I"E:/Simplicity studio/developer/sdks/gecko_sdk_suite/v2.7//platform/Device/SiliconLabs/EFM32GG/Include" -I"E:/Simplicity studio/developer/sdks/gecko_sdk_suite/v2.7//hardware/kit/EFM32GG_STK3700/config" -I"E:\Simplicity studio\sajatworkspace\testCProjectLCD\BSP" -O0 -Wall -c -fmessage-length=0 -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -MMD -MP -MF"src/main.d" -MT"src/main.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/moving.o: ../src/moving.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m3 -mthumb -std=c99 '-DEFM32GG990F1024=1' -I"E:/Simplicity studio/developer/sdks/gecko_sdk_suite/v2.7//platform/CMSIS/Include" -I"E:/Simplicity studio/developer/sdks/gecko_sdk_suite/v2.7//hardware/kit/common/bsp" -I"E:/Simplicity studio/developer/sdks/gecko_sdk_suite/v2.7//platform/emlib/inc" -I"E:/Simplicity studio/developer/sdks/gecko_sdk_suite/v2.7//hardware/kit/common/drivers" -I"E:/Simplicity studio/developer/sdks/gecko_sdk_suite/v2.7//platform/Device/SiliconLabs/EFM32GG/Include" -I"E:/Simplicity studio/developer/sdks/gecko_sdk_suite/v2.7//hardware/kit/EFM32GG_STK3700/config" -I"E:\Simplicity studio\sajatworkspace\testCProjectLCD\BSP" -O0 -Wall -c -fmessage-length=0 -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -MMD -MP -MF"src/moving.d" -MT"src/moving.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/segmentlcd_individual.o: ../src/segmentlcd_individual.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m3 -mthumb -std=c99 '-DEFM32GG990F1024=1' -I"E:/Simplicity studio/developer/sdks/gecko_sdk_suite/v2.7//platform/CMSIS/Include" -I"E:/Simplicity studio/developer/sdks/gecko_sdk_suite/v2.7//hardware/kit/common/bsp" -I"E:/Simplicity studio/developer/sdks/gecko_sdk_suite/v2.7//platform/emlib/inc" -I"E:/Simplicity studio/developer/sdks/gecko_sdk_suite/v2.7//hardware/kit/common/drivers" -I"E:/Simplicity studio/developer/sdks/gecko_sdk_suite/v2.7//platform/Device/SiliconLabs/EFM32GG/Include" -I"E:/Simplicity studio/developer/sdks/gecko_sdk_suite/v2.7//hardware/kit/EFM32GG_STK3700/config" -I"E:\Simplicity studio\sajatworkspace\testCProjectLCD\BSP" -O0 -Wall -c -fmessage-length=0 -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -MMD -MP -MF"src/segmentlcd_individual.d" -MT"src/segmentlcd_individual.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/start.o: ../src/start.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m3 -mthumb -std=c99 '-DEFM32GG990F1024=1' -I"E:/Simplicity studio/developer/sdks/gecko_sdk_suite/v2.7//platform/CMSIS/Include" -I"E:/Simplicity studio/developer/sdks/gecko_sdk_suite/v2.7//hardware/kit/common/bsp" -I"E:/Simplicity studio/developer/sdks/gecko_sdk_suite/v2.7//platform/emlib/inc" -I"E:/Simplicity studio/developer/sdks/gecko_sdk_suite/v2.7//hardware/kit/common/drivers" -I"E:/Simplicity studio/developer/sdks/gecko_sdk_suite/v2.7//platform/Device/SiliconLabs/EFM32GG/Include" -I"E:/Simplicity studio/developer/sdks/gecko_sdk_suite/v2.7//hardware/kit/EFM32GG_STK3700/config" -I"E:\Simplicity studio\sajatworkspace\testCProjectLCD\BSP" -O0 -Wall -c -fmessage-length=0 -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -MMD -MP -MF"src/start.d" -MT"src/start.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/win.o: ../src/win.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m3 -mthumb -std=c99 '-DEFM32GG990F1024=1' -I"E:/Simplicity studio/developer/sdks/gecko_sdk_suite/v2.7//platform/CMSIS/Include" -I"E:/Simplicity studio/developer/sdks/gecko_sdk_suite/v2.7//hardware/kit/common/bsp" -I"E:/Simplicity studio/developer/sdks/gecko_sdk_suite/v2.7//platform/emlib/inc" -I"E:/Simplicity studio/developer/sdks/gecko_sdk_suite/v2.7//hardware/kit/common/drivers" -I"E:/Simplicity studio/developer/sdks/gecko_sdk_suite/v2.7//platform/Device/SiliconLabs/EFM32GG/Include" -I"E:/Simplicity studio/developer/sdks/gecko_sdk_suite/v2.7//hardware/kit/EFM32GG_STK3700/config" -I"E:\Simplicity studio\sajatworkspace\testCProjectLCD\BSP" -O0 -Wall -c -fmessage-length=0 -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -MMD -MP -MF"src/win.d" -MT"src/win.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


