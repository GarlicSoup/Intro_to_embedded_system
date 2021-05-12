/******************************************************************************
 * Copyright (C) 2017 by Alex Fosdick - University of Colorado
 *
 * Redistribution, modification or use of this software in source or binary
 * forms is permitted as long as the files mauint8_tain this copyright. Users are 
 * permitted to modify this and use it to learn about the field of embedded
 * software. Alex Fosdick and the University of Colorado are not liable for any
 * misuse of this material. 
 *
 *****************************************************************************/
/**
 * @file <stats.c> 
 * @brief This file contains many methods that deal with array of char
 * pruint8_t functions pruint8_t out some useful information while other functions 
 * return statistical results that are needed to analyze the input array
 * 
 * @author Hieu Le
 * @date 01/26/2021
 *
 */



#include <stdio.h>
#include "stats.h"
#include "platform.h"

/* Size of the Data Set */
#define SIZE (40)

// /* void main() {

  // unsigned char test[SIZE] = { 34, 201, 190, 154,   8, 194,   2,   6,
                              // 114, 88,   45,  76, 123,  87,  25,  23,
                              // 200, 122, 150, 90,   92,  87, 177, 244,
                              // 201,   6,  12,  60,   8,   2,   5,  67,
                                // 7,  87, 250, 230,  99,   3, 100,  90};

  // /* Other Variable Declarations Go Here */
  // /* Statistics and Pruint8_ting Functions Go Here */

  // pruint8_tf("\nThe original array: \n");
  // pruint8_t_array(test, SIZE);

  // sort_array(test, SIZE);

  // pruint8_tf("\nThe sorted array in decending order: \n");
  // pruint8_t_array(test, SIZE);

  // pruint8_t_statistics(test, SIZE);

// } 
// */

/* Add other Implementation File Code Here */

void swap_char(uint8_t *a, uint8_t *b) 
{ 
  uint8_t temp = *a;
  *a = *b; 
  *b = temp; 
} 


void heapify_max(uint8_t arr[], uint8_t array_length, uint8_t root) {
  // Find largest among root, left child and right child
  uint8_t largest = root;
  uint8_t left = root*2 + 1;
  uint8_t right = root*2 + 2;

  if (left < array_length && arr[left] > arr[largest]) {
    largest = left;
  }

  if (right < array_length && arr[right] > arr[largest]) {
    largest = right;
  }

  // Swap and continue heapifying if root is not largest
  if (largest != root) {
    swap_char(&arr[root], &arr[largest]);
    heapify_max(arr, array_length, largest);
  }

}


void heapify_min(uint8_t arr[], uint8_t array_length, uint8_t root) {
  // Find smallest among root, left child and right child
  uint8_t largest = root;
  uint8_t left = root*2 + 1;
  uint8_t right = root*2 + 2;

  if (left < array_length && arr[left] < arr[largest]) {
    largest = left;
  }

  if (right < array_length && arr[right] < arr[largest]) {
    largest = right;
  }

  // Swap and continue heapifying if root is not smallest
  if (largest != root) {
    swap_char(&arr[root], &arr[largest]);
    heapify_min(arr, array_length, largest);
  }

}


void sort_array(uint8_t arr[], uint8_t array_length) {
  // Build min heap
  for (uint8_t i = array_length / 2 - 1; i >= 0; i--)
    heapify_min(arr, array_length, i);

  // Heap sort
  for (uint8_t i = array_length - 1; i >= 0; i--) {
    swap_char(&arr[0], &arr[i]);

    // Heapify root element to get smallest element at root again
    heapify_min(arr, i, 0);
  }
}


void print_array(uint8_t arr[], uint8_t array_length) {
  #ifdef VERBOSE
    // Loop through and print the array
    for(uint8_t i=0; i<arrayLength; i++){
      PRINTF("array[%u](0x%x): %u\n", i, arr+i, *(arr + sizeof(uint8_t)*i));
    }
    PRINTF("\n");
  #endif
  return;
}

uint8_t find_minimum(uint8_t arr[], uint8_t array_length) {
  // Build min heap
  for (uint8_t i = array_length / 2 - 1; i >= 0; i--)
      heapify_min(arr, array_length, i);
  
  // Return the minimum value at index 0th
  return arr[0];
}

uint8_t find_maximum(uint8_t arr[], uint8_t array_length) {
  // Build max heap
  for (uint8_t i = array_length / 2 - 1; i >= 0; i--)
      heapify_max(arr, array_length, i);
  
  // Return the maximum value at index 0th
  return arr[0];
}

uint8_t find_mean(uint8_t arr[], uint8_t array_length) {
  uint8_t sum=0;

  // Get the sumation of words
  for (uint8_t i=0; i<array_length; i++) {
    sum += arr[i];
  }
  return sum/array_length;
}

uint8_t find_median(uint8_t arr[], uint8_t array_length) {
  uint8_t median=0;

  if (array_length % 2 != 0) {
    // There are an odd number of words
    median = arr[(array_length-1)/2];
  }
  else {
    // there are an even number of words
    median = (arr[array_length/2] + arr[array_length/2 - 1]) / 2;
  }
  return median;
}


void print_statistics(uint8_tarr[], uint8_t array_length) {
  float mean, median;
  uint8_t maximum, minimum;

  PRINTF("\nThe mean of the array: %d\n", find_mean(arr, array_length));
  PRINTF("The median of the array: %d\n", find_median(arr, array_length));
  PRINTF("The minimum of the array: %d\n", find_minimum(arr, array_length));
  PRINTF("The maximum of the array: %d\n", find_maximum(arr, array_length));
  PRINTF("Array Size: %u\n", arrayLength);
  print_array(arr, arrayLength);
}
