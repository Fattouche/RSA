#ifndef MONTGOMERY_MULTIPLICATION_H
#define MONTGOMERY_MULTIPLICATION_H

#include <limits.h>
#include <stdio.h>
#include <stdlib.h>

#include "uint128_t.h"

uint128_t montgomery_multiplication(uint128_t x, uint128_t y, uint128_t m);

#endif  // MONTGOMERY_MULTIPLICATION_H