#include <stdio.h>

#include <montgomery_multiplication.h>
#include <uint128_t.h>

typedef struct _results {
  int passed;
  int failed;
} results;

void print_uint128_test_result(uint128_t actual, uint128_t expected, const char* description, results* test_results)
{
  if (equals_uint128(actual, expected))
  {
    (test_results->passed)++;
    //printf("%s\n", description);
  }
  else
  {
    (test_results->failed)++;
    printf("%s failed: ", description);
    printf("Expected: %llu, %llu ", expected.ms_bytes, expected.ls_bytes);
    printf("Actual: %llu, %llu\n", actual.ms_bytes, actual.ls_bytes);
  }
}

int main()
{
  results test_results = {0, 0};

  {  
    uint128_t a_test = {348503485ULL, 135321511ULL};
    uint128_t b_test = {198375328057230ULL, 984327520835ULL};

    uint128_t a_b_result = add_uint128(a_test, b_test);
    uint128_t a_b_expected = {198375676560715ULL, 984462842346ULL};
    print_uint128_test_result(a_b_result, a_b_expected, "Addition test 1", &test_results);
  }
  {
    uint128_t a_test = {0xa6e85ac4e8697c86ULL, 0x5f75288acbb2137eULL};

    uint128_t a_b_result = bitshift_uint128_right(a_test, 12);
    uint128_t a_b_expected = {0x000a6e85ac4e8697ULL, 0xc865f75288acbb21ULL};
    print_uint128_test_result(a_b_result, a_b_expected, "Right shift test 1", &test_results);
  }
  {
    uint128_t a_test = {0xa6e85ac4e8697c86ULL, 0x5f75288acbb2137eULL};

    uint128_t a_b_result = bitshift_uint128_right(a_test, 68);
    uint128_t a_b_expected = {0, 0x0a6e85ac4e8697c8ULL};
    print_uint128_test_result(a_b_result, a_b_expected, "Right shift test 2", &test_results);
  }

  printf("\n");
  printf("***** All Tests Run ******\n");
  printf("Passed: %d\n", test_results.passed);
  printf("Failed: %d\n", test_results.failed);
  printf("\n");

  return 0;
}
