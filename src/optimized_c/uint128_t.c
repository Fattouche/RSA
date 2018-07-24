#include "uint128_t.h"

void error(const char* description) {
  printf("ERROR: %s", description);
  exit(1);
}

uint128_t and_uint128(uint128_t left, uint128_t right) {
  uint128_t result;

  result.ls_bytes = left.ls_bytes & right.ls_bytes;
  result.ms_bytes = left.ms_bytes & right.ms_bytes;

  return result;
}

uint128_t or_uint128(uint128_t left, uint128_t right) {
  uint128_t result;

  result.ls_bytes = left.ls_bytes | right.ls_bytes;
  result.ms_bytes = left.ms_bytes | right.ms_bytes;

  return result;
}

uint128_t add_uint128(uint128_t left, uint128_t right) {
  uint128_t result = {0, 0};

  result.ls_bytes = left.ls_bytes + right.ls_bytes;

  // Check if overflow occured
  if (result.ls_bytes < left.ls_bytes) {
    result.ms_bytes = 1;
  }

  result.ms_bytes += (left.ms_bytes + right.ms_bytes);

  return result;
}

int equals_uint128(uint128_t left, uint128_t right) {
  if (left.ls_bytes == right.ls_bytes && left.ms_bytes == right.ms_bytes) {
    return 1;
  }
  return 0;
}

uint128_t multiply_uint128(int bit, uint128_t multiplier) {
  if (bit) {
    return multiplier;
  } else {
    uint128_t ret = {0, 0};
    return ret;
  }
}

#define NUM_BITS_UNSIGNED_LONG_LONG 64

uint128_t bitshift_uint128_right(uint128_t input_num) {
  uint128_t result = {0, 0};

  result.ls_bytes = input_num.ls_bytes >> 1;

  // Isolate the bits that are going to be lost by right shifting the ms_bytes
  unsigned long long crossover =
      input_num.ms_bytes & ((input_num.ms_bytes << 1) - 1);

  result.ms_bytes = input_num.ms_bytes >> 1;

  // Put the crossover bits onto the leftmost part of ls_bytes
  result.ls_bytes |=
      (crossover << (NUM_BITS_UNSIGNED_LONG_LONG - 1));

  return result;
}

uint128_t subtract_uint128(uint128_t left, uint128_t right) {
  if (left.ms_bytes < right.ms_bytes) {
    error("Underflow on 128 bit subtraction\n");
  } else if (left.ms_bytes == right.ms_bytes &&
             left.ls_bytes < right.ms_bytes) {
    error("Underflow on 128 bit subtraction\n");
  }

  uint128_t result = {0, 0};

  result.ls_bytes = left.ls_bytes - right.ls_bytes;

  if (result.ls_bytes > left.ls_bytes) {
    // Then underflow occured - the result is actually correct, but we just
    // need to carry a bit from the ms_bytes
    left.ms_bytes -= 1;
  }

  result.ms_bytes = left.ms_bytes - right.ms_bytes;

  return result;
}

int greater_than_or_equal_uint128(uint128_t left, uint128_t right) {
  if (left.ms_bytes > right.ms_bytes) {
    return 1;
  }
  if (left.ms_bytes == right.ms_bytes && left.ms_bytes == 0) {
    if (left.ls_bytes >= right.ls_bytes) {
      return 1;
    }
  }
  return 0;
}

void print_uint128(uint128_t num) {
  printf("0x%016llx%016llx", num.ms_bytes, num.ls_bytes);
}

int getBitAtIndex(uint128_t num, int index) {
  if (index > 127) {
    error("Bit index out of range");
  }

  if (index >= 64) {
    if ((((unsigned long long)1 << (index - 64)) & num.ms_bytes) > 0) {
      return 1;
    }
    return 0;
  }

  if ((((unsigned long long)1 << index) & num.ls_bytes) > 0) {
    return 1;
  }
  return 0;
}

int getNumBits(uint128_t num) {
  int least_significant = getLongBits(num.ls_bytes);
  int most_significant = getLongBits(num.ms_bytes);
  if (most_significant == 0) {
    return least_significant;
  }
  return most_significant + 64;
}

int getLongBits(unsigned long long num) {
  int count = 0;

  while (num > 0) {
    count++;
    num >>= 1;
  }
  return count;
}
