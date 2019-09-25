#!/usr/bin/perl
use strict;
use warnings;
# This program aims to count the single amino frequency in each peptide.

open(IN, "$ARGV[0]");
open(OUT, ">$ARGV[1]");

while(my $pep=<IN>){
   my %count;
   my %freq;
   print OUT $pep;
   chomp($pep);
   my @list = split("",$pep);
   foreach(@list){
   ++$count{$_};
    }
   my @key = sort keys %count;
   foreach my $a (@key){  
     $freq{$a}=$count{$a}/($#list+1); 
      print OUT "amino:$a times:$count{$a} frequency:$freq{$a}\n";
    }
    print OUT "\n";
}
		
close IN;
close OUT;
