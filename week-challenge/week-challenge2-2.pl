#!/usr/bin/perl
use strict;
use warnings;

print "Please input a number:\n";
chomp(my $n = <STDIN>);
my $i = 0;
print "\n>>\nAchieve:\n";
for(my $i = 1;$i<=$n;$i++){
    print $i%3==0&&$i%5==0? "fizzbuzz\n":($i%3==0? "fizz\n":($i%3==0? "buzz\n":"$i\n"));
}
print "\nFinished.\n";

