#include "uint128_t.h"

void error(const char* description)
{
  printf("ERROR: %s", description);
  exit(1);
}

uint128_t and_128(uint128_t left, uint128_t right)
{
  uint128_t result;

  result.ls_bytes = left.ls_bytes & right.ls_bytes;
  result.ms_bytes = left.ms_bytes & right.ms_bytes;

  return result;
}

uint128_t or_128(uint128_t left, uint128_t right)
{
  uint128_t result;

  result.ls_bytes = left.ls_bytes | right.ls_bytes;
  result.ms_bytes = left.ms_bytes | right.ms_bytes;

  return result;
}

uint128_t add_128(uint128_t left, uint128_t right)
{
  uint128_t result = {0, 0};

  result.ls_bytes = left.ls_bytes + right.ls_bytes;

  // Check if overflow occured
  if (result.ls_bytes < left.ls_bytes)
  {
    result.ms_bytes = 1;
  }

  result.ms_bytes += (left.ms_bytes + right.ms_bytes);

  if (result.ms_bytes < left.ms_bytes)
  {
    error("Overflow on addition of 128 bits!\n");
  }

  return result;
}

int equals_128(uint128_t left, uint128_t right)
{
  if (left.ls_bytes == right.ls_bytes && left.ms_bytes == right.ms_bytes)
  {
    return 1;
  }
  else
  {
    return 0;
  }
}

uint128_t bitshift_128_right(uint128_t input_num, uint128_t num_bits_to_shift)
{
  uint128_t result;

  return result;
}