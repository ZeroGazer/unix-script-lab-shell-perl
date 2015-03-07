#!/usr/bin/perl -w
#Compute gcd of two numbers

if ($ARGV[0] < $ARGV[1]) {
    $a = $ARGV[1];
    $b = $ARGV[0];
} else {
    $a = $ARGV[0];
    $b = $ARGV[1];
}
if ($b != 0) {
    while ($b != 0) {
    $t = $b;
    $b = $a % $b;
    $a = $t;
    }
}
print "The gcd of $ARGV[0] and $ARGV[1] is $a \n";
