#include <stdio.h>

#include <montgomery_multiplication.h>
#include <uint128_t.h>
#include "helper.h"

int main() {
  results test_results = {0, 0};
  {
    uint128_t a_test = {348503485ULL, 135321511ULL};
    uint128_t b_test = {198375328057230ULL, 984327520835ULL};

    uint128_t a_b_result = add_uint128(a_test, b_test);
    uint128_t a_b_expected = {198375676560715ULL, 984462842346ULL};
    print_uint128_test_result(a_b_result, a_b_expected, "Addition test 1",
                              &test_results);
  }

  {
    uint128_t a = {0x7ef335f0ec621ad5ULL, 0x2092c5b9b087254fULL};
    uint128_t b = {0x62a1951fce42e145ULL, 0x067aee5395f1d54cULL};

    uint128_t result = subtract_uint128(a, b);
    uint128_t expected = {0x1c51a0d11e1f3990ULL, 0x1a17d7661a955003ULL};
    print_uint128_test_result(result, expected, "Subtraction test 1",
                              &test_results);
  }
  {
    uint128_t a = {0x7ef335f0ec621ad5ULL, 0x067aee5395f1d54cULL};
    uint128_t b = {0x62a1951fce42e145ULL, 0x2092c5b9b087254fULL};

    uint128_t result = subtract_uint128(a, b);
    uint128_t expected = {0x1c51a0d11e1f398fULL, 0xe5e82899e56aaffdULL};
    print_uint128_test_result(result, expected, "Subtraction test 1",
                              &test_results);
  }
  {
    uint128_t a = {0ULL, 0ULL};
    uint128_t b = {0x62a1951fce42e145ULL, 0x2092c5b9b087254fULL};

    int result = greater_than_or_equal_uint128(a, b);
    int expected = 0;
    print_int_test_result(result, expected, "Subtraction test 1",
                          &test_results);

    result = greater_than_or_equal_uint128(b, a);
    expected = 1;
    print_int_test_result(result, expected, "Subtraction test 1",
                          &test_results);
  }

  printf("\n");
  printf("***** All uint128_t Tests Run ******\n");
  printf("Passed: %d\n", test_results.passed);
  printf("Failed: %d\n", test_results.failed);
  printf("\n");

  return 0;
}
