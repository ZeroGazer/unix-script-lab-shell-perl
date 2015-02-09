Open a Linux command-line terminal by double-clicking on the Terminal shortcut
on the desktop. You may also open it by KMenu >> System >> Terminal. Try to get
familiar with the Linux commands with the following steps.

Use the vi editor to create a file called lab1 in your home directory (just type
vi lab1 in the terminal) with the following contents (you can use emacs if you
prefer) :
```
SOME SIMPLE UNIX/LINUX COMMANDS...
ls - list the files in the current directory
cat - concatenate and displays file contents
rm - remove a file
cp - copy source file to target file
mv - move a file 
man - display the reference manual pages by keyword
```

Copy the file lab1 to a file called lab1a.

Check: What files are now in your home directory?

Show the contents of lab1 and lab1a on your screen using ONE single command.

Try cal 2014 to show the calendar for the year 2014.

Try date to show the current date and time.

Try whoami to show who you are.

Listing the contents of a file:
Save some text of this web page to a file called webpage (using copy & paste,
perhaps). Use the following commands to display the file. Use the man command to
understand the difference between the four commands. (press q to quit man)
```
cat webpage
more webpage
tail webpage
head webpage
```

```
Quiz
What command lists the contents of webpage with a line number at the beginning
of each line?
What command lists the first 6 lines of webpage?
What command lists the last 6 lines of webpage?
What command lists the contents of webpage with the first 20 lines skipped?
```

Type man finger and read about the command finger.

Try fingering yourself.

Finger some people:
```
COMP2021 Instructor - lixin
COMP2021 TAs - shuaa
```
Now edit your own .plan file to add some personal information to it such as your
mobile phone number, favorite music, and favorite hobby (think about what you
are letting others to see). After creating the .plan file, issue the command
chmod 644 .plan to make sure others have permission to read the file. Then the
content can be displayed when they finger you.
Then finger yourself again.

Merge two files without including their common lines. In the merged file, 1) all
the lower case letters should be transformed into corresponding upper case
letters; 2) sort the lines alphabetically. 
e.g.,
Input

File1:
```
ccc
ddd
aaa
bbb
```

File2:
```
aaa
ggg
ccc
ddd
fff
```

Output

File3:
```
BBB
FFF
GGG
```

Log out. (under Menu in the lower-left corner of the screen)
