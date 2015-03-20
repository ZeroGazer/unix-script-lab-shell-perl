Prime number counting: Find the prime numbers between 2 to the input number
based on array. We need to create an array for storing all the prime numbers. At
first we only have @primes = (2), then once we find another prime number, we
push it into @primes and continue. Finally we print out all the prime numbers
found as well as the total number of them. Input is sent through command
argument.

Example:

```
$ prime.pl 10

2,3,5,7
We found 4 prime numbers in total.
```

Hangman Game: This is a word guess game. There are many words stored in array
@words. Randomly choose one and store it in $choice. Then this Perl script will
let you guess the letters that belong to this $choice, one letter a time. You
will fail the game if you make mistakes more than the length of $hangman (which
is shown as a little man). Try to execute hangman.pl to get some clues about how
it works. 

Example:

```
$ hangman.pl
--------

Your Guess:i
i-------

Your Guess:a
i-------
0
Your Guess:d
i-------
0-
Your Guess:f
i-------
0-|
Your Guess:t
i-t----t
0-|
Your Guess:e
i-te--et
0-|
Your Guess:s
i-te--et
0-|-
Your Guess:g
i-te--et
0-|--
Your Guess:a
i-te--et
0-|--<
Your Guess:a
0-|--<<
Sorry,the word was internet.
```

```
$ hangman.pl
-------

Your Guess:i
-------
0
Your Guess:p
-------
0-
Your Guess:s
s------
0-
Your Guess:t
st----t
0-
Your Guess:u
stu---t
0-
Your Guess:d
stud--t
0-
Your Guess:e
stude-t
0-
Your Guess:n
You got it right!
```

Big & Small: In this task you will write a Perl program called bigsmall.pl to
implement the game "Big & Small" with the user playing against the computer.

Game Rules

* The Computer will throw 3 dices, each will have result from 1-6

* The User have to guess the results of the sum of the 3 dices, BIG or SMALL

* BIG means the sum of 3 dices are EQUAL or larger than 10. SMALL means the sum
of 3 dices are EQUAL or smaller than 9.

* In the beginning of the game, the user will be asked how many money he has

* In each round, the user will be asked how much money he wants to bet on that
* round

* If the user wins the round, his current money = current money + bet money

* If the user loses the round, the current money = current money - bet money

Requirement

* Users could choose to quit the game at each round

* If a user loses all his money, he will be forced to quit the game

* The program should also detect invalid inputs and prompt the user again for
input

* For numeric inputs, you can assume the user won't input non-numeric characters

* The program must not allow the user to bet more money than he has

* When the user is leaving the game, display a list of gains and losses
throughout the game, and the final amount the user gained or lost (look at the
example below)

* You will need to use a random number generator to make the computer's
selection. The following lines will assign a pseudo-random value 1-6 into the
variable $rand. You can then map these values to the dice throwing results.

```
$rand = int(rand(6)) + 1
```

For the function rand() to work, you MUST execute another function at the
beginning of the Perl program,

```
srand;
```

Allow the user to keep playing until they type q or he has no money. Example
output should look like this:

```
$ ./bigsmall.pl
Big & Small!
How much money do you have ?
100

What would you guess ? (b)ig/(s)mall or (q)uit 
b
How much would you bet ?
10
You bet $10 on Big

The Result is Big
You Win!
You now have $110

What would you guess ? (b)ig/(s)mall or (q)uit
s
How much would you bet ?
20
You bet $20 on Small

The Result is Big
You Lose!
You now have $90

What would you guess ? (b)ig/(s)mall or (q)uit
q

Here is the list of gains and losses throughout your game:
+$100
+$10
-$20
-----
$90

You have finally lost $10! Goodbye!

$
```

```
$ ./bigsmall.pl
Big & Small!
How much money do you have ?
100

What would you guess ? (b)ig/(s)mall or (q)uit
b
How much would you bet ? 
100
You bet $100 on Big

The Result is Small
You Lose!
You now have $0

You don't have any money, you must quit!

Here is the list of gains and losses throughout your game:
+$100
-$100
-----
$0

You have finally lost $100! Goodbye!

$
```

```
$ ./bigsmall.pl

Big & Small!
How much money do you have ?
50

What would you guess ? (b)ig/(s)mall or (q)uit 
b
How much would you bet ? 
60
You bet more than you have!
How much would you bet ? 
10
You bet $10 on Big

The Result is Big
You Win!
You now have $60

What would you guess ? (b)ig/(s)mall or (q)uit
```

```
$ ./bigsmall.pl

Big & Small!
How much money do you have ?
100

What would you guess ? (b)ig/(s)mall or (q)uit
g
Invalid Input

What would you guess ? (b)ig/(s)mall or (q)uit
```