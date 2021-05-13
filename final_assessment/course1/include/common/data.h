/******************************************************************************
 * Copyright (C) 2021 Hieu Le
 *
 * Redistribution, modification or use of this software in source or binary
 * forms is permitted as long as the files maintain this copyright. Users are 
 * permitted to modify this and use it to learn about the field of embedded
 * software. Hieu Le are not liable for any misuse of this material. 
 *
 *****************************************************************************/
/**
 * @file data.h
 * @brief Abstraction of data manipulation
 *
 * This header file provides an abstraction of data manipulation
 *
 * @author Hieu Le
 * @date May 12th 2021
 *
 */
#ifndef __DATA_H__
#define __DATA_H__

#include <stdint.h>
#include <math.h>

/**
 * @brief Integer-to-ASCII
 *
 * Integer-to-ASCII needs to convert data from a standard integer type into 
 * an ASCII string
 *
 * @param data The 32-bit, signed number to be converted to ASCII
 * @param ptr The pointer to the output string
 * @param base The base of the number passed in, support base between 2 to 16
 * @return uint8_t Returns the length of the converted data (including negative sign & null terminator)
 */
uint8_t my_itoa(int32_t data, uint8_t * ptr, uint32_t base);

/**
 * @brief ASCII-to-Integer
 *
 * ASCII-to-Integer needs to convert data back from an ASCII represented string 
 * into an integer type
 *
 * @param ptr Points to the beggining of the character string to convert
 * @param digits Number of digits in the string
 * @param base The base of the number, bases between 2 to 16 are supported
 * @return int32_t Converted 32-bit signed integer
 */
int32_t my_atoi(uint8_t * ptr, uint8_t digits, uint32_t base);

#endif /* __DATA_H__ */
