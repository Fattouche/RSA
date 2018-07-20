#include "montgomery_exponentiation.h"

// Computes x^e mod m
uint128_t montgomery_exponentiation(uint128_t x, uint128_t e, uint128_t m,
                                    uint128_t r_squared_mod_m) {
  int m_num_bits = getNumBits(m);
  int x_num_bits = getNumBits(x);
  int e_num_bits = getNumBits(e);

  int loop_limit = m_num_bits > x_num_bits ? m_num_bits : x_num_bits;
  loop_limit = e_num_bits > loop_limit ? e_num_bits : loop_limit;

  uint128_t one = {0ULL, 1ULL};
  uint128_t z = montgomery_multiplication(one, r_squared_mod_m, m);
  uint128_t p = montgomery_multiplication(x, r_squared_mod_m, m);
  int i;
  for (i = 0; i < loop_limit; i++) {
    if (getBitAtIndex(e, i)) {
      z = montgomery_multiplication(z, p, m);
    }
    p = montgomery_multiplication(p, p, m);
  }
  z = montgomery_multiplication(one, z, m);
  return z;
}
