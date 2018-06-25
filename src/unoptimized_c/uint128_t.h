#ifndef UINT128_T_H
#define UINT128_T_H

#include <stdio.h>
#include <stdlib.h>
#include <limits.h>

typedef struct _uint128_t {
  // Most significant 8 bytes
  unsigned long long ms_bytes;
  
  // Least significant 8 bytes
  unsigned long long ls_bytes;
} uint128_t;

// Prints an error message and kill the program
void error(const char* description);

// Binary ANDs two uint128_t numbers
uint128_t and_uint128(uint128_t left, uint128_t right);

// Binary ORs two uint128_t numbers
uint128_t or_uint128(uint128_t left, uint128_t right);

// Adds two uint128_t numbers
uint128_t add_uint128(uint128_t left, uint128_t right);

// Compares two uint128_t numbers
// Return 1 if they are equal, 0 otherwise
int equals_uint128(uint128_t left, uint128_t right);

// Bitshifts a uint128_t to the right
uint128_t bitshift_uint128_right(uint128_t input_num, size_t num_bits_to_shift);

#endif // UINT128_T_H