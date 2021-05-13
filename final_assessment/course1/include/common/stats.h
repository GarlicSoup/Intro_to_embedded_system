/******************************************************************************
 * Copyright (C) 2017 by Hieu Le
 *
 * Redistribution, modification or use of this software in source or binary
 * forms is permitted as long as the files maintain this copyright. Users are 
 * permitted to modify this and use it to learn about the field of embedded
 * software. Hieu Le is not liable for any misuse of this material. 
 *
 *****************************************************************************/
/**
 * @file stats.h
 * @brief This includes the declearation of the stats file.
 *
 * @author Hieu Le
 * @date 01/26/2021
 *
 */
#ifndef __STATS_H__
#define __STATS_H__


/**
 * @brief print statistics of an array including minimum, maximum, 
 * mean, and median
 * 
 * @param array: The sorted 32-bit word
 * @return: statistics of the word
 */
void print_statistics(uint8_t arr[], uint8_t array_length);


/**
 * @brief: display a given array
 * 
 * @param array: a given array
 * @param array_length: length of that array
 * 
 * @return: prints the array to the sceen
 */
void print_array(uint8_t arr[], uint8_t array_length);


/**
 * @brief: find the median of a given array
 * 
 * @param array: a given array
 * @param array_length: the length of that array
 * 
 * @return median value of the array
 */ 
uint8_t find_median(uint8_t arr[], uint8_t array_length);


/**
 * @brief: find the mean of a given array
 * 
 * @param array: a given array
 * @param array_length: the length of that array
 * 
 * @return mean value of the array
 */ 
uint8_t find_mean(uint8_t arr[], uint8_t array_length);


/**
 * @brief: find the maximum of a given array
 * 
 * @param array: a given array
 * @param array_length: the length of that array
 * 
 * @return maximum value of the array
 */ 
uint8_t find_maximum(uint8_t arr[], uint8_t array_length);


/**
 * @brief: find the minimum of a given array
 * 
 * @param array: a given array
 * @param array_length: the length of that array
 * 
 * @return minimum value of the array
 */ 
uint8_t find_minimum(uint8_t arr[], uint8_t array_length);


/**
 * @brief swap values of two variable
 * 
 * @param *a: address of the first value
 * @param *b: address of the second value
 * 
 * @return variables with swapped values
 */
void swap_char(uint8_t *a, uint8_t *b);


/**
 * @brief build max heap
 * 
 * @param arr: An array
 * @param array_length: length of the array
 * @param current_node: build min heap from this node down to leaf node
 * 
 * @return min heap from the current node
 */
void heapify_max(uint8_t arr[], uint8_t array_length, uint8_t root);


/**
 * @brief build min heap
 * 
 * @param arr: An array
 * @param array_length: length of the array
 * @param current_node: build min heap from this node down to leaf node
 * 
 * @return min heap from the current node
 */
void heapify_min(uint8_t arr[], uint8_t array_length, uint8_t root);


/**
 * @brief sort an array in descending order with heap sort algorithm
 * 
 * @param array: a given array
 * @param array_length: the length of that array
 * 
 * @return a sorted array
 */ 
void sort_array(uint8_t arr[], uint8_t array_length);

#endif /* __STATS_H__ */
