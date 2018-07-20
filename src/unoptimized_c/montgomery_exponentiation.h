#ifndef MONTGOMERY_EXPONENTIATION_H
#define MONTGOMERY_EXPONENTIATION_H

#include <limits.h>
#include <stdio.h>
#include <stdlib.h>

#include "montgomery_multiplication.h"
#include "uint128_t.h"

uint128_t montgomery_exponentiation(uint128_t x, uint128_t e, uint128_t m);

// Returns r^2
uint128_t get_r_squared_uint128(uint128_t modular);

#endif  // MONTGOMERY_EXPONENTIATION_H