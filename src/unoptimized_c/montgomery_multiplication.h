#ifndef MONTGOMERY_MULTIPLICATION_H
#define MONTGOMERY_MULTIPLICATION_H

#include <limits.h>
#include <stdio.h>
#include <stdlib.h>

#include "uint128_t.h"

void montgomery_multiplication();
int getBitAtIndex(unsigned long long num, int index);
int getNumBits(unsigned long long num);

#endif // MONTGOMERY_MULTIPLICATION_H