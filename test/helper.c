#include <stdio.h>
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
    printf("\n%s failed: \n\n", description);
    printf("Expected: ");
    print_uint128(expected);
    printf("Actual  : ");
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
    printf("%s failed: \n", description);
    printf("Expected: %d", expected);
    printf("Actual  : %d", actual);
  }
}