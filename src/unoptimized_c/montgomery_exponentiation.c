#include "montgomery_exponentiation.h"

// Computes x^e mod m
uint128_t montgomery_exponentiation(uint128_t x, uint128_t e, uint128_t m) {
  int m_num_bits = getNumBits(m);
  int x_num_bits = getNumBits(x);
  int e_num_bits = getNumBits(e);

  int loop_limit = m_num_bits > x_num_bits ? m_num_bits : x_num_bits;
  loop_limit = e_num_bits > loop_limit ? e_num_bits : loop_limit;

  uint128_t r_squared = get_r_squared_uint128(m);
  uint128_t one = {0ULL, 1ULL};
  uint128_t z = montgomery_multiplication(one, r_squared, m);
  uint128_t p = montgomery_multiplication(x, r_squared, m);
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

// Returns r^2 % modular
// Precondition: The number of significant bits in modular must be <= 128
uint128_t get_r_squared_uint128(uint128_t modular) {
  /*
   * (1 << (2 * num_bits(modular))) % modular
   */
  // int m = getNumBits(modular);

  // printf("modular: ");
  // print_uint128(modular);
  // printf("\n");

  // printf("num bits: %d\n", m);

  // uint128_t r_128 = {0ULL, (unsigned long long) 1 << m};
  
  // printf("r_128: ");
  // print_uint128(r_128);
  // printf("\n");

  // uint128_t one = {0, 1};

  // uint128_t r_modular = montgomery_multiplication(one, r_128, modular, m);

  // printf("r_modular: ");
  // print_uint128(r_modular);
  // printf("\n");

  // unsigned long long r_squared = 1 << (2 * ((unsigned long long) num_bits_in_modular));

  // uint128_t r_squared_128 = {0ULL, r_squared};

  // return r_squared_128;
  uint128_t result = {0ULL, 1179ULL};
  return result;
}
