package SPVM::Resource::Zlib;

our $VERSION = '0.01';

1;

=head1 Name

SPVM::Resource::Zlib - Resource of zlib Library

=head1 Description

SPVM::Resource::Zlib is a L<resource|SPVM::Document::Resource> of L<SPVM> for the L<zlib|https://github.com/madler/zlib> library.

=head1 Usage

MyClass.config:
  
  my $config = SPVM::Builder::Config->new_c99(file => __FILE__);

  $config->use_resource('Resource::Zlib');

  $config;

MyClass.c:
  
  #include <zlib.h>
  
  const char* file = "foo.gz";
  
  gzFile gz_fh = gzopen(file, "rb");

=head1 Original Product

L<zlib|https://github.com/madler/zlib>

=head1 Original Product Version

L<zlib 1.2.11|https://github.com/madler/zlib/releases/tag/v1.2.11>

=head1 Language

The C language

=head1 Language Specification

GNU C99

=head1 Required Libraries

None.

=head1 Required Linker Flags

None.

=head1 Header Files

=over 2

=item * C<spvm_socket_util.h>

=item * C<crc32.h>

=item * C<deflate.h>

=item * C<gzguts.h>

=item * C<inffast.h>

=item * C<inffixed.h>

=item * C<inflate.h>

=item * C<inftrees.h>

=item * C<trees.h>

=item * C<zconf.h>

=item * C<zlib.h>

=item * C<zutil.h>

=back

=head1 Source Files

=over 2

=item * C<adler32.c>

=item * C<compress.c>

=item * C<crc32.c>

=item * C<deflate.c>

=item * C<gzclose.c>

=item * C<gzlib.c>

=item * C<gzread.c>

=item * C<gzwrite.c>

=item * C<infback.c>

=item * C<inffast.c>

=item * C<inflate.c>

=item * C<inftrees.c>

=item * C<trees.c>

=item * C<uncompr.c>

=item * C<zutil.c>

=back

=head1 Compiler Flags

=over2

=item * -D_GNU_SOURCE

=back

=head1 Author

Yuki Kimoto C<kimoto.yuki@gmail.com>
