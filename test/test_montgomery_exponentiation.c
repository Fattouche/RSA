
#include <stdio.h>

#include <montgomery_exponentiation.h>
#include <uint128_t.h>
#include "helper.h"

int main() {
  results test_results = {0, 0};
  // {
  //   uint128_t a_test = {0ULL, 855ULL};
  //   uint128_t e_test = {0ULL, 2753ULL};
  //   uint128_t m_test = {0ULL, 3233ULL};
  //   uint128_t r_squared_mod_m = {0ULL, 1179ULL};
  //   uint128_t mont_result =
  //       montgomery_exponentiation(a_test, e_test, m_test, r_squared_mod_m);
  //   uint128_t mont_expected = {0LL, 123ULL};

  //   print_uint128_test_result(mont_result, mont_expected,
  //                             "Low Montgomery exponentiation test",
  //                             &test_results);
  // }

  {
    uint128_t a_test = {0xc6beec7602f3b06ULL, 0x5bb2ac322c1f95e1ULL};
    uint128_t e_test = {0xf665ffaa6dd4204ULL, 0xb29c6ad048eb9fb1ULL};
    uint128_t m_test = {0xfb10458be6c5468ULL, 0xe0b603ea54d107edULL};

    uint128_t r_squared_mod_m = {0xE7D6493C934B9DFULL, 0x0D35F285B481ED8EULL};

    uint128_t mont_result =
        montgomery_exponentiation(a_test, e_test, m_test, r_squared_mod_m);
    uint128_t mont_expected = {0x138F051C1385E56ULL, 0x2831894B321357F5ULL};

    print_uint128_test_result(mont_result, mont_expected,
                              "High Montgomery exponentiation test",
                              &test_results);
  }

  printf("\n");
  printf("***** All Montgomery Exponentiation Tests Run ******\n");
  printf("Passed: %d\n", test_results.passed);
  printf("Failed: %d\n", test_results.failed);
  printf("\n");

  return 0;
}