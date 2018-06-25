#include "montgomery_multiplication.h"

// Computes X * Y mod m
void montgomery_multiplication(uint128_t x_temp, uint128_t y_temp,
                               uint128_t m_temp) {
  int i;
  unsigned long long T = 0;
  unsigned long long m = 23;
  unsigned long long x = 17;
  unsigned long long y = 22;
  unsigned long long n;
  int y0 = getBitAtIndex(y, 0);

  int loopLimit = getNumBits(m);

  for (i = 0; i < loopLimit; i++) {
    int t0 = getBitAtIndex(T, 0);
    int Xi = getBitAtIndex(x, i);
    int xANDy = Xi & y0;
    n = (t0 | xANDy);
    T = (T + Xi * y + n * m) >> 1;
  }
  if (T >= m) {
    T = T - m;
  }
}

void printNum(uint128_t num) {
  printf("ms: %llu\nls: %llu\n", num.ms_bytes, num.ls_bytes);
}

int getBitAtIndex(unsigned long long num, int index) {
  if (index > (sizeof(num) * 8) - 1) {
    return -1;
  }

  if (((1 << index) & num) > 0) {
    return 1;
  }
  return 0;
}

int getNumBits(unsigned long long num) {
  int count = 0;

  while (num > 0) {
    count++;
    num >>= 1;
  }
  return count;
}
