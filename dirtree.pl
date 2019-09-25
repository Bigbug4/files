#!/usr/bin/perl

my $path = shift || ".";
print "$path\n"; 
traverse($path);
 
sub traverse {
    my ($thing) = @_;
 
    return tree ($thing) if not -d $thing;
    opendir (my $dh, $thing) or die;
    while (my $sub = readdir $dh) {
        next if $sub eq '.' or $sub eq '..';
		my $path = tree ("$thing/$sub");
        print "$path\n";
        traverse("$thing/$sub");
    }
    close $dh;
    return;
}

sub tree {
	my $path = shift;
	$path =~ s/[^\/]*\//|--- /g;
	$path =~ s/--- \|/    |/g;
	return $path;
}
	 
