#!/usr/bin/perl -w
# Data record

use strict;
use CGI qw(:standard);
use CGI::Session;

my @names;
my @ids;

print header();
print start_html(-title => 'Data Record'),
    start_form,
    "Your name: ",textfield(-name=>'name', -defaults=>''),
    br,
    "Your student ID: ",textfield(-name=>'id', -defaults=>''),
    br,
    submit('Record'),
    p,
    end_form;

if (param()) { # if the form has already been filled out
    open(INPUTFILE, "<data.txt");
    while(<INPUTFILE>) {
        chomp;
        my @items = split(',', $_);
        push(@names, $items[0]);
        push(@ids, $items[1]);
    }
    close(INPUTFILE);
    open(APPENDFILE, ">>data.txt");
    my $name = param('name');
    my $id = param('id');
    print APPENDFILE "$name,$id\n";
    close(APPENDFILE);
    push(@names, $name);
    push(@ids, $id);
    foreach my $i (0..scalar(@names)-1) {
      print "Name = ", $names[$i],	br, "ID = ", $ids[$i], br;
    }
} else {
    open(WRITEFILE, ">data.txt");
    print WRITEFILE "";
    close(WRITEFILE);
}
print end_html;
