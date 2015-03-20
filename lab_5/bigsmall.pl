#!/usr/bin/perl -w
#Walker

use Switch;

srand;

print "How much money do you have?" . "\n";
chomp($original_money = <STDIN>);
$current_money = $original_money;
@revenue_list = ("+\$$original_money");
while ($current_money > 0) { 
    $dice = int (rand 6) + 1 + int (rand 6) + 1 + int (rand 6) + 1;
    print "\n" . "What would you guess ? (b)ig/(s)mall or (q)uit" . "\n";
    chomp($choice = <STDIN>);
    if ($choice ne "q" && $choice ne "b" && $choice ne "s") {
        print "Invalid Input" . "\n";
    } else {
        if ($choice eq "q") {
            last;
        } else {
            print "How much would you bet ?" . "\n";
            chomp($bet = <STDIN>);
            if ($bet <= $current_money) {
                if ($choice eq "b") {
                    print "You bet $bet on Big" . "\n";
                } else {
                    print "You bet $bet on Small" . "\n";
                }
                if ($dice < 10) {
                    print "\n" . "The Result is Small" . "\n";
                } else {
                    print "\n" . "The Result is Big" . "\n";
                }
                if (($dice < 10 && $choice eq "s") || ($dice > 9 && $choice eq "b")) {
                    print "You Win!" . "\n";
                    $current_money += $bet;
                    @revenue_list = (@revenue_list, "+\$$bet");
                    print "You now have \$$current_money" . "\n";
                } else {
                    print "You Lose!" . "\n";
                    $current_money -= $bet;
                    @revenue_list = (@revenue_list, "-\$$bet");
                    print "You now have \$$current_money" . "\n";
                    if ($current_money == 0) {
                        print "\n" . "You don't have any money, you must quit!" . "\n";
                        last;
                    }
                }   
            } else {
                print "You bet more than you have!" . "\n";
            }
        }
    }
}
foreach my $revenue (@revenue_list) {
    print $revenue . "\n";
}
print "-----" . "\n";
print "\$$current_money" . "\n";
$difference = $current_money - $original_money;
if ($difference < 0) {
    $difference = $original_money - $current_money;
    print "\n" . "You have finally lost \$$difference! Goodbye!" . "\n";
} else {
    print "\n" . "You have finally win \$$difference! Goodbye!" . "\n";
}
