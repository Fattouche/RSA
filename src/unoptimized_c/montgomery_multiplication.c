#include "montgomery_multiplication.h"

// Computes X * Y mod m
uint128_t montgomery_multiplication(uint128_t x, uint128_t y, uint128_t m) {
  uint128_t T = {0, 0};
  uint128_t XiTimesY;
  uint128_t NTimesM;
  int n;
  int i, t0, Xi, xANDy;
  int y0 = getBitAtIndex(y, 0);
  int loopLimit = getNumBits(m);

  for (i = 0; i < loopLimit; i++) {
    t0 = getBitAtIndex(T, 0);
    Xi = getBitAtIndex(x, i);
    xANDy = Xi & y0;
    n = (t0 | xANDy);
    XiTimesY = multiply_uint128(Xi, y);
    NTimesM = multiply_uint128(n, m);
    //  T = (T + Xi * y + n * m) >> 1;
    T = bitshift_uint128_right((add_uint128(add_uint128(T, XiTimesY), NTimesM)),
                               1);
  }
  if (greater_than_or_equal_uint128(T, m)) {
    T = subtract_uint128(T, m);
  }
  return T;
}