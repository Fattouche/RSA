
#include <stdio.h>

#include <montgomery_multiplication.h>
#include <uint128_t.h>
#include "helper.h"

int main() {
  results test_results = {0, 0};
  {
    uint128_t x_test = {0ULL, 17ULL};
    uint128_t y_test = {0ULL, 22ULL};
    uint128_t m_test = {0ULL, 23ULL};

    uint128_t mont_result = montgomery_multiplication(x_test, y_test, m_test);
    uint128_t mont_expected = {0LL, 16ULL};

    print_uint128_test_result(mont_result, mont_expected,
                              "Low Montgomery multiplication test",
                              &test_results);
  }

  {
    uint128_t x_test = {0ULL, 0x6cfa30fa91130f5ULL};
    uint128_t y_test = {0ULL, 0x0c0ed06255619e7ULL};
    uint128_t m_test = {0ULL, 0xfd5d24299c7efd7ULL};

    uint128_t mont_result = montgomery_multiplication(x_test, y_test, m_test);

    uint128_t mont_expected = {0ULL, 0xd02b188f1076b4dULL};

    print_uint128_test_result(mont_result, mont_expected,
                              "Medium Montgomery multiplication test",
                              &test_results);
  }

  {
    uint128_t x_test = {0xc6beec7602f3b06ULL, 0x5bb2ac322c1f95e1ULL};
    uint128_t y_test = {0xf665ffaa6dd4204ULL, 0xb29c6ad048eb9fb1ULL};
    uint128_t m_test = {0xfb10458be6c5468ULL, 0xe0b603ea54d107edULL};

    uint128_t mont_result = montgomery_multiplication(x_test, y_test, m_test);
    uint128_t mont_expected = {0x0f8dcdc8e57bc403ULL, 0xf1e937f6a7d35a5aULL};

    print_uint128_test_result(mont_result, mont_expected,
                              "High Montgomery multiplication test",
                              &test_results);
  }

  printf("\n");
  printf("***** All Montgomery Multiplication Tests Run ******\n");
  printf("Passed: %d\n", test_results.passed);
  printf("Failed: %d\n", test_results.failed);
  printf("\n");

  return 0;
}