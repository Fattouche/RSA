#include "montgomery_exponentiation.h"

// Computes x^e mod m
uint128_t montgomery_exponentiation(uint128_t x, uint128_t e, uint128_t m) {
  int loop_limit = getNumBits(m);
  uint128_t r = get_r_uint128(m);
  uint128_t one = {0ULL, 1ULL};
  uint128_t z = montgomery_multiplication(one, r, m, loop_limit);
  uint128_t p = montgomery_multiplication(x, r, m, loop_limit);
  int i;
  for (i = 0; i < loop_limit; i++) {
    if (getBitAtIndex(e, i)) {
      z = montgomery_multiplication(z, p, m, loop_limit);
    }
    p = montgomery_multiplication(p, p, m, loop_limit);
  }
  z = montgomery_multiplication(one, z, m, loop_limit);
  return z;
}
