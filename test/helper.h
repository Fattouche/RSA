#ifndef HELPER_H
#define HELPER_H

#include <uint128_t.h>

// test results struct
typedef struct _results {
  int passed;
  int failed;
} results;

// print the test results with uint128_t values
void print_uint128_test_result(uint128_t actual, uint128_t expected,
                               const char* description, results* test_results);

// print the test results with int values
void print_int_test_result(int actual, int expected, const char* description,
                           results* test_results);

#endif  // HELPER_H