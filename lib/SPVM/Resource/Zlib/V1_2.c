#include "spvm_native.h"

#include <zlib.h>

int32_t SPVM__Resource__Zlib__V1_2__dummy(SPVM_ENV* env, SPVM_VALUE* stack) {
  (void)env;
  
  stack[0].ival = 1;
  
  return 0;
}
