
#include <stdio.h>

#include <montgomery_exponentiation.h>
#include <uint128_t.h>
#include <helper.c>

int main() {
  results test_results = {0, 0};
  {
    uint128_t a_test = {0ULL, 17ULL};
    uint128_t b_test = {0ULL, 22ULL};
    uint128_t m_test = {0ULL, 23ULL};

    uint128_t mont_result = montgomery_exponentiation(a_test, b_test, m_test);
    uint128_t mont_expected = {0LL, 1ULL};

    print_uint128_test_result(mont_result, mont_expected,
                              "Low Montgomery exponentiation test",
                              &test_results);
  }

  printf("\n");
  printf("***** All Tests Run ******\n");
  printf("Passed: %d\n", test_results.passed);
  printf("Failed: %d\n", test_results.failed);
  printf("\n");

  return 0;
}