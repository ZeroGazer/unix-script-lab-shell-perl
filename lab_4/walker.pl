#!/usr/bin/perl -w
#Walker

use Switch;

print "Input an integer size range from 2 on..." . "\n";
chomp($size = <STDIN>);

$x = int rand ($size + 1);
$y = int rand ($size + 1);

while (1) {
    print "Current coordinate: $x, $y" . "\n";
    print "Which direction to go? Enter L for left, R for right, U for up, D"
        . "for down!" . "\n";
    print "Enter Q if you want to quit!" . "\n";
    chomp($input = <STDIN>);
    $is_moved = 0;
    switch ($input) {
        case "L" {
            if ($x != 1) {
                $x--;
                $is_moved = 1;
            }
        }
        case "R" {
            if ($x != $size) {
                $x++;
                $is_moved = 1;
            }
        }
        case "U" {
            if ($y != 1) {
                $y--;
                $is_moved = 1;
            }
        }
        case "D" {
            if ($y != $size) {
                $y++;
                $is_moved = 1;
            }
        }
        case "Q" {
            exit;
        }
    }
    if (!$is_moved) {
        print "Cannot move this way!" . "\n";
    }
}

