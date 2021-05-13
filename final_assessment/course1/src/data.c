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
 * @file data.c
 * @brief Abstraction of data manipulation
 *
 * This implementation file provides an abstraction of data manupilation
 *
 * @author Hieu Le
 * @date May 12th, 2021
 *
 */
#include <stdio.h>
#include "data.h"
#include "memory.h"
#include <math.h>

/***********************************************************
 Function Definitions
***********************************************************/

uint8_t my_itoa(int32_t data, uint8_t * ptr, uint32_t base) {
	
	uint8_t array_size = 12;
	uint8_t array[array_size];
	uint8_t is_negative = 0;
	uint8_t str_len = 0;
	
	// Case where data = 0
	if (data == 0) {
		*ptr = 0;
		*(ptr+1) = 0;
		return 2;
	}
	
	// Case where data is negative
	if (data < 0) {
		is_negative = 1;
		data = data * (-1);
	}
	
	// Add NULL character
	array[str_len] = 0x0;
	str_len++;
	
	while (data >= 1) {
		uint8_t cur_char = data % base;
		
		if (cur_char >= 0 && cur_char <= 9) {
			array[str_len] = cur_char + 0x30;
		}
		
		// If hex A - F
		if (cur_char >= 10 && cur_char <= 15) {
			array[str_len] = cur_char + 0x37;
		}
		
		data = data / base;
		str_len++;
	}
	
	// Add negative sign if negative
	if (is_negative == 1) {
		array[str_len] = '-';
		str_len++;
	}
	
	// Reverse the order of the string
	ptr = my_reverse(array, str_len);
	
	return str_len;
}

int32_t my_atoi(uint8_t * ptr, uint8_t digits, uint32_t base) {
	
	uint8_t is_negative = 0;
	uint32_t multiplier = 0;
	uint32_t number = 0;
	uint8_t cur_digit = 0;
	
	for (size_t i=0; i<digits; i++) {
		if (*ptr == '-') {
			is_negative = 1;
			continue;
		}
		cur_digit = *(ptr+i);
		multiplier = pow(base, (digits -i - 1));
		
		if (cur_digit >= 'A' && cur_digit <= 'F') {
			cur_digit -= 0x37;
		}
		else if (cur_digit >= '0' && cur_digit <= '9') {
			cur_digit -= 0x30;
		}
		number += multiplier*cur_digit;
	}
	
	if (is_negative == 1) {
		number = number * (-1);
	}
	
	return number;
}