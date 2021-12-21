use strict;
use warnings;
use FindBin;
use lib "$FindBin::Bin/lib";

use Test::More 'no_plan';

use SPVM 'Resource::Zlib::V1_2';

is(SPVM::Resource::Zlib::V1_2->dummy, 1);
