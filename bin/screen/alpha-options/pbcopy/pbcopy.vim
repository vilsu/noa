#!/usr/bin/perl

use strict;
use warnings;

open my $out, ">", "/tmp/pbcopy.pipe"
   or die "could not open pipe to pbcopy: $!\n";

print $out $_ while <>;

