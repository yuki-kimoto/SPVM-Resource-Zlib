package SPVM::Resource::Zlib;

our $VERSION = '0.01';

1;

=head1 NAME

SPVM::Resource::Zlib - zlib v1.2 Resources

=head1 DESCRIPTION

SPVM::Resource::Zlib is L<zlib|https://zlib.net/"> porting to L<Perl/SPVM|SPVM>.

Current zlib version is 1.2.11.

B<SPVM::Resource::Zlib> is based on L<SPVM>.

B<L<SPVM> is yet before 1.0 released. L<SPVM> is changed without warnings. There will be quite a lot of changes until I feel enough good.>

=head1 SYNOPSYS

This example calls zlib functions from Perl.

B<MyZlib.pl>

  use strict;
  use warnings;
  use FindBin;

  use lib "$FindBin::Bin/lib";

  use SPVM 'MyZlib';

  my $gz_file = "$FindBin::Bin/minitest.txt.gz";
  SPVM::MyZlib->test_gzopen_gzread($gz_file);

B<lib/SPVM/MyZlib.spvm>

  class MyZlib {
    use Resource::Zlib;
    
    native static method test_gzopen_gzread : void ($file : string);
  }

B<lib/SPVM/MyZlib.config>

  use strict;
  use warnings;

  my $config = SPVM::Builder::Config->new_c99;

  $config->use('Resource::Zlib');

  $config;

B<lib/SPVM/MyZlib.c>

  #include "spvm_native.h"

  #include <zlib.h>

  int32_t SPVM__MyZlib__test_gzopen_gzread(SPVM_ENV* env, SPVM_VALUE* stack) {
    (void)env;
    
    void* sp_file = stack[0].oval;
    
    const char* file = env->get_chars(env, sp_file);
    
    z_stream z;

    gzFile gz_fh = gzopen(file, "rb");
    
    if (gz_fh == NULL){
      return env->die(env, "Can't open file \"%s\"\n", file);
    }
    
    char buffer[256] = {0};
    int32_t cnt;
    while((cnt = gzread(gz_fh, buffer, sizeof(buffer))) > 0){

    }

    printf("%s", buffer);
    
    return 0;
  }
