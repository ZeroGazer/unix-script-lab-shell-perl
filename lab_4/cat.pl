#!/usr/bin/perl -w
#Find all lines that have more "cat"s than "dog"s

use Switch;

while (<STDIN>) {
    chomp(my $line = $_);
    @lines = (@lines, $line);
}

$line_num = 0;
foreach my $line(@lines) {
    @items = split(" ", $line);
    $cat = 0;
    $dog = 0;
    foreach my $item(@items) {
        switch ($item) {
            case "cat" {
                $cat++;
            }
            case "dog" {
                $dog++;
            }
        }
    }
    $line_num++;
    if($cat > $dog) {
        print "cats win at line ${line_num}" . "\n";
    }
}
