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
void print_statistics(unsigned char arr[], int array_length);


/**
 * @brief: display a given array
 * 
 * @param array: a given array
 * @param array_length: length of that array
 * 
 * @return: prints the array to the sceen
 */
void print_array(unsigned char arr[], int array_length);


/**
 * @brief: find the median of a given array
 * 
 * @param array: a given array
 * @param array_length: the length of that array
 * 
 * @return median value of the array
 */ 
int find_median(unsigned char arr[], int array_length);


/**
 * @brief: find the mean of a given array
 * 
 * @param array: a given array
 * @param array_length: the length of that array
 * 
 * @return mean value of the array
 */ 
int find_mean(unsigned char arr[], int array_length);


/**
 * @brief: find the maximum of a given array
 * 
 * @param array: a given array
 * @param array_length: the length of that array
 * 
 * @return maximum value of the array
 */ 
unsigned char find_maximum(unsigned char arr[], int array_length);


/**
 * @brief: find the minimum of a given array
 * 
 * @param array: a given array
 * @param array_length: the length of that array
 * 
 * @return minimum value of the array
 */ 
unsigned char find_minimum(unsigned char arr[], int array_length);


/**
 * @brief swap values of two variable
 * 
 * @param *a: address of the first value
 * @param *b: address of the second value
 * 
 * @return variables with swapped values
 */
void swap_char(unsigned char *a, unsigned char *b);


/**
 * @brief build max heap
 * 
 * @param arr: An array
 * @param array_length: length of the array
 * @param current_node: build min heap from this node down to leaf node
 * 
 * @return min heap from the current node
 */
void heapify_max(unsigned char arr[], int array_length, int root);


/**
 * @brief build min heap
 * 
 * @param arr: An array
 * @param array_length: length of the array
 * @param current_node: build min heap from this node down to leaf node
 * 
 * @return min heap from the current node
 */
void heapify_min(unsigned char arr[], int array_length, int root);


/**
 * @brief sort an array in descending order with heap sort algorithm
 * 
 * @param array: a given array
 * @param array_length: the length of that array
 * 
 * @return a sorted array
 */ 
void sort_array(unsigned char array[], int array_length);

#endif /* __STATS_H__ */
