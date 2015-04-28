#!/usr/bin/perl -w
# Displaying Data with different order

use strict;
use CGI qw(:standard);

my @name;
my @id;

print header();
print start_html(-title => 'Student Information'),
    h1('Student Information'),
    start_form,
    'Sort Order',
    popup_menu(-name=>'order', -values=>['Name','ID']),
    submit('Sort'),
    end_form,
    hr;
if (param()) {
    my $order = param('order');
    if ($order eq "Name") {
        print_sorted_name();
    } else {
        print_sorted_id();
    }
} else {
    print_sorted_name();
}
print end_html;

sub print_sorted_name {
    read_data();
    foreach my $i (0..scalar(@name)-2) {
        foreach my $j ($i..scalar(@name)-1) {
          if ($name[$i] gt $name[$j]) {
              my $temp = $name[$i];
              $name[$i] = $name[$j];
              $name[$j] = $temp;
              $temp = $id[$i];
              $id[$i] = $id[$j];
              $id[$j] = $temp;
          }
        }
    }
    print_table();
}

sub print_sorted_id {
    read_data();
    foreach my $i (0..scalar(@id)-2) {
        foreach my $j ($i..scalar(@id)-1) {
          if ($id[$i] > $id[$j]) {
              my $temp = $name[$i];
              $name[$i] = $name[$j];
              $name[$j] = $temp;
              $temp = $id[$i];
              $id[$i] = $id[$j];
              $id[$j] = $temp;
          }
        }
    }
    print_table();
}

sub read_data {
    open(INPUTFILE, "<data.txt");
    while(<INPUTFILE>) {
        chomp;
        my @items = split(',', $_);
        push(@name, $items[0]);
        push(@id, $items[1]);
    }
    close(INPUTFILE);
}

sub print_table {
    my @rows;
    foreach my $i (0..scalar(@name)-1) {
      push(@rows, td([$name[$i], $id[$i]]));
    }
    print table({-border=>''}, TR([td(["Name", "ID"]), @rows]));
}
