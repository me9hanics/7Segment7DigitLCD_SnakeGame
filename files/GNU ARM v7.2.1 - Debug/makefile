################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include src/subdir.mk
-include emlib/subdir.mk
-include drivers/subdir.mk
-include CMSIS/EFM32GG/subdir.mk
-include BSP/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 

# All Target
all: testCProjectLCD.axf

# Tool invocations
testCProjectLCD.axf: $(OBJS) $(USER_OBJS)
	@echo 'Building target: $@'
	@echo 'Invoking: GNU ARM C Linker'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m3 -mthumb -T "testCProjectLCD.ld" -Xlinker --gc-sections -Xlinker -Map="testCProjectLCD.map" --specs=nano.specs -o testCProjectLCD.axf "./BSP/bsp_bcc.o" "./BSP/bsp_stk.o" "./BSP/bsp_stk_buttons.o" "./BSP/bsp_stk_leds.o" "./BSP/bsp_trace.o" "./CMSIS/EFM32GG/startup_efm32gg.o" "./CMSIS/EFM32GG/system_efm32gg.o" "./drivers/segmentlcd.o" "./emlib/em_cmu.o" "./emlib/em_gpio.o" "./emlib/em_lcd.o" "./emlib/em_system.o" "./src/eating.o" "./src/lose.o" "./src/main.o" "./src/moving.o" "./src/segmentlcd_individual.o" "./src/start.o" "./src/win.o" -Wl,--start-group -lgcc -lc -lnosys -Wl,--end-group
	@echo 'Finished building target: $@'
	@echo ' '

	@echo 'Building hex file: testCProjectLCD.hex'
	arm-none-eabi-objcopy -O ihex "testCProjectLCD.axf" "testCProjectLCD.hex"
	@echo ' '

	@echo 'Building bin file: testCProjectLCD.bin'
	arm-none-eabi-objcopy -O binary "testCProjectLCD.axf" "testCProjectLCD.bin"
	@echo ' '

	@echo 'Building s37 file: testCProjectLCD.s37'
	arm-none-eabi-objcopy -O srec "testCProjectLCD.axf" "testCProjectLCD.s37"
	@echo ' '

	@echo 'Running size tool'
	arm-none-eabi-size "testCProjectLCD.axf" -A
	@echo ' '

# Other Targets
clean:
	-$(RM) $(EXECUTABLES)$(OBJS)$(C_DEPS) testCProjectLCD.axf
	-@echo ' '

.PHONY: all clean dependents
.SECONDARY:

-include ../makefile.targets
