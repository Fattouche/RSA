#include <stdio.h>

#include <montgomery_multiplication.h>
#include <uint128_t.h>
#include "helper.h"

int main() {
  results test_results = {0, 0};
  {
    uint128_t a_test = {348503485ULL, 135321511ULL, 0};
    uint128_t b_test = {198375328057230ULL, 984327520835ULL, 0};

    uint128_t a_b_result = add_uint128(a_test, b_test);
    uint128_t a_b_expected = {198375676560715ULL, 984462842346ULL, 0};
    print_uint128_test_result(a_b_result, a_b_expected, "Addition test 1",
                              &test_results);
  }
  {
    uint128_t a_test = {0xFFFFFFFFFFFFFFFFULL, 0xFFFFFFFFFFFFFFFFULL, 0};
    uint128_t b_test = {0xFFFFFFFFFFFFFFFFULL, 0xFFFFFFFFFFFFFFFFULL, 0};

    uint128_t a_b_result = add_uint128(a_test, b_test);
    uint128_t a_b_expected = {0xFFFFFFFFFFFFFFFFULL, 0xFFFFFFFFFFFFFFFEULL, 1};
    print_uint128_test_result(a_b_result, a_b_expected, "Addition test with carry",
                              &test_results);

    uint128_t c = bitshift_uint128_right(a_b_result, 1);
    uint128_t c_expected = {0xFFFFFFFFFFFFFFFFULL, 0xFFFFFFFFFFFFFFFFULL, 0};
    print_uint128_test_result(c, c_expected, "Bitshift test with carry 1", 
      &test_results);

    uint128_t d = {0x0, 0xFF, 1};
    uint128_t d_result = bitshift_uint128_right(d, 1);
    uint128_t d_expected = {0x8000000000000000ULL, 0x7F, 0};
    print_uint128_test_result(d_result, d_expected, "Bitshift test with carry 2",
      &test_results);
  }
  {
    uint128_t a_test = {0xa6e85ac4e8697c86ULL, 0x5f75288acbb2137eULL, 0};

    uint128_t a_b_result = bitshift_uint128_right(a_test, 12);
    uint128_t a_b_expected = {0x000a6e85ac4e8697ULL, 0xc865f75288acbb21ULL, 0};
    print_uint128_test_result(a_b_result, a_b_expected, "Right shift test 1",
                              &test_results);
  }
  {
    uint128_t a_test = {0xa6e85ac4e8697c86ULL, 0x5f75288acbb2137eULL, 0};

    uint128_t a_b_result = bitshift_uint128_right(a_test, 68);
    uint128_t a_b_expected = {0, 0x0a6e85ac4e8697c8ULL, 0};
    print_uint128_test_result(a_b_result, a_b_expected, "Right shift test 2",
                              &test_results);
  }
  {
    uint128_t a_test = {0ULL, 22ULL, 0};

    uint128_t a_b_result = bitshift_uint128_right(a_test, 1);
    uint128_t a_b_expected = {0, 11ULL, 0};
    print_uint128_test_result(a_b_result, a_b_expected, "Right shift test 3",
                              &test_results);
  }

  {
    uint128_t a = {0x7ef335f0ec621ad5ULL, 0x2092c5b9b087254fULL, 0};
    uint128_t b = {0x62a1951fce42e145ULL, 0x067aee5395f1d54cULL, 0};

    uint128_t result = subtract_uint128(a, b);
    uint128_t expected = {0x1c51a0d11e1f3990ULL, 0x1a17d7661a955003ULL, 0};
    print_uint128_test_result(result, expected, "Subtraction test 1",
                              &test_results);
  }
  {
    uint128_t a = {0x7ef335f0ec621ad5ULL, 0x067aee5395f1d54cULL, 0};
    uint128_t b = {0x62a1951fce42e145ULL, 0x2092c5b9b087254fULL, 0};

    uint128_t result = subtract_uint128(a, b);
    uint128_t expected = {0x1c51a0d11e1f398fULL, 0xe5e82899e56aaffdULL, 0};
    print_uint128_test_result(result, expected, "Subtraction test 1",
                              &test_results);
  }
  {
    uint128_t a = {0ULL, 0ULL, 0};
    uint128_t b = {0x62a1951fce42e145ULL, 0x2092c5b9b087254fULL, 0};

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
  printf("***** All Tests Run ******\n");
  printf("Passed: %d\n", test_results.passed);
  printf("Failed: %d\n", test_results.failed);
  printf("\n");

  return 0;
}
