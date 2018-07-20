#include "montgomery_multiplication.h"

// Computes X * Y mod m
uint128_t montgomery_multiplication(uint128_t x, uint128_t y, uint128_t m) {
  uint128_t T = {0, 0};
  uint128_t XiTimesY;
  uint128_t NTimesM;
  int n;
  register int i;
  int Xi, xANDy, t0;
  register int y0 = getBitAtIndex(y, 0);

  register int m_num_bits = getNumBits(m);
  register int x_num_bits = getNumBits(x);
  register int y_num_bits = getNumBits(y);

  register int num_bits = m_num_bits > x_num_bits ? m_num_bits : x_num_bits;
  num_bits = y_num_bits > num_bits ? y_num_bits : num_bits;

  for (i = 0; i < num_bits; i++) {
    t0 = getBitAtIndex(T, 0);
    Xi = getBitAtIndex(x, i);
    xANDy = Xi & y0;
    n = (t0 ^ xANDy);
    XiTimesY = multiply_uint128(Xi, y);
    NTimesM = multiply_uint128(n, m);

    //  T = (T + Xi * y + n * m) >> 1;
    T = bitshift_uint128_right(
        (add_uint128(add_uint128(T, XiTimesY), NTimesM)));
  }
  if (greater_than_or_equal_uint128(T, m)) {
    T = subtract_uint128(T, m);
  }

  return T;
}