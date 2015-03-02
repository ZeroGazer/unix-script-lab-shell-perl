Editor War VI/EMACS

Download the file comp2021.txt into your home directory. Now Edit your copy of
the document using vi.

1. Remove the extra "culture" in the 1st paragraph.

2. Add the words "LOL!" to the end of the second paragraph.

3. Replace all occurrences of "unix" with "Unix".

4. Find the line containing "vi", replace all "emacs" with "emacs-bad-editor".

5. Save the file and quit.

Repeat the same exercise with emacs (Maybe this time you can replace "vi" with
"vi-bad-editor".).

Get to know more about Vi and Emacs by reading manual pages or online searing.
They are both powerful tools after you get familiar with them.

Multiple ways of changing your file permissions

Solution 1: chmod by numerical values
```
#	Permission	rwx
7	full	111
6	read and write	110
5	read and execute	101
4	read only	100
3	write and execute	011
2	write only	010
1	execute only	001
0	none	000
```

Solution 2: chmod by target modification/assignment
```
Reference	Class	Description
u	user	the owner of the file
g	group	users who are members of the file's group
o	others	users who are neither the owner of the file nor members of the file's
group
a	all	all three of the above, same as ugo
```

Create some file called test. Put single-line-commands modifying the test in
lab2.txt that

1. Add read permission for all.

2. Give read and write permission to the owner, while all permissions are
cleared for the group and others.

3. Use numerical value assignments to set read and write and no execution access
for the owner and group, and read, no write, no execute for all others.

Explore file access permission

Check your user group by command id. Find out what groups you are in.

Team up with one or two classmates. Can you access others' home directory? In
what way can you make your home directory private/public for reading? Use chmod
properly which you just learnt about.

Together with your group mate, explore the following situations.

1. First run chmod 755 ~ so that your partner could access and see your files
in your home directory. Create a file called test under it. Give (your partner)
permission to write to the file test. Now can your partner modify the file?

2. Now retract the permission to write to this file. However give permission to
write to your home directory. Can your partner modify the file?

3. Deny the permission to write to your home directory. Create a directory under
your home directory called test_directory. Give permission to both access it and
write to it. Now under this test_directory create another file named test2. Make
sure the permission to write to this file is denied. Now in this case can your
partner modify the file test2?

4. In this last case, shut down the write permission to write to test_directory,
however, give permission to write to home directory. In this case an your
partner modify the file test2?
 
Many shells are equipped with powerful job control mechanism to handle many
running jobs (i.e. processes) in parallel. First follow the demo by TA to get a
brief understanding of job control:

You can pause a job using Ctrl+Z and turn to do something else without quitting.

Jobs can be in foreground or background. There will be only one job in
foreground -- the job interacts with your shell - it receives input from
keyboard and sends output to the screen. One is capable of managing jobs in
foreground and background using command fg, bg.

Conceptual difference between processes and jobs: ps and jobs commands.

One could kill a job/process by job ID, process ID, or even name.

Read manual pages and get to know about command sleep.
1. Run sleep 200 in foreground, suspend it and then put it into background. Show
both the job number and PID of this job. At last bring the job back to
foreground.

2. Run sleep 300 directly in background, and then use kill to terminate the
process by its job number.

3. Repeat, however this time kill by its PID instead.

4. Open up some webpages using Firefox. Now kill all of them using kill command.

Assuming that you have intercepted an encrypted file called "enfile" from enemy
army. To decrypt this file, you need to finish the following steps with
single-line command.

```
1. We are only interested in the lines containing "SECRET", find them out.

2. For all the lines you found in step 1, delete all the lower case letters as
they are noise information.

3. After deleting the noise information, extract the numbers directly follow an
"M" letter in all interested lines, and put them into another file named
"keyfile" (one number one line).
```

By using the numbers in "keyfile" as index, you can get the enemy's information
by looking up a given dictionary manually lab2dict.txt.

Hints: 1) check the manual of "grep" and "sed"; 2) learn something about regular
 expression in unix by web searching.

e.g.,
Input
```
enfile:
12dfdfdfg3f
S1dfegegeSECRET232M1a2aaM14bb
aa223dgdfABCa
dfERdfsegeSECRETM2aS2aabMdf7b
132dfdfddfSECRET1a2aM1abb
1ER2SDFGdfSECET1a2aM1D1abb
1DF2dDEfSECR1a2aM11abb
bbddfdaa223dgdfABSdECRETfd545feCa
```

Output
```
keyfile:
12
14
2
7
1
```
