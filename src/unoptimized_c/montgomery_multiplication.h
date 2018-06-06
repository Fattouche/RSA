#include <limits.h>
#include <stdio.h>
#include <stdlib.h>

typedef struct _uint128_t
{
    // Least significant 8 bytes
    unsigned long long ls_bytes;

    // Most significant 8 bytes
    unsigned long long ms_bytes;
} uint128_t;

// Prints an error message and kill the program
void error(const char* description);

// Binary ANDs two uint128_t numbers
uint128_t and_128(uint128_t left, uint128_t right);

// Binary ORs two uint128_t numbers
uint128_t or_128(uint128_t left, uint128_t right);

// Adds two uint128_t numbers
uint128_t add_128(uint128_t left, uint128_t right);

// Bitshifts a uint128_t to the right
uint128_t bitshift_128_right(uint128_t input_num, uint128_t num_bits_to_shift);

void montgomery_multiplication();
