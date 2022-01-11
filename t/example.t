use Test::More;

use strict;
use warnings;
use FindBin;

use lib "$FindBin::Bin/lib";

use SPVM 'MyZlib';

my $gz_file = "$FindBin::Bin/minitest.txt.gz";
SPVM::MyZlib->test_gzopen_gzread($gz_file);

ok(1);

done_testing;
