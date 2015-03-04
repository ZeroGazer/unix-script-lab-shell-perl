String Manipulation: Create a shell script "palindrom.sh" to judge whether a
string is Palindrome . This string is sent to the script as command line
argument.

Example:
```
$ palindrom.sh abcba
String is palindrome

$ palindrom.sh acccd
String is not palindrome
```

Friday the 13th: Creat a shell script called "friday13.sh", which lists all the
occurrences of Friday the 13th in a user-input year range. When the shell
program is executed, it should get 2 input parameters which indicate the year
range of inquiry inclusively, the program needed to list all the months and
years which happened to be Friday the 13th, starting from latest date to the
earliest date. You may assume the input year range is valid (the first one is
smaller than the second one). 

Example:
```
$ friday13.sh 2005 2011
May-2011
Aug-2010
Nov-2009
Mar-2009
Feb-2009
Jun-2008
Jul-2007
Apr-2007
Oct-2006
Jan-2006
May-2005
```

Write a shell script "gcd.sh" to find the Greatest Common Divisor(GCD) for 2
given numbers. Those two numbers are sent to the script as command line
argument.

Example:
```
$ gcd.sh 54 24
gcd of 54 and 24 is 6
```

Batch Processing: There are N input files and each file contains two numbers.
Note that here N is not a fixed number, and these N files are named as file1,
file2, ...,fileN. write a shell script "batch.sh" to call "gcd.sh" to compute
the Greatest Common Divisor(GCD) for all these N input files. N should be sent
to the script as command line argument.

Example:
```
file1:
6 4
file2:
54 24
```
```
$ batch.sh 2
gcd of 6 and 4 is 2
gcd of 54 and 24 is 6
```