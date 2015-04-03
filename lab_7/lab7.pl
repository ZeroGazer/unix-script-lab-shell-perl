#!/usr/bin/perl -w
#Check protein

%table1 = read_file($ARGV[0]);
%table2 = read_file($ARGV[1]);

foreach my $key1 (keys %table1) {
    if (exists $table2{$key1}) {
        if ($table1{$key1} == $table2{$key1}) {
            print $key1, "\n";
        } else {
            print "$key1 appears with different length!", "\n";
        }
    }
}

sub read_file {
    my $file_name = pop(@_);
    my %table;
    open(FILE, $file_name) or die "Cannot open $file_name: $!.\n";
    my $line;
    my $line_num = 0;
    while (defined($line = <FILE>)) {
        $line_num++;
        chomp($line);
        if ($line =~ m/^([a-zA-Z]+_[0-9]+)[\s]+([0-9]+)/) {
            my $protein = $1;
            my $length = $2;
            $table{$protein} = $length;
        } else {
            print "bad line format in $file_name line $line_num!", "\n";
        }
    }
    close(FILE);
    return %table;
}
 
