# Pac-Man JS

In this assignment, you'll be creating Pac-Man in the terminal. We've provided a barebones JavaScript program.

Currently it:

- keeps score
- displays a screen with stats, menu, and prompt
- processes two commands:
  - (d) eat dot
  - (q) quit

Your job will be to bring the game to life!

Before you begin, fork this repository.

# Step 1: Play the game

Try playing the game. Notice your score go up each time you eat a dot. When you're finished, press `q` to quit.

```shell
$ node pacman.js
```

# Step 2: Review the code

Review `pacman.js`. Don't worry if you don't understand all the code. The important thing to note is the main game loop:

```javascript
// Process input and draw screen each time player enters a key
stdin.on('data', function(key) {
  stdout.write(key);
  processInput(key);
  setTimeout(drawScreen, 300);
});
```

This game loop processes whatever key is entered, and then draws the screen again.

# Step 3: Add some ghosts!

Add Pac-Man's enemies -- the evil Inky, Blinky, Pinky and Clyde. Set them up as objects. Here are their colours and personalities:

- Inky: Red, Shadow
- Blinky: Cyan, Speedy
- Pinky: Pink, Bashful
- Clyde: Orange, Pokey

I'll help you with the first one:

```javascript
var inky = { name: 'Inky', colour: 'Red', character: 'Shadow', edible: false };
```
Now you setup the other three ghosts.

Run and play `pacman.js` again. You shouldn't notice anything different -- we've just setup the ghosts as variables, but we aren't doing anything with them yet.

Commit your code to github.

For the remaining steps, be sure to play and commit each time you add a new step.

# Step 4: Add Ghosts to Menu

Add the option to eat the ghosts to the menu. Review how the 'eat dot' and 'quit' options were implemented to figure out how you should add items to the menu. You may want to put each ghost under a number (i.e. (1) eats Inky, (2) eats Blinky, etc.). Put the processing of each menu option in its own function so you're switch statement doesn't become too cluttered.

Your game should look similar to this now:

```
Score: 0     Lives: 2

Select Option:

(d) Eat Dot
(1) Eat Inky
(2) Eat Blinky
(3) Eat Pinky
(4) Eat Clyde
(q) Quit

Waka Waka :v
```


# Step 5: Process Eating a Ghost

Because the ghosts aren't edible yet, Pac-Man should lose a life if he tries to eat one of the ghosts. Decrease the `life` variable by one each time Pac-Man tries to eat a ghost.

If Pac-Man's lives go below 0, you should exit the game.

# Step 6: Power-Pellets

That wasn't very fair of us -- we added ghosts, but we never gave Pac-Man a fighting chance! Add the ability for Pac-Man to eat a __Power-Pellet__. There should be four power-pellets altogether. Display how many power-pellets are left underneath the stats area (where Score and Lives are displayed).

Your game should look similar to this now:

```
Score: 0     Lives: 2

Power-Pellets: 4

Select Option:

(d) Eat Dot
(1) Eat Inky
(2) Eat Blinky
(3) Eat Pinky
(4) Eat Clyde
(q) Quit

Waka Waka :v
```

# Step 7: Process Power-Pellets

Pac-Man scores 50 points each time he eats a Power-Pellet and we should switch all the ghosts `edible` property to true. We should also reduce the number of Power-Pellets left by one.

# Step 8: Power-Pellet Check

Ensure that Pac-Man can't eat Power-Pellets if there are none left.

# Step 9: Eat Edible Ghosts

Now that we have Power-Pellets, let's re-visit the the process eat ghost function.

If a ghost is edible, Pac-Man scores points! And then switch it back to non-edible, as it will regenerate again to its offensive form.

# Step 10: Adjust Ghosts in Menu

Update the eat ghost options in the menu to display whether a ghost is edible or inedible.

Your game should look similar to this now:

```
Score: 0     Lives: 2

Power-Pellets: 3

Select Option:

(d) Eat Dot
(1) Eat Inky (edible)
(2) Eat Blinky (inedible)
(3) Eat Pinky (edible)
(4) Eat Clyde (edible)
(q) Quit

Waka Waka :v
```

# Step 10: Score Ghosts

With each Power-Pellet, Pac-Man scores eaten ghosts like so:

The first ghost is worth 200 points
The second ghost is worth 400 points
The third ghost is worth 800 points
The fourth ghost is worth 1,600 points

So if Pac-Man eats all the ghosts, he'll score 3000 points in total.

Update the game to reflect the scoring.


# Stretch Goal 1: Keep track of dots

The maze has 240 small dots in total. Add options for Pac-Man to eat:

- 10 dots at a time
- 100 dots at a time
- all remaining dots

Display the remaining dots left, similar to how you display the remaining Power-Pellets. Only display the 'eat 10 dots' and 'eat 100 dots' options if there are enough dots to eat.

# Stretch Goal 2: Keep track of level and add fruits

There are 256 levels. Add the appropriate fruits. Make the fruit option randomly appear in the menu after the player eats some dots.

Level 1: Cherry / 100 points
Level 2: Strawberry / 300 points
Level 3 & 4: Orange / 500 points
Level 5 & 6: Apple / 700 points
Level 7 & 8: Pineapple / 1,000 points
Level 9 & 10: Galaxian Spaceship / 2,000 points
Level 11 & 12: Bell / 3,000 points
Level 13+: Key / 5,000

# Stretch Goal 3: High Score

Add a high score stat on the top of the screen.

- figure out how to let the user input 3 characters for their initials
- save the high score to disk so that when you play Pac-Man again, it will read the high score and display it

# Submit Your Work

Remember to submit your assignment after you've finished.

Now travel back in time, visit an arcade, and see if you get the highst-score possible (3,333,360 points!) before Billy Mitchell scores it on July 4, 1999.
