#!/usr/bin/perl -w
#Prime number counting

$boundary = $ARGV[0];
@primes = (2);
@range = (3 .. $boundary);

MAIN_LOOP:
foreach my $number (@range) {
    foreach my $prime (@primes) {
        if ($number % $prime == 0) {
            next MAIN_LOOP;
        }
    }
    push @primes, $number;
}

foreach my $prime (@primes) {
    print "$prime, ";
}
print "\n";
$n = @primes;
print "We found $n prime numbers in total." . "\n";
