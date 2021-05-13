#******************************************************************************
# Copyright (C) 2017 by Alex Fosdick - University of Colorado
#
# Redistribution, modification or use of this software in source or binary
# forms is permitted as long as the files maintain this copyright. Users are 
# permitted to modify this and use it to learn about the field of embedded
# software. Alex Fosdick and the University of Colorado are not liable for any
# misuse of this material. 
#
#*****************************************************************************

#------------------------------------------------------------------------------
# Simple make file to support two build platforms
#
# Use: make [TARGET] [PLATFORM-OVERRIDES]
#
# Build Targets:
#      <FILE>.o - Builds a <FILE>.o object file
#      <FILE>.i - Builds a <FILE>.i preprocessed file
#      <FILE>.asm - Dumps <FILE>.asm assembly file
#      <FILE>.d - Builds <FILE>.d dependency file
#      compile-all - Compiles all source files in project
#      build - Builds all object files in project (links as well)
#      clean - Removes all generated files
#
# Platform Overrides:
#      HOST - Default platform
#      MSP342 - Target cross-compiled platform
#
# Author: Hieu Le
# Date:   April 29, 2021
#
#------------------------------------------------------------------------------
include sources.mk

# -c  Compile and Assemble File, Do Not Link
# -o <FILE> Compile, Assemble, and Link to OUTPUT_FILE
# -g  Generate Debugging Information in Executable
# -Wall  Enable All Warning Messages
# -Werror  Treat All Warnings as Errors
# -I<DIR>  Include this <DIR> to look for header files
# -ansi -std=STANDARD  Which standard version to use (ex: c89, c99)
# -v  Verbose output form GCC

# Platform Overrides
PLATFORM = HOST
SRC_DIR := ./src
OBJ_DIR := ./obj
INC_DIR := ./include

# SOURCES = 	$(SRC_DIR)/main.c \
			# $(SRC_DIR)/memory.c \
			# $(SRC_DIR)/stats.c \
			# $(SRC_DIR)/data.c \
			# $(SRC_DIR)/course1.c 
# INCLUDES = -I include/common/

# Compile time switches
COURSE1 = true
VERBOSE = true

# General flags for both platforms.
G_FLAGS = -std=c99 \
	  -g \
	  -O0 \
	  -Wall \
	  -Werror

# Architectures Specific Flags for MSP432.
LINKER_FILE = -T msp432p401r.lds
CPU = cortex-m4
ARCH = armv7e-m
SPECS = nosys.specs
EXTRA = -mthumb \
		-mfloat-abi=hard \
		-mfpu=fpv4-sp-d16

TARGET = final_assesment

ifeq ($(PLATFORM), MSP432)
	# Compiler Flags & Defines
	CC = arm-none-eabi-gcc
	LD = arm-none-eabi-ld
	CFLAGS = $(G_FLAGS) \
			-mcpu=$(CPU) \
			-march=$(ARCH) \
			--specs=$(SPECS) \
			$(EXTRA)
	CPPFLAGS = -DMSP432 $(INCLUDES)
	LDFLAGS = -Wl,-Map=$(TARGET).map \
				-L ../ $(LINKER_FILE) -lm
	OBJDUMP = arm-none-eabi-objdump
	SIZE = arm-none-eabi-size 

else
	# Compiler Flags & Defines
	CC = gcc
	CFLAGS = $(G_FLAGS)
	CPPFLAGS = -DHOST $(INCLUDES)
	LDFLAGS = -Wl,-Map=$(TARGET).map -lm
	OBJDUMP = objdump
	SIZE = size
endif

# IF COURSE1 is defined, add a flag
ifeq ($(COURSE1), true)
	CPPFLAGS += -DCOURSE1
endif

# IF VERBOSE is defined, add a flag
ifeq ($(VERBOSE), true)
	CPPFLAGS += -DVERBOSE
endif

# Building Object file (file.o)
# Building Dependency file (file.d)
# Building Assembly file (file.asm)
# Building Preprocessed file (file.i)
OBJS = $(SOURCES:.c=.o)
DEPS = $(SOURCES:.c=.d)
ASMS = $(SOURCES:.c=.asm)
PREP = $(SOURCES:.c=.i)

FILES = *.asm *.i *.o *.d

%.o : %.c
	$(CC) -c $< $(CFLAGS) $(CPPFLAGS) -o $@

%.asm: %.c
	$(CC) -S $< $(CFLAGS) $(CPPFLAGS) -o $@

%.i: %.c
	$(CC) -E $< $(CPPFLAGS) -o $@

%.d: %.c
	$(CC) -E -M $< $(CPPFLAGS) -o $@
	
FILES = *.asm *.i *.o *.d

$(TARGET).asm: $(TARGET).out
	$(OBJDUMP) -d $(TARGET).out >> $@

.PHONY: compile-all
compile-all: $(OBJS)

.PHONY: build
build: $(TARGET).out  $(TARGET).asm

$(TARGET).out: $(OBJS)
	$(CC) $(OBJS) $(CFLAGS) $(CPPFLAGS) $(LDFLAGS) -o $@ 
	$(SIZE) $(TARGET).out

# Build all and run file
.PHONY: run
run: $(TARGET).out
	./$(TARGET).out

.PHONY: clean
clean:
	rm -f $(TARGET).asm $(TARGET).out $(TARGET).map ./src/*.o ./src/*.map ./src/*.asm ./src/*.i