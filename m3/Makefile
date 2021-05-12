#******************************************************************************
# Copyright (C) 2017 by Hieu Le - Texas A&M
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
# Use: make compile
#
# Build Targets:
#      <FILE>.o - Builds a <FILE>.o object file
#      <FILE>.i - Builds a <FILE>.i preprocessed file
#      <FILE>.asm - Dumps <FILE>.asm assembly file
#      <FILE>.d - Builds <FILE>.d dependency file
#      compile - Compiles all source files in project
#      build - Builds all object files in project (links as well)
#      clean - Removes all generated files
#
# Platform Overrides:
#      HOST - Default platform
#      MSP342 - Target cross-compiled platform
#
# Author: Hieu Le
# Date:   May 09, 2021
#
#------------------------------------------------------------------------------

TARGET = main
CC = gcc
LD = ld
CFLAGS =-std=c99 -g -Wall
LDFLAGS = -Wl,-Map=$(TARGET).map
SIZE = size

FILES = *.asm *.i *.o *.d

%.o : %.c
	$(CC) $(CFLAGS) -c $<  -o $@
	
%.asm: %.c
	$(CC) -S $< $(CFLAGS) -o $@

$(TARGET).out: $(OBJS)
	$(CC) $(CFLAGS) $(LDFLAGS) -o $@ $(OBJS)
	$(SIZE) -Atd $(TARGET).out

$(TARGET).asm: $(TARGET).c
	#$(OBJDUMP) -d $(TARGET).out >> $@
	$(CC) -S $(TARGET).c $(CFLAGS) -o $(TARGET).asm

SOURCES = main.c misc.c
OBJS = $(SOURCES:.c=.o)

.PHONY: compile-all
compile-all: $(OBJS) $(TARGET).out $(TARGET).asm
	
.PHONY: build
build: $(TARGET).out $(TARGET).asm
	
.PHONY: clean
clean:
	rm -f $(FILES) $(TARGET).map $(TARGET).out
	