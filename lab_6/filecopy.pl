#!/usr/bin/perl -w
#Copy file

use strict;

if ($#ARGV != 1) {
    print "You must specify exactly two arguments", "\n";
    exit;
}

if (-e $ARGV[1]) {
    print "Do you want to overwrite $ARGV[1]? ";
    my $res = <STDIN>;
    chomp $res;
    if (lc(substr($res, 0, 1)) ne 'y') { 
        print "Overwrite permission denied.", "\n";
        exit; 
    }
}

open(INFILE, $ARGV[0]) or die "Cannot open $ARGV[0]: $!.\n";
open(OUTFILE, ">$ARGV[1]") or die "Cannot write $ARGV[1]: $!.\n";

while (<INFILE>) {
    print OUTFILE $_;
}
print "Operation successful!", "\n";

close INFILE;
close OUTFILE;

