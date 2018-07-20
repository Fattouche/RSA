#ifndef UINT128_T_H
#define UINT128_T_H

#include <limits.h>
#include <stdio.h>
#include <stdlib.h>

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

// Subtracts to uint128_t numbers
uint128_t subtract_uint128(uint128_t left, uint128_t right);

// Compares two uint128_t numbers
// Return 1 if they are equal, 0 otherwise
int equals_uint128(uint128_t left, uint128_t right);

// Bitshifts a uint128_t to the right
uint128_t bitshift_uint128_right(uint128_t input_num);

// Multiplies a uint128_t by 1 or 0
uint128_t multiply_uint128(int bit, uint128_t multiplier);

// Returns 1 if left >= right, 0 otherwise
int greater_than_or_equal_uint128(uint128_t left, uint128_t right);

// Prints the most and least significant numbers
void print_uint128(uint128_t num);

// Returns the bit(1/0) at the given index
inline int getBitAtIndex(uint128_t num, int index);

// Returns the number of bits in the number
int getNumBits(uint128_t num);

// Helper function for getNumBits
int getLongBits(unsigned long long num);

#endif  // UINT128_T_H