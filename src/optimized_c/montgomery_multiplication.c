#include "montgomery_multiplication.h"

// Computes X * Y * R^-1 mod m
uint128_t montgomery_multiplication(uint128_t X, uint128_t Y, uint128_t M) {
  uint128_t T = {0, 0};
  uint128_t Xi_times_Y;
  uint128_t n_times_M;
  int n;
  register int i;
  register int Xi;
  int Xi_and_Y0, T0;
  int Y0 = getBitAtIndex(Y, 0);

  int M_num_bits = getNumBits(M);
  int X_num_bits = getNumBits(X);
  int Y_num_bits = getNumBits(Y);

  int num_bits = M_num_bits > X_num_bits ? M_num_bits : X_num_bits;
  num_bits = Y_num_bits > num_bits ? Y_num_bits : num_bits;

  for (i = 0; i < num_bits; i++) {
    if ((0x1 & T.ls_bytes) > 0) {
      T0 = 1;
    } else {
      T0 = 0;
    }

    if (i >= 64) {
      if ((((unsigned long long)1 << (i - 64)) & X.ms_bytes) > 0) {
        Xi = 1;
      } else {
        Xi = 0;
      }
    } else {
      if ((((unsigned long long)1 << i) & X.ls_bytes) > 0) {
        Xi = 1;
      } else {
        Xi = 0;
      }
    }

    Xi_and_Y0 = Xi & Y0;
    n = (T0 ^ Xi_and_Y0);
    Xi_times_Y = multiply_uint128(Xi, Y);
    n_times_M = multiply_uint128(n, M);

    //  T = (T + Xi * Y + n * M) >> 1;
    T = bitshift_uint128_right(
        (add_uint128(add_uint128(T, Xi_times_Y), n_times_M)));
  }
  if (greater_than_or_equal_uint128(T, M)) {
    T = subtract_uint128(T, M);
  }

  return T;
}