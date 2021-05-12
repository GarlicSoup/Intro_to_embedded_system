/******************************************************************************
 * Copyright (C) 2017 by Alex Fosdick - University of Colorado
 *
 * Redistribution, modification or use of this software in source or binary
 * forms is permitted as long as the files maintain this copyright. Users are 
 * permitted to modify this and use it to learn about the field of embedded
 * software. Alex Fosdick and the University of Colorado are not liable for any
 * misuse of this material. 
 *
 *****************************************************************************/
/**
 * @file <stats.c> 
 * @brief This file contains many methods that deal with array of char
 * print functions print out some useful information while other functions 
 * return statistical results that are needed to analyze the input array
 * 
 * @author Hieu Le
 * @date 01/26/2021
 *
 */



#include <stdio.h>
#include "stats.h"

/* Size of the Data Set */
#define SIZE (40)

void main() {

  unsigned char test[SIZE] = { 34, 201, 190, 154,   8, 194,   2,   6,
                              114, 88,   45,  76, 123,  87,  25,  23,
                              200, 122, 150, 90,   92,  87, 177, 244,
                              201,   6,  12,  60,   8,   2,   5,  67,
                                7,  87, 250, 230,  99,   3, 100,  90};

  /* Other Variable Declarations Go Here */
  /* Statistics and Printing Functions Go Here */

  printf("\nThe original array: \n");
  print_array(test, SIZE);

  sort_array(test, SIZE);

  printf("\nThe sorted array in decending order: \n");
  print_array(test, SIZE);

  print_statistics(test, SIZE);

}

/* Add other Implementation File Code Here */

void swap_char(unsigned char *a, unsigned char *b) 
{ 
  unsigned char temp = *a;
  *a = *b; 
  *b = temp; 
} 



void heapify_max(unsigned char arr[], int array_length, int root) {
  // Find largest among root, left child and right child
  int largest = root;
  int left = root*2 + 1;
  int right = root*2 + 2;

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


void heapify_min(unsigned char arr[], int array_length, int root) {
  // Find smallest among root, left child and right child
  int largest = root;
  int left = root*2 + 1;
  int right = root*2 + 2;

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


void sort_array(unsigned char arr[], int array_length) {
  // Build min heap
  for (int i = array_length / 2 - 1; i >= 0; i--)
    heapify_min(arr, array_length, i);

  // Heap sort
  for (int i = array_length - 1; i >= 0; i--) {
    swap_char(&arr[0], &arr[i]);

    // Heapify root element to get smallest element at root again
    heapify_min(arr, i, 0);
  }
}


void print_array(unsigned char arr[], int array_length) {
  for (int i = 0; i < array_length; ++i)
    printf("%d ", arr[i]);
  printf("\n");
}

unsigned char find_minimum(unsigned char arr[], int array_length) {
  // Build min heap
  for (int i = array_length / 2 - 1; i >= 0; i--)
      heapify_min(arr, array_length, i);
  
  // Return the minimum value at index 0th
  return arr[0];
}

unsigned char find_maximum(unsigned char arr[], int array_length) {
  // Build max heap
  for (int i = array_length / 2 - 1; i >= 0; i--)
      heapify_max(arr, array_length, i);
  
  // Return the maximum value at index 0th
  return arr[0];
}

int find_mean(unsigned char arr[], int array_length) {
  int sum=0;

  // Get the sumation of words
  for (int i=0; i<array_length; i++) {
    sum += arr[i];
  }
  return sum/array_length;
}

int find_median(unsigned char arr[], int array_length) {
  int median=0;

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


void print_statistics(unsigned char arr[], int array_length) {
  float mean, median;
  unsigned char maximum, minimum;

  printf("\nThe mean of the array: %d\n", find_mean(arr, array_length));
  printf("The median of the array: %d\n", find_median(arr, array_length));
  printf("The minimum of the array: %d\n", find_minimum(arr, array_length));
  printf("The maximum of the array: %d\n", find_maximum(arr, array_length));
}
