#!/usr/bin/perl
use strict;
use warnings;

print "Please input a number:\n";
chomp(my $n = <STDIN>);
my $i = 0;
print "\n>>\nAchieve:\n";
for(my $i = 1;$i<=$n;$i++){
    if($i%3==0){
	if($i%5==0){
	   print "fizzbuzz\n";
	}
	else{
	   print "fizz\n";
	}
    }
    elsif($i%5==0){
	print "buzz\n";
	}
    else{
	print "$i\n";
    }
}

print "\nFinished.\n";

