#include <stdio.h>

#include <montgomery_multiplication.h>
#include <uint128_t.h>

typedef struct _results {
  int passed;
  int failed;
} results;

void print_128_test_result(uint128_t actual, uint128_t expected, const char* description, results* test_results)
{
  if (equals_128(actual, expected))
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
    uint128_t a_test = {135321511ULL, 348503485ULL};
    uint128_t b_test = {984327520835ULL, 198375328057230ULL};

    uint128_t a_b_result = add_128(a_test, b_test);
    uint128_t a_b_expected = {984462842346ULL, 198375676560715ULL};
    print_128_test_result(a_b_result, a_b_expected, "Addition test 1", &test_results);
  }

  printf("\n");
  printf("***** All Tests Run ******\n");
  printf("Passed: %d\n", test_results.passed);
  printf("Failed: %d\n", test_results.failed);
  printf("\n");

  return 0;
}
