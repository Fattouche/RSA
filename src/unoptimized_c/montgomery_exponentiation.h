#ifndef MONTGOMERY_EXPONENTIATION_H
#define MONTGOMERY_EXPONENTIATION_H

#include <limits.h>
#include <stdio.h>
#include <stdlib.h>

#include "montgomery_multiplication.h"
#include "uint128_t.h"

uint128_t montgomery_exponentiation(uint128_t x, uint128_t e, uint128_t m,
                                    uint128_t r_squared_mod_m);

#endif  // MONTGOMERY_EXPONENTIATION_H