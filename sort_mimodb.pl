#!/usr/bin/perl
use strict;
use warnings;
# This program aims to sort the peptides and count the frequency

open(IN, "$ARGV[0]");
open(OUT, "> $ARGV[1]");

my %count;
while(<IN>){
   ++$count{$_};
}
my @key = sort{$count{$b}<=>$count{$a} || $a cmp $b} keys %count;
foreach (@key){
   print OUT "$count{$_} $_";
}
		
close IN;
close OUT;
