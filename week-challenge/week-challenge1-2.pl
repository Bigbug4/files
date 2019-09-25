#!/usr/bin/perl
use strict;
use warnings;

print "Please input your sentence:\n";
chomp(my $str = <STDIN>);
my $i = 0;
print "\n>>\nAchieve:\n$str => ";
$i = $str =~ s/e/E/g;
print "$str\nReplace 'e' to 'E' $i times.\n";
