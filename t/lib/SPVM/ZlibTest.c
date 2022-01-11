#include "spvm_native.h"

#include <zlib.h>

int32_t SPVM__ZlibTest__test_gzopen_gzread(SPVM_ENV* env, SPVM_VALUE* stack) {
  (void)env;
  
  void* sp_file = stack[0].oval;
  
  const char* file = env->get_chars(env, sp_file);
  
  z_stream z;

  gzFile gz_fh = gzopen(file, "rb");
  
  if (gz_fh == NULL){
    stack[0].ival = 0;
    fprintf(stderr, "Can't open file \"%s\"\n", file);
    return 0;
  }
  

  char buf[256] = {0};
  int32_t cnt;
  while((cnt = gzread(gz_fh, buf, sizeof(buf))) > 0){
    
  }
  
  if (strcmp(buf, "aabbcc\n") != 0) {
    stack[0].ival = 0;
    return 0;
  }
  
  stack[0].ival = 1;
  
  return 0;
}
