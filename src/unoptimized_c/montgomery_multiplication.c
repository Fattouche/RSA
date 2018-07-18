#include "montgomery_multiplication.h"
//#define DEBUG

// Computes X * Y mod m
uint128_t montgomery_multiplication(uint128_t x, uint128_t y, uint128_t m,
                                    unsigned int num_bits) {
  uint128_t T = {0, 0};
  uint128_t XiTimesY;
  uint128_t NTimesM;
  int n;
  int i, Xi, xANDy, t0;
  int y0 = getBitAtIndex(y, 0);

#ifdef DEBUG
  printf("i  Xi  T(0)+X(i)*Y(0)=n  (T+X(i)*Y+n*M)/2=T\n");
#endif

  for (i = 0; i < num_bits; i++) {
    t0 = getBitAtIndex(T, 0);
    Xi = getBitAtIndex(x, i);
    xANDy = Xi & y0;
    n = (t0 ^ xANDy);
    XiTimesY = multiply_uint128(Xi, y);
    NTimesM = multiply_uint128(n, m);

#ifdef DEBUG
    uint128_t prev_T = T;
#endif

    //  T = (T + Xi * y + n * m) >> 1;
    T = bitshift_uint128_right((add_uint128(add_uint128(T, XiTimesY), NTimesM)),
                               1);

#ifdef DEBUG
    // currently only works when the uint_128 only uses least significant
    printf("%d  %d    %d ^ (%d & %d) = %d      (", i, Xi, t0, Xi, y0, n);

    print_uint128(prev_T);
    printf(" + %d*", Xi);
    print_uint128(y);
    printf(" + %d*", n);
    print_uint128(m);
    printf(")/2 = ");
    print_uint128(T);
    printf("\n\n");
#endif
  }
  if (greater_than_or_equal_uint128(T, m)) {
    T = subtract_uint128(T, m);
  }
#ifdef DEBUG
  printf("T = ");
  print_uint128(T);
  printf("\n\n");
#endif

  return T;
}