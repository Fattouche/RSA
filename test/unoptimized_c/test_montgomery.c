#include <stdio.h>

#include <montgomery_multiplication.h>

void print_128_test_result(uint128_t actual, uint128_t expected, const char* description)
{
  if (equals_128(actual, expected))
  {
    printf("%s\n", description);
  }
  else
  {
    printf("%s failed: ", description);
    printf("Expected: %llu, %llu ", a_b_expected.ms_bytes, a_b_expected.ls_bytes);
    printf("Actual: %llu, %llu\n", a_b_result.ms_bytes, a_b_result.ls_bytes);
  }
}

int main()
{
  {
    uint128_t a_test = {135321511, 348503485};
    uint128_t b_test = {984327520835, 198375328057230};

    uint128_t a_b_result = add_128(a_test, b_test);
    uint128_t a_b_expected = {984462842346, 198375676560715};
    print_128_test_result(a_b_result, a_b_expected, "Addition test 1");
  }
  {
    uint128_t a_test = {135321511, 348503485};
    uint128_t b_test = {984327520835, 198375328057230};

    uint128_t a_b_result = add_128(a_test, b_test);
    uint128_t a_b_expected = {984462842346, 198375676560715};
    print_128_test_result(a_b_result, a_b_expected, "Addition test 2");
  }



  return 0;
}
