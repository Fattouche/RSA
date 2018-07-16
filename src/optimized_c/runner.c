#include "montgomery_multiplication.h"

int main() {
  uint128_t x = {0, 17ULL};
  uint128_t y = {0, 22ULL};
  uint128_t m = {0, 23ULL};
  uint128_t result = montgomery_multiplication(x, y, m);
  printNum(result);
  return 0;
}
