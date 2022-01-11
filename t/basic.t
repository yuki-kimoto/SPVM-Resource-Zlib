use strict;
use warnings;
use FindBin;
use lib "$FindBin::Bin/lib";

use Test::More;

use SPVM 'ZlibTest';

{
  my $gz_file = "$FindBin::Bin/minitest.txt.gz";
  ok(SPVM::ZlibTest->test_gzopen_gzread($gz_file));
}

done_testing;
