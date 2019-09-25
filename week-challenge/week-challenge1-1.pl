#!/usr/bin/perl
use strict;
use warnings;

print "Please input your sentence:\n";
chomp(my $str = <STDIN>);
my $i = 0;
print "\n>>\nAchieve:\n$str => ";
replace($str);
print "$str\nReplace 'e' to 'E' $i times.\n";

sub replace{
    if ($str =~ /e/){
        $str =~ s/e/E/;
	$i = $i +1;
        replace($str);
 	}
    return ;
}
