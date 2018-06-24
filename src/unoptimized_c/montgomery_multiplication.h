#include <limits.h>
#include <stdio.h>

typedef struct _uint128_t {
  // Least significant 8 bytes
  unsigned long long ls_bytes;

  // Most significant 8 bytes
  unsigned long long ms_bytes;
} uint128_t;

void montgomery_multiplication();
