#!/usr/bin/perl
use strict;
use warnings;
# This program aims to create the 200 kinds of dipeptides.

open(OUT, "> $ARGV[0]");
my @amino = qw(A C D E F G H I K L M N P Q R S T V W Y);

foreach my $a1(@amino){
    foreach my $a2(@amino){; 	
	print OUT "$a1$a2\n";              
	    }
    print OUT "\n";    
    }
