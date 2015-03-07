Greatest Common divider Again for warming up: find the greatest common divider
for two given integers.

The script will be given the two integers by the moment it start running. It
means takes two inputs as "arguments".

Some hints:

1. Use $ARGV[0] for Perl in place of $1 for shell programming.

Example:
```
$ ./gcd.pl 54 24
The gcd of 54 and 24 is 6
```

Implement a script for padding zeros: given total number of digits for each
line, pads zeros to a list of numbers stored in a text file. The program will
pad zeros to each number to fill up the total number of digits, and output it to
the screen. There may be blank lines or a line of a number 0. In such cases,
print a line with asterisks (*) to fill up the expected number of digits.

Some hints:

1. Try out what this code mean? while () { print $_; }
2. Use the Perl function length() to find the length of a string. 
3. In this case we "pipe" the input from a text file which contains a number in
each line.

Example:
```
$ cat a.txt
235
0
12
12345
980765
7853222
9874652
$ cat a.txt | ./pad_zeros.pl 8
00000235
********
00000012
00012345
00980765
07853222
09874652
```

Walker: when the script starts running, you will at first be asked to input the
size of a map, which is essentially a square. Now suppose you typed in 5 as
size. It is followed by a random drop of a walker onto the map. His location is
denoted by a two-dimensional coordinate, x,y. Either of them could be any number
from 1 to 5. Note the coordinate setting: the upper left corner is given
coordinate 1,1, while the lower right corner is given 5,5. Finally, you will be
prompted to enter the direction for the walker to move. You could input L,R,U,D
for four directions, or Q to quit the program. For all other inputs, just say
invalid input and continue with the loop.

Some hints:

1. Use the Perl function rand() to generate random numbers in a given range.

2. Remember boundary check.

Example:
```
$ ./walker.pl
Input an integer size range from 2 on...
5
Current coordinate: 2, 3
Which direction to go? Enter L for left, R for right, U for up, D for down!
Enter Q if you want to quit!
L
Current coordinate: 1, 3
Which direction to go? Enter L for left, R for right, U for up, D for down!
Enter Q if you want to quit!
L
Cannot move this way!
Current coordinate: 1, 3
Which direction to go? Enter L for left, R for right, U for up, D for down!
Enter Q if you want to quit!
Q
```

Given an input file "anifile.txt", write a Perl script named "cat.pl" to find
all lines that have more "cat"s than "dog"s (the number of word "cat" is larger
than the number of word "dog".).

Some hints:

1. Search the usage of split function in Perl.

2. Search the usage of scalar function in Perl.

Example:
```
$ cat -n anifile.txt
1  cat bird dog dog dog cat cat
2  lion chiken cat cat fish crocodile kangaroo
3  cat cat dog dog tiger wolf
4  pig cow cat cat cat dog wolf goat
$ cat anifile.txt | ./cat.pl
cats win at line 2
cats win at line 4
```
