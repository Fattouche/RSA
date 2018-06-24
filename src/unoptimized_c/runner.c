#include "montgomery_multiplication.h"

int main() {
  uint128_t result = montgomery_multiplication(17, 22, 23);
  printNum(result);
  return 0;
}
