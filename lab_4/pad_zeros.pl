#!/usr/bin/perl -w
#Pad zeros

$length = $ARGV[0];
while(<STDIN>) {
    $line = $_;
    chomp($line);
    if ($line) {
        $num_digits = length($line);
        $zero_digits = $length - $num_digits;
        print "0" x $zero_digits . $line . "\n";
    } else {
        print "*" x $length . "\n";
    }
}
