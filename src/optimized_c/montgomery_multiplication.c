#include "montgomery_multiplication.h"

// Computes X * Y mod m
uint128_t montgomery_multiplication(uint128_t x, uint128_t y, uint128_t m) {
  uint128_t T = {0, 0};
  uint128_t XiTimesY;
  uint128_t NTimesM;
  int n;
  register int i;
  register int zero = 0;
  int Xi, xANDy, t0;
  register int y0 = getBitAtIndex(y, zero);

  register int m_num_bits = getNumBits(m);
  register int x_num_bits = getNumBits(x);
  register int y_num_bits = getNumBits(y);

  int num_bits = m_num_bits > x_num_bits ? m_num_bits : x_num_bits;
  num_bits = y_num_bits > num_bits ? y_num_bits : num_bits;

  t0 = getBitAtIndex(T, zero);
  Xi = getBitAtIndex(x, 0);
  xANDy = Xi & y0;
  n = (t0 ^ xANDy);
  XiTimesY = multiply_uint128(Xi, y);
  NTimesM = multiply_uint128(n, m);

  for (i = 0; i < num_bits - 1; i++) {
    T = bitshift_uint128_right((add_uint128(add_uint128(T, XiTimesY), NTimesM)),
                               1);

    t0 = getBitAtIndex(T, zero);
    Xi = getBitAtIndex(x, i + 1);
    xANDy = Xi & y0;
    n = (t0 ^ xANDy);
    XiTimesY = multiply_uint128(Xi, y);
    NTimesM = multiply_uint128(n, m);
  }

  T = bitshift_uint128_right((add_uint128(add_uint128(T, XiTimesY), NTimesM)),
                             1);

  if (greater_than_or_equal_uint128(T, m)) {
    T = subtract_uint128(T, m);
  }
  return T;
}