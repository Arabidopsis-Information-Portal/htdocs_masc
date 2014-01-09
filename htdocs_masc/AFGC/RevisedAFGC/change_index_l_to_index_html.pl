#!/usr/local/bin/perl -w
use strict;

my $filename = $ARGV[0];
open(IN, $filename);
my @lines = <IN>;
close(IN);

for my $i (0..$#lines) {
    $lines[$i] =~ s/indexL\.htm/index.html/;
}

open(IN, ">$filename");
for my $l (@lines) {
    print IN $l;
}
close(IN);
