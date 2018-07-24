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

    // add_uint128 inlined
    uint128_t result = {0, 0};
    result.ls_bytes = T.ls_bytes + Xi_times_Y.ls_bytes;
    result.ms_bytes = result.ls_bytes < T.ls_bytes ? 1 : 0;
    result.ms_bytes += (T.ms_bytes + Xi_times_Y.ms_bytes);

    // add_uint128 inlined
    uint128_t result_2 = {0, 0};
    result_2.ls_bytes = result.ls_bytes + n_times_M.ls_bytes;
    result_2.ms_bytes = result_2.ls_bytes < result.ls_bytes ? 1 : 0;
    result_2.ms_bytes += (result.ms_bytes + n_times_M.ms_bytes);

    // bitshift_uint128_right inlined
    T.ls_bytes = result_2.ls_bytes >> 1;
    unsigned long long crossover = result_2.ms_bytes & ((result_2.ms_bytes << 1) - 1);
    T.ms_bytes = result_2.ms_bytes >> 1;
    T.ls_bytes |= (crossover << (64 - 1));

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

    // add_uint128 inlined
    uint128_t result = {0, 0};
    result.ls_bytes = T.ls_bytes + Xi_times_Y.ls_bytes;
    result.ms_bytes = result.ls_bytes < T.ls_bytes ? 1 : 0;
    result.ms_bytes += (T.ms_bytes + Xi_times_Y.ms_bytes);

    // add_uint128 inlined
    uint128_t result_2 = {0, 0};
    result_2.ls_bytes = result.ls_bytes + n_times_M.ls_bytes;
    result_2.ms_bytes = result_2.ls_bytes < result.ls_bytes ? 1 : 0;
    result_2.ms_bytes += (result.ms_bytes + n_times_M.ms_bytes);

    // bitshift_uint128_right inlined
    T.ls_bytes = result_2.ls_bytes >> 1;
    unsigned long long crossover = result_2.ms_bytes & ((result_2.ms_bytes << 1) - 1);
    T.ms_bytes = result_2.ms_bytes >> 1;
    T.ls_bytes |= (crossover << (64 - 1));

    Xi = (((unsigned long long)1 << (i+1 - 64)) & X.ms_bytes) >> (i+1 - 64);
  }



  if (greater_than_or_equal_uint128(T, M)) {
    T = subtract_uint128(T, M);
  }

  return T;
}