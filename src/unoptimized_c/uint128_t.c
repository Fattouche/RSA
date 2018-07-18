#include "uint128_t.h"

void error(const char* description) {
  printf("ERROR: %s", description);
  exit(1);
}

// Ignores carry bit, since carry bit is only needed right before the bitshift
// in montgomery multiplication
uint128_t and_uint128(uint128_t left, uint128_t right) {
  uint128_t result;

  result.ls_bytes = left.ls_bytes & right.ls_bytes;
  result.ms_bytes = left.ms_bytes & right.ms_bytes;

  return result;
}

// Ignores carry bit, since carry bit is only needed right before the bitshift
// in montgomery multiplication
uint128_t or_uint128(uint128_t left, uint128_t right) {
  uint128_t result;

  result.ls_bytes = left.ls_bytes | right.ls_bytes;
  result.ms_bytes = left.ms_bytes | right.ms_bytes;

  return result;
}

// Ignores carry bit of operands, since carry bit is only needed right before 
// the bitshift in montgomery multiplication
uint128_t add_uint128(uint128_t left, uint128_t right) {
  uint128_t result = {0, 0, 0};

  result.ls_bytes = left.ls_bytes + right.ls_bytes;

  // Check if overflow occured
  char ls_overflow = 0;
  if (result.ls_bytes < left.ls_bytes) {
    ls_overflow = 1;
  }

  if (left.ms_bytes + ls_overflow < left.ms_bytes)
  {
    // Overflow occured; need carry bit
    result.carry_bit = 1;
  }

  result.ms_bytes = (left.ms_bytes + ls_overflow + right.ms_bytes);

  if (result.ms_bytes < left.ms_bytes + ls_overflow) {
    // Overflow occured; need carry bit
    result.carry_bit = 1;
  }

  return result;
}

int equals_uint128(uint128_t left, uint128_t right) {
  if (left.ls_bytes == right.ls_bytes && left.ms_bytes == right.ms_bytes
      && left.carry_bit == right.carry_bit) {
    return 1;
  }
  return 0;
}

// Ignores carry bit, since carry bit is only needed right before the bitshift
// in montgomery multiplication
uint128_t multiply_uint128(int bit, uint128_t multiplier) {
  if (bit) {
    return multiplier;
  } else {
    uint128_t ret = {0, 0, 0};
    return ret;
  }
}


uint128_t bitshift_uint128_right(uint128_t input_num,
                                 size_t num_bits_to_shift) {
  size_t num_bits_in_unsigned_long_long = CHAR_BIT * sizeof(unsigned long long);

  uint128_t result = {0, 0, 0};

  if (num_bits_to_shift < num_bits_in_unsigned_long_long) {
    result.ls_bytes = input_num.ls_bytes >> num_bits_to_shift;

    // Isolate the bits that are going to be lost by right shifting the ms_bytes
    unsigned long long crossover =
        input_num.ms_bytes & ((input_num.ms_bytes << num_bits_to_shift) - 1);

    result.ms_bytes = input_num.ms_bytes >> num_bits_to_shift;

    // Add the carry bit, if appropriate
    if (input_num.carry_bit == 1) {
      result.ms_bytes += 
        ((unsigned long long)1 << (num_bits_in_unsigned_long_long - num_bits_to_shift));
    }

    // Put the crossover bits onto the leftmost part of ls_bytes
    result.ls_bytes |=
        (crossover << (num_bits_in_unsigned_long_long - num_bits_to_shift));
        
  } else if (num_bits_to_shift < num_bits_in_unsigned_long_long * 2) {
    result.ms_bytes = 0;
    result.ls_bytes = input_num.ms_bytes >>
                      (num_bits_to_shift - num_bits_in_unsigned_long_long);

    // Add the carry bit, if appropriate
    if (input_num.carry_bit == 1) {
      result.ls_bytes += 
        ((unsigned long long)1 << (num_bits_in_unsigned_long_long * 2 - num_bits_to_shift));
    }
  }

  return result;
}

// Ignores carry bit, since carry bit is only needed right before the bitshift
// in montgomery multiplication
uint128_t subtract_uint128(uint128_t left, uint128_t right) {
  if (left.ms_bytes < right.ms_bytes) {
    error("Underflow on 128 bit subtraction\n");
  } else if (left.ms_bytes == right.ms_bytes &&
             left.ls_bytes < right.ms_bytes) {
    error("Underflow on 128 bit subtraction\n");
  }

  uint128_t result = {0, 0, 0};

  result.ls_bytes = left.ls_bytes - right.ls_bytes;

  if (result.ls_bytes > left.ls_bytes) {
    // Then underflow occured - the result is actually correct, but we just
    // need to carry a bit from the ms_bytes
    left.ms_bytes -= 1;
  }

  result.ms_bytes = left.ms_bytes - right.ms_bytes;

  return result;
}

// Ignores carry bit, since carry bit is only needed right before the bitshift
// in montgomery multiplication
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
  printf("0x%d%016llx%016llx\n", num.carry_bit, num.ms_bytes, num.ls_bytes);
}

// Ignores carry bit, since carry bit is only needed right before the bitshift
// in montgomery multiplication
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

// Ignores carry bit, since carry bit is only needed right before the bitshift
// in montgomery multiplication
int getNumBits(uint128_t num) {
  int least_significant = getLongBits(num.ls_bytes);
  int most_significant = getLongBits(num.ms_bytes);
  if (most_significant == 0) {
    return least_significant;
  }
  return most_significant + 64;
}

// Ignores carry bit, since carry bit is only needed right before the bitshift
// in montgomery multiplication
int getLongBits(unsigned long long num) {
  int count = 0;

  while (num > 0) {
    count++;
    num >>= 1;
  }
  return count;
}
