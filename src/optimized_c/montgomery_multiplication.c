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

  Xi = X.ls_bytes & 0x1;
  
  for (i = 0; i < num_bits && i+1 < 64; i++) {
    T0 = T.ls_bytes & 0x1;   
    Xi_and_Y0 = Xi & Y0;
    n = (T0 ^ Xi_and_Y0);
    Xi_times_Y.ls_bytes = Y.ls_bytes * Xi;
    Xi_times_Y.ms_bytes = Y.ms_bytes * Xi;
    n_times_M.ls_bytes = M.ls_bytes * n;
    n_times_M.ms_bytes = M.ms_bytes * n;

    //  T = (T + Xi * Y + n * M) >> 1;
    T = bitshift_uint128_right(
        (add_uint128(add_uint128(T, Xi_times_Y), n_times_M)));

    Xi = (((unsigned long long)1 << i+1) & X.ls_bytes) >> i+1;
  }

  for (; i < num_bits; i++) {
    T0 = T.ls_bytes & 0x1;   
    Xi_and_Y0 = Xi & Y0;
    n = (T0 ^ Xi_and_Y0);
    Xi_times_Y.ls_bytes = Y.ls_bytes * Xi;
    Xi_times_Y.ms_bytes = Y.ms_bytes * Xi;
    n_times_M.ls_bytes = M.ls_bytes * n;
    n_times_M.ms_bytes = M.ms_bytes * n;

    //  T = (T + Xi * Y + n * M) >> 1;
    T = bitshift_uint128_right(
        (add_uint128(add_uint128(T, Xi_times_Y), n_times_M)));

    Xi = (((unsigned long long)1 << (i+1 - 64)) & X.ms_bytes) >> (i+1 - 64);
  }



  if (greater_than_or_equal_uint128(T, M)) {
    T = subtract_uint128(T, M);
  }

  return T;
}