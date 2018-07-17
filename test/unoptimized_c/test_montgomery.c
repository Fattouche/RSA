#include <stdio.h>

#include <montgomery_multiplication.h>
#include <uint128_t.h>

typedef struct _results {
  int passed;
  int failed;
} results;

void print_uint128_test_result(uint128_t actual, uint128_t expected,
                               const char* description, results* test_results) {
  if (equals_uint128(actual, expected)) {
    (test_results->passed)++;
  } else {
    (test_results->failed)++;
    printf("%s failed: ", description);
    printf("\nExpected: ");
    print_uint128(expected);
    printf("\nActual  : ");
    print_uint128(actual);
    printf("\n");
  }
}

void print_int_test_result(int actual, int expected, const char* description,
                           results* test_results) {
  if (actual == expected) {
    (test_results->passed)++;
    // printf("%s\n", description);
  } else {
    (test_results->failed)++;
    printf("%s failed: ", description);
    printf("Expected: %d", expected);
    printf("Actual: %d", actual);
  }
}

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
    uint128_t a_test = {0xa6e85ac4e8697c86ULL, 0x5f75288acbb2137eULL};

    uint128_t a_b_result = bitshift_uint128_right(a_test, 12);
    uint128_t a_b_expected = {0x000a6e85ac4e8697ULL, 0xc865f75288acbb21ULL};
    print_uint128_test_result(a_b_result, a_b_expected, "Right shift test 1",
                              &test_results);
  }
  {
    uint128_t a_test = {0xa6e85ac4e8697c86ULL, 0x5f75288acbb2137eULL};

    uint128_t a_b_result = bitshift_uint128_right(a_test, 68);
    uint128_t a_b_expected = {0, 0x0a6e85ac4e8697c8ULL};
    print_uint128_test_result(a_b_result, a_b_expected, "Right shift test 2",
                              &test_results);
  }
  {
    uint128_t a_test = {0ULL, 22ULL};

    uint128_t a_b_result = bitshift_uint128_right(a_test, 1);
    uint128_t a_b_expected = {0, 11ULL};
    print_uint128_test_result(a_b_result, a_b_expected, "Right shift test 3",
                              &test_results);
  }
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
    uint128_t x_test = {0xc6beec7602f3b06ULL, 0x5bb2ac322c1f95e1ULL};
    uint128_t y_test = {0xf665ffaa6dd4204ULL, 0xb29c6ad048eb9fb1ULL};
    uint128_t m_test = {0xfb10458be6c5468ULL, 0xe0b603ea54d107edULL};

    uint128_t mont_result = montgomery_multiplication(x_test, y_test, m_test);
    uint128_t mont_expected = {0x96b78d556a6a125LL, 0x3ff74a4cb7160fecULL};

    print_uint128_test_result(mont_result, mont_expected,
                              "High Montgomery multiplication test",
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
  printf("***** All Tests Run ******\n");
  printf("Passed: %d\n", test_results.passed);
  printf("Failed: %d\n", test_results.failed);
  printf("\n");

  return 0;
}
