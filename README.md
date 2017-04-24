# Roll of the Die

---

## Intro

In this assignment, we'll make use of the fundamental ruby concepts you've been learning to simulate board game's ubiquitous token of chance: ***dice***.

![](dice.jpg)


## Prerequisites

You should: 

- Be comfortable using your command-line interface.
- Be comfortable using git and GitHub.
- Have Ruby installed on your computer: in your command-line interface (aka shell or terminal), if typing ruby -v returns an error, Ruby is not installed. Otherwise, you're good to go!
- Have a text editor.
- Have completed the previous ruby assignment.

---

## Learning Goals

The goal of this assignment is to help re-enforce the ruby you've been learning:

### Fundamentals
- flow control
- operators
- statements
- conditions
- assignments

### Basic Data Types
- Integer
- Float
- String
 - interpolation

### Collections
- Hash
- Array

### Variables
- local

### Methods
- calling
- arguments
- return values

This assignment also provides opportunities to think algorithmically, that is the ability to break down and solve problems in way that works for both humans and computers.

## Getting Started

Clone this repo to your computer and complete the exercises one at a time. There are some tricky ***stretch*** exercises at the end if you're able to work through the initial exercises quickly.

There is a `/solutions` folder. This should only be looked at as a last resort (i.e. after you've sought help from instructors and fellow students and looked online). 

After you complete each exercise, you may want to look at the solution to see if there was an alternate way of doing things.


---

# Exercises


## Create a die

In ruby, to generate a random number, use 

```ruby
Random.rand(max)
```

with max being the maximum number generated. Note that the number generated will be between `0` and `max - 1`.

Create a ruby program called `roll_die.rb` that generates a number between 1 and 6 (like a six sided die), and displays that result. 

When you run your program, it should output the result like so:

```
$ ruby roll_die.rb
The result of your roll is 4.
```

## Roll the die many times

Copy your `roll_die.rb` program to `roll_die_ten_times.rb`. To copy a program from the command line, use `cp`:

```
$ cp roll_die.rb roll_die_ten_times.rb
```

Now that you have a file setup for your program (`roll_die_ten_times.rb`), modify it so that it rolls the die ten times. Use a loop to do this.

Run your program. Your output should look like so:

```
$ ruby roll_die_ten_times.rb
The result of your roll is 2.
The result of your roll is 4.
The result of your roll is 6.
The result of your roll is 1.
The result of your roll is 4.
The result of your roll is 1.
The result of your roll is 4.
The result of your roll is 5.
The result of your roll is 2.
The result of your roll is 3.
```

Double check that none of your rolls are `0` and that at least one of them is a `6`. If none of the results are `6`, keep running your program until you see a `6`. We want to verify your die results are like a real die, i.e. between `1` and `6`.

## Sort your rolls

Copy your last program to `roll_dies_sorted.rb`. 

Modify `roll_dies_sorted.rb` to store each result in an array and then use the [`Array#sort!`](https://ruby-doc.org/core-2.4.1/Array.html#method-i-sort-21) method to sort the results before displaying them.

Your output should look similar to this:

```
$ ruby roll_dies_sorted.rb
The result of your roll is 1.
The result of your roll is 2.
The result of your roll is 2.
The result of your roll is 3.
The result of your roll is 3.
The result of your roll is 4.
The result of your roll is 4.
The result of your roll is 5.
The result of your roll is 5.
The result of your roll is 6.
```

Notice that the results are in numeric order, from 1 to 6.

## Lowest and highest

Copy your last program to `lowest_and_highest.rb` and use this file for this exercise.

Adjust your program so it only rolls 5 numbers (instead of ten). 

Use [`Array#first`](https://ruby-doc.org/core-2.4.1/Array.html#method-i-first) and [`Array#last`](https://ruby-doc.org/core-2.4.1/Array.html#method-i-last) to display both the lowest and highest of the die results.

Your output should be similar:

```
$ ruby lowest_and_highest.rb
The result of your roll is 2.
The result of your roll is 3.
The result of your roll is 5.
The result of your roll is 5.
The result of your roll is 6.
The lowest number is 2.
The highest number is 6.
```

## Dice

Dies usually come in pairs, aka *dice*. 

Create a program called `dice.rb` that simulates two die rolls, displays the result of each, and the total.

Your output should be similar:

```
$ ruby dice.rb
You rolled 2 and 6.
Your total is 8.
```

## Doubles

Copy your last program to `doubles.rb`.

Adjust `doubles.rb` so that if two of the same number are rolled, it displays "Doubles!".

Your output should be similar:

```
$ ruby doubles.rb
You rolled a 6 and a 5.
Your total: 11.

$ ruby doubles.rb
You rolled a 1 and a 1.
Doubles!
Your total is 2.
```

## All possible combinations

Create a program called `combinations.rb`.

Write a program that goes through all possible combinations of two dice rolling.

Your output should look like so:

```
$ ruby combinations.rb                                                                                        
1 1
1 2
1 3
1 4
1 5
1 6
2 1
2 2
2 3
2 4
2 5
2 6
3 1
3 2
3 3
3 4
3 5
3 6
4 1
4 2
4 3
4 4
4 5
4 6
5 1
5 2
5 3
5 4
5 5
5 6
6 1
6 2
6 3
6 4
6 5
6 6

```

## All possible combinations with totals

Copy your last program to `combination_totals.rb`.

Modify this program to also display the total of each combination.

Your output should look like so:

```
$ ruby combination_totals.rb
Dice Combo: 1, 1  Total: 2
Dice Combo: 1, 2  Total: 3
Dice Combo: 1, 3  Total: 4
Dice Combo: 1, 4  Total: 5
Dice Combo: 1, 5  Total: 6
Dice Combo: 1, 6  Total: 7
Dice Combo: 2, 1  Total: 3
Dice Combo: 2, 2  Total: 4
Dice Combo: 2, 3  Total: 5
Dice Combo: 2, 4  Total: 6
Dice Combo: 2, 5  Total: 7
Dice Combo: 2, 6  Total: 8
Dice Combo: 3, 1  Total: 4
Dice Combo: 3, 2  Total: 5
Dice Combo: 3, 3  Total: 6
Dice Combo: 3, 4  Total: 7
Dice Combo: 3, 5  Total: 8
Dice Combo: 3, 6  Total: 9
Dice Combo: 4, 1  Total: 5
Dice Combo: 4, 2  Total: 6
Dice Combo: 4, 3  Total: 7
Dice Combo: 4, 4  Total: 8
Dice Combo: 4, 5  Total: 9
Dice Combo: 4, 6  Total: 10
Dice Combo: 5, 1  Total: 6
Dice Combo: 5, 2  Total: 7
Dice Combo: 5, 3  Total: 8
Dice Combo: 5, 4  Total: 9
Dice Combo: 5, 5  Total: 10
Dice Combo: 5, 6  Total: 11
Dice Combo: 6, 1  Total: 7
Dice Combo: 6, 2  Total: 8
Dice Combo: 6, 3  Total: 9
Dice Combo: 6, 4  Total: 10
Dice Combo: 6, 5  Total: 11
Dice Combo: 6, 6  Total: 12
```

## How many combos?

Copy this program to `how_many.rb`.

Use ruby to figure out how many possible combinations there are. 

Your output should look like so:

```
$ ruby how_many.rb
Dice Combo: 1, 1  Total: 2
Dice Combo: 1, 2  Total: 3
Dice Combo: 1, 3  Total: 4
Dice Combo: 1, 4  Total: 5
Dice Combo: 1, 5  Total: 6
Dice Combo: 1, 6  Total: 7
Dice Combo: 2, 1  Total: 3
Dice Combo: 2, 2  Total: 4
Dice Combo: 2, 3  Total: 5
Dice Combo: 2, 4  Total: 6
Dice Combo: 2, 5  Total: 7
Dice Combo: 2, 6  Total: 8
Dice Combo: 3, 1  Total: 4
Dice Combo: 3, 2  Total: 5
Dice Combo: 3, 3  Total: 6
Dice Combo: 3, 4  Total: 7
Dice Combo: 3, 5  Total: 8
Dice Combo: 3, 6  Total: 9
Dice Combo: 4, 1  Total: 5
Dice Combo: 4, 2  Total: 6
Dice Combo: 4, 3  Total: 7
Dice Combo: 4, 4  Total: 8
Dice Combo: 4, 5  Total: 9
Dice Combo: 4, 6  Total: 10
Dice Combo: 5, 1  Total: 6
Dice Combo: 5, 2  Total: 7
Dice Combo: 5, 3  Total: 8
Dice Combo: 5, 4  Total: 9
Dice Combo: 5, 5  Total: 10
Dice Combo: 5, 6  Total: 11
Dice Combo: 6, 1  Total: 7
Dice Combo: 6, 2  Total: 8
Dice Combo: 6, 3  Total: 9
Dice Combo: 6, 4  Total: 10
Dice Combo: 6, 5  Total: 11
Dice Combo: 6, 6  Total: 12
There are 36 possible combinations.
```

## Total times

Copy your last program to `total_times.rb`.

Notice that the totals above range from 2 to 12.

Figure out how many times each total will come up if each possible combination is rolled once. 

Use a `Hash` with keys of 2, 3, 4, 5, 6, 7, 8, 9, 10, 11 & 12 to keep track of how many times each total occurred.

Your output should look like so:

```
$ ruby total_times.rb
2 occurs 1 times
3 occurs 2 times
4 occurs 3 times
5 occurs 4 times
6 occurs 5 times
7 occurs 6 times
8 occurs 5 times
9 occurs 4 times
10 occurs 3 times
11 occurs 2 times
12 occurs 1 times
```

## Odds

Copy your last program to `odds.rb`.

Figure out the odds of each total coming up. This info could be useful for your next game of [Settlers of Catan](http://www.catan.com/).

![](catan.jpg)

Your output should look like so:

```
$ ruby  odds.rb
The odds of 2 coming up are 3%
The odds of 3 coming up are 6%
The odds of 4 coming up are 8%
The odds of 5 coming up are 11%
The odds of 6 coming up are 14%
The odds of 7 coming up are 17%
The odds of 8 coming up are 14%
The odds of 9 coming up are 11%
The odds of 10 coming up are 8%
The odds of 11 coming up are 6%
The odds of 12 coming up are 3%
```

---

# Submit your work

Remember to submit your work when you're finished.

---

# Stretch Exercises

## Most Likely

Copy your last program to `most_likely.rb`.

Display what total is most likely to come up. 

Your output should look like so:

```
$ ruby most_likely.rb                                                                                             
The odds of 2 coming up are 3%
The odds of 3 coming up are 6%
The odds of 4 coming up are 8%
The odds of 5 coming up are 11%
The odds of 6 coming up are 14%
The odds of 7 coming up are 17%
The odds of 8 coming up are 14%
The odds of 9 coming up are 11%
The odds of 10 coming up are 8%
The odds of 11 coming up are 6%
The odds of 12 coming up are 3%
7 is most likely to come up with a 17% chance.
```

## Attacker vs Defender

In the classic board game ***Risk***, players claim territory by using one country to attach another.

The attacker may roll up to a maximum of three dice, with one die less than the number of pieces they have on a country. This means:

- If the attacker has 1 piece on a country, they cannot attack.
- If the attacker has 2 pieces on a country, they can attack with 1 die.
- If the attacker has 3 pieces on a country, they can attack with 1 or 2 dice.
- If the attacker has 4 or more pieces on a country, they can attack with 1, 2, or 3 dice.


The defender may roll up to a maximum of two dice, and need at least 1 piece on their country for each die. 

This means:

- If the defender has 1 piece on a country, they can roll one die.
- If the defender has 2 or more pieces on a country, they can roll one or two dice.

After the dice are thrown, both the attacker and defender sort their dice highest to lowest, and then line them up with each other. The highest roll for each attacker-defender die pair wins, and the opposing player loses one army. If the dice tie, the defender wins.

Any dice that aren't paired up between attacker and defender are discarded. Usually this means the attacker discards their lowest roll.

### Example A

Attacker roles 6, 4, 1
Defender roles 5, 4

Attacker 6 is paired with Defender 5: Defender loses an army.
Attacker 4 is paired with Defender 4: Attacker loses an army.
Attacker 1 roll is discarded and is not considered.

Outcome: Both attacker and defender each lose one army.

### Example B

Attacker roles 3, 3, 2
Defender roles 6, 4

Attacker 3 is paired with Defender 6: Attacker loses an army.
Attacker 3 is paired with Defender 4: Attacker loses an army.
Attacker 2 roll is discarded and is not considered.

Outcome: Attacker loses two armies.
 
Let's assume that each player always roll the maximum number of dice they're allowed.

### Determining the winner

If the attacker destroys all of the defender's armies, they take the country. If the attacker is whittled down to one army, the defender holds on to their country.

### Task

Create a new program called `attacker_vs_defender.rb`.

Start both players off with 5 armies each.

Simulate each player rolling and subtract the armies from each player as the dice are rolled.

Display the outcome when no player can make any more rolls.

Your results should look something like this:

```
$ ruby attacker_vs_defender.rb

New Battle Begins!
==================

Armies before the battle:
Attacker: 5 armies
Defender: 5 armies

Attacker roles 5, 5, 2
Defender roles 4, 3

Attacker wins a battle: 5 beats 4
Attacker wins a battle: 5 beats 3

Armies after the battle:
Attacker: 5 armies
Defender: 3 armies


New Battle Begins!
==================

Armies before the battle:
Attacker: 5 armies
Defender: 3 armies

Attacker roles 3, 1, 1
Defender roles 2, 2

Attacker wins a battle: 3 beats 2
Defender wins a battle: 2 beats 1

Armies after the battle:
Attacker: 4 armies
Defender: 2 armies


New Battle Begins!
==================

Armies before the battle:
Attacker: 4 armies
Defender: 2 armies

Attacker roles 5, 3, 1
Defender roles 5, 5

Defender wins a battle: 5 beats 5
Defender wins a battle: 5 beats 3

Armies after the battle:
Attacker: 2 armies
Defender: 2 armies


New Battle Begins!
==================

Armies before the battle:
Attacker: 2 armies
Defender: 2 armies

Attacker roles 2
Defender roles 4, 3

Defender wins a battle: 4 beats 2

Armies after the battle:
Attacker: 1 armies
Defender: 2 armies


Final Outcome
=============

Attacker's final army count: 1
Defender's final army count: 2

Defender retains their country!
```

![](risk.jpg)

## Epic Battle

In ***Risk***, is it the attacker who has the advantage with the extra die, or the defender who wins ties?  How many loses will the defender suffer for every 100 of the attacker? Take a guess, and then do this exercise to find out!

Copy the previous exercise to a file called `epic_battle.rb`.

Loop through each possible combination of dice and count up the number of armies lost. At the end, output a summary of how many armies the attacker will have lost vs. the defender.

Your output should look something like this:

```
$ ruby epic_battle.rb

Attack | Def
------------
1 1 1 vs 1 1
1 1 1 vs 2 1
1 1 1 vs 3 1
...
(several thousand more battles)
...
6 6 6 vs 6 4
6 6 6 vs 6 5
6 6 6 vs 6 6

Final Outcome
=============

Attacker lost XXXX armies.
Defender lost XXXX armies.

For every 100 armies the attacker loses, the defender loses ? armies.
```

I've left the numbers out of my results so you can find out for yourself!


