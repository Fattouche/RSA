#include "montgomery_multiplication.h"

// Computes x^e mod m
uint128_t montgomery_exponentiation(uint128_t x, uint128_t e, uint128_t m) {
  uint128_t z = {0, 0};
  uint128_t p = x;
  int i;
  int loop_limit = getNumBits(m);

  for (i = 0; i < loop_limit; i++) {
    if (getBitAtIndex(e, i)) {
      z = montgomery_multiplication(z, p, m);
    }
    p = montgomery_multiplication(p, p, m);
  }
  z = montgomery_multiplication(1, z, m);
  return z;
}
