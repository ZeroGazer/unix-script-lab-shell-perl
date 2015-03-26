#!/usr/bin/perl -w
#Sudoku game

# first read the file and store the data in some 2Darrary named dlist
$line_num = 0;
while (<>) {
    chomp;
    for ($place = 8 ; $place >= 0 ; $place--) {
        $dlist[$line_num][$place] = $_ % 10;
        $_ = ($_ / 10);
    }
    $line_num++;
}

print "The Sudoku you have entered:\n";
while (!display_board(@dlist)) {
    # first implement a loop to ask for inputting the column and row number for
    # the new cell to fill continuously until a correct one is given. Read
    # "Requirements" carefully to determine the loop structure here.
    do {
        do {
            print "Please enter which row you want to fill (A-I): ";
            chomp($row_input = <STDIN>);
            $row = alpha2num($row_input);
            if ($row < 0 || $row > 8) {
                print "Invalid input.\n";
            }
        } while ($row < 0 || $row > 8);
        do {
            print "Please enter which column you want to fill (1-9): ";
            chomp($column = <STDIN> - 1);
            if ($column < 0 || $column > 8) {
                print "Invalid input.\n";
            }
        } while ($column < 0 || $column > 8);
        if ($dlist[$row][$column] != 0) {
            print "The cell is already filled!\n";
        }
    } while ($dlist[$row][$column] != 0);

    # then implement a loop asking for correct input of number for the cell
    do {
        print "Please enter the number you want to fill (1-9): ";
        chomp($number = <STDIN>);
        if ($number < 1 || $number > 9) {
            print "Invalid input.\n";
        }
    } while ($number < 1 || $number > 9);

    # update dlist
    $dlist[$row][$column] = $number;
}

if (check_blocks(@dlist) && check_rows(@dlist) && check_columns(@dlist) ) {
    print "You successfully finished this Sudoku!\n";
} else {
    print "Sorry, the answer is not correct!\n";
}


sub alpha2num {
    my $alpha = $_[0];
    my $i = 0;
    foreach ('A'..'I') {
        return $i if ($alpha eq $_); 
        $i++;
    }
}

sub check_blocks {
    # return 1 if every block meets the requirement or 0 otherwise
    my @dlist = @_;
    my @centers = (1, 4, 7);
    foreach $center_row (@centers) {
        foreach $center_column (@centers) {
            if (check_one_block(@dlist, $center_row, $center_column) == 0) {
                return 0;
            }
        }
    }
    return 1;
}

sub check_one_block {
    my @dlist;
    my $column = pop(@_);
    my $row = pop(@_);
    @dlist = @_;
    my @tempmark = (0, 0, 0, 0, 0, 0, 0, 0, 0);
    $tempmark[$dlist[$row-1][$column-1] - 1] = 1;
    $tempmark[$dlist[$row-1][$column] - 1] = 1;
    $tempmark[$dlist[$row-1][$column+1] - 1] = 1;
    $tempmark[$dlist[$row][$column-1] - 1] = 1;
    $tempmark[$dlist[$row][$column] - 1] = 1;
    $tempmark[$dlist[$row][$column+1] - 1] = 1;
    $tempmark[$dlist[$row+1][$column-1] - 1] = 1;
    $tempmark[$dlist[$row+1][$column] - 1] = 1;
    $tempmark[$dlist[$row+1][$column+1] - 1] = 1;

    @tempmark = sort(@tempmark);
    if ($tempmark[0] == 0) {
        return 0;
    } else {
        return 1;
    }
}

sub check_rows {
    # return 1 if every row meets the requirement or 0 otherwise
    my @dlist = @_;
    foreach $column (0..8) {
        my @tempmark = (0,0,0,0,0,0,0,0,0);
        foreach $row (0..8) {
            $tempmark[$dlist[$row][$column] - 1] = 1;
        }
        @tempmark = sort(@tempmark);
        if ($tempmark[0] == 0) {
            return 0;
        }
    }
    return 1;
}

sub check_columns {
    # return 1 if every column meets the requirement or 0 otherwise
    my @dlist = @_;
    foreach $row (0..8) {
        my @tempmark = (0,0,0,0,0,0,0,0,0);
        foreach $column (0..8) {
            $tempmark[$dlist[$row][$column] - 1] = 1;
        }
        @tempmark = sort(@tempmark);
        if ($tempmark[0] == 0) {
            return 0;
        }
    }
    return 1;
}

sub display_board {
    # this subroutine has two big functionalities
    # one, it prints the current board
    # second, it returns 1 if the board has been all filled, or 0 otherwise
    my @dlist = @_;
    my $is_finished = 1;
    my @row_list = ('A'..'I');

    print " c 1 2 3   4 5 6   7 8 9\n";
    print "r =======================\n";

    foreach $row (0..8) {
        print $row_list[$row];
        print "| ";
        foreach $column (0..8) {
            if ($dlist[$row][$column] != 0) {
                print $dlist[$row][$column];
            } else {
                print " ";
                $is_finished = 0;
            }
            if ($column % 3 == 2) {
                print " | ";
            } else {
                print " ";
            }
        }
        if ($row % 3 == 2 && $row < 8) {
            print "\n" . " -------------------------" . "\n";
        } else {
            print "\n";
        }
    }
    print "  =======================\n";
    return $is_finished;
}

