################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include src/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
ELFSIZE += \
sc_uart_v_2_0.elf.size \

ELFCHECK += \
sc_uart_v_2_0.elf.elfcheck \


# All Target
all: sc_uart_v_2_0.elf secondary-outputs

# Tool invocations
sc_uart_v_2_0.elf: $(OBJS) ../src/lscript.ld $(USER_OBJS)
	@echo 'Building target: $@'
	@echo 'Invoking: MicroBlaze gcc linker'
	mb-gcc -Wl,-T -Wl,../src/lscript.ld -L../../sc_uart_v_2_0_bsp/microblaze_0/lib -mlittle-endian -mxl-barrel-shift -mxl-pattern-compare -mcpu=v8.50.c -mno-xl-soft-mul -Wl,--no-relax -Wl,--gc-sections -o "sc_uart_v_2_0.elf" $(OBJS) $(USER_OBJS) $(LIBS)
	@echo 'Finished building target: $@'
	@echo ' '

sc_uart_v_2_0.elf.size: sc_uart_v_2_0.elf
	@echo 'Invoking: MicroBlaze Print Size'
	mb-size sc_uart_v_2_0.elf  |tee "sc_uart_v_2_0.elf.size"
	@echo 'Finished building: $@'
	@echo ' '

sc_uart_v_2_0.elf.elfcheck: sc_uart_v_2_0.elf
	@echo 'Invoking: Xilinx ELF Check'
	elfcheck sc_uart_v_2_0.elf -hw ../../gsm_integration_v_1_0_hw_platform/system.xml -pe microblaze_0  |tee "sc_uart_v_2_0.elf.elfcheck"
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) $(OBJS)$(C_DEPS)$(EXECUTABLES)$(ELFSIZE)$(ELFCHECK)$(S_UPPER_DEPS) sc_uart_v_2_0.elf
	-@echo ' '

secondary-outputs: $(ELFSIZE) $(ELFCHECK)

.PHONY: all clean dependents
.SECONDARY:

-include ../makefile.targets
