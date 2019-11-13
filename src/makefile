#
# Makefile for the OP1:1 project
#

TARGET := op11

# External clock on the board
EXTERNAL_CLOCK := 8000000

# Objects to be made (Source can either be .c or .s)
OBJS := \
	main.o \
	FreeRTOS/timers.o \
	FreeRTOS/tasks.o \
	FreeRTOS/queue.o \
	FreeRTOS/list.o \
	FreeRTOS/event_groups.o \
	FreeRTOS/stream_buffer.o \
	FreeRTOS/portable/port.o \
	FreeRTOS/portable/heap_4.o

# The file system_stm32f7xx.c defines the SystemInit() function, which sets up
# FPU and resets the RCC clock configuration. Note that it does not configure
# any clock except the default 16 MHz HSI.
STM_OBJS := ST/system_stm32f7xx.o

# The file startup_stm32f746xx.s contains the vector table and the reset
# handler. The reset handler sets up data and bss segments, calls SystemInit(),
# and transfers control to main().
STM_OBJS += ST/startup_stm32f746xx.o

# HAL peripheral drivers.
STM_OBJS += ST/ST_Library/stm32f7xx_hal_gpio.o
STM_OBJS += ST/ST_Library/stm32f7xx_hal.o
STM_OBJS += ST/ST_Library/stm32f7xx_hal_cortex.o
STM_OBJS += ST/ST_Library/stm32f7xx_hal_rcc.o
STM_OBJS += ST/ST_Library/stm32f7xx_hal_tim.o
STM_OBJS += ST/ST_Library/stm32f7xx_hal_pwr_ex.o

# Current directory, so that we get absolute paths below
CURDIR  := $(shell pwd)

# Additional include directories
INC_DIRS += $(CURDIR)
INC_DIRS += $(CURDIR)/FreeRTOS
INC_DIRS += $(CURDIR)/FreeRTOS/include
INC_DIRS += $(CURDIR)/FreeRTOS/portable
INC_DIRS += $(CURDIR)/ST
INC_DIRS += $(CURDIR)/ST/CMSIS/Include
INC_DIRS += $(CURDIR)/ST/CMSIS/Device/ST/STM32F7xx/Include
INC_DIRS += $(CURDIR)/ST/ST_Library
INC_DIRS += $(CURDIR)/ST/ST_Library/include

INC = $(addprefix -I,$(INC_DIRS))

CC         := arm-none-eabi-gcc
LD         := arm-none-eabi-gcc
OBJCOPY    := arm-none-eabi-objcopy
LINKSCRIPT := stm32f746_flash.ld

ARCH_FLAGS := -mthumb -mcpu=cortex-m7 -mfpu=fpv5-sp-d16 -mfloat-abi=hard -ffunction-sections -fdata-sections -ffast-math

CFLAGS     := -ggdb -O2 -std=c99 -Wall -Wextra -Warray-bounds -Wno-unused-parameter $(ARCH_FLAGS) $(INC) -DSTM32F746xx -DHSE_VALUE=$(EXTERNAL_CLOCK)
LDFLAGS    := -Wl,--gc-sections -lm

.PHONY: all flash clean tty cat

all: $(TARGET).bin

$(TARGET).bin: $(TARGET).elf

$(TARGET).elf: $(OBJS) $(STM_OBJS) $(LINKSCRIPT)
	$(LD) $(ARCH_FLAGS) -T $(LINKSCRIPT) -o $@ $(OBJS) $(STM_OBJS) $(LDFLAGS)

$(TARGET).o: $(TARGET).c

%.o: %.s
	$(CC) $(CFLAGS) -c $< -o $@

%.o: %.c $(TARGET).h
	$(CC) $(CFLAGS) -c $< -o $@

%.bin: %.elf
	$(OBJCOPY) -O binary $< $@

flash: $(TARGET).bin
	st-flash write $(TARGET).bin 0x8000000

clean:
	rm -f $(OBJS) $(STM_OBJS) $(TARGET).elf $(TARGET).bin
