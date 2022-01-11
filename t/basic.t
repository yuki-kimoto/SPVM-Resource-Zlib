use strict;
use warnings;
use FindBin;
use lib "$FindBin::Bin/lib";

use Test::More 'no_plan';

use SPVM 'Resource::Zlib::V1_2';

use SPVM 'ZlibTest';

is(SPVM::Resource::Zlib::V1_2->dummy, 1);

{
  my $gz_file = "$FindBin::Bin/minitest.txt.gz";
  ok(SPVM::ZlibTest->test_gzopen_gzread($gz_file));
}
