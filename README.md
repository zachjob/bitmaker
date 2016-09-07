# Pac-Man JS

In this assignment, you'll be creating Pac-Man in the terminal. We've provided a barebones JavaScript program to help you get started.

Currently `pacman.js` has the following functionality:

- keep a score
- displays a screen with stats, menu, and prompt
- processes two commands:
  - (d) eat dot
  - (q) quit

Your job will be to bring the game to life!

Before you begin, [fork this repository](https://github.com/bitmakerlabs/wdi-pacman-js).

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

# Step 3a: Add Ghosts!

Add Pac-Man's enemies -- the evil Inky, Blinky, Pinky and Clyde. Set them up as objects.

Here are their names, colours, and character traits, and menu options:

- Inky: Red, Shadow, 1
- Blinky: Cyan, Speedy, 2
- Pinky: Pink, Bashful, 3
- Cyan: Orange, Pokey, 4

I'll help you with the first one:

```javascript
var inky = {
  name: 'Inky',
  menu_option: '1',
  color: 'Red',
  character: 'Shadow',
  edible: false
};
```
Setup all four ghosts in the `// Define your ghosts here` section in `pacman.js`.

Run and play `pacman.js` again. You shouldn't notice anything different -- we've just setup the ghosts as variables, but we aren't doing anything with them yet.

Commit your code to github.

For the remaining steps, each time you add new code, be sure to play the game and ensure it's working, and then commit your code.

# Step 3b: Create the Ghosts Array

Create an array called `ghosts` and store each ghost object inside of it.


# Step 3c: Add Ghosts to the Menu

Add the options to eat the ghosts to the menu. Review how the __eat dot__ and __quit__ options were implemented to figure out how you should add items to the menu. Use the array of ghosts you setup in the previous step to cycle through and display each ghost.

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

# Step 3d: Process Eating an Inedible Ghost

Because the ghosts aren't edible yet (i.e. the `edible` property is set to false), Pac-Man should lose a life if he tries to eat one of the ghosts.

- add a function called `eatGhost` that accepts a ghost as an argument
- the `eatGhost` should check to see if a ghost is edible. If it's not, Pac-Man should lose a life
- include a quick sentence that says the name and colour of the ghost kills Pac-Man (similar to how it quickly flashes `chomp` on the screen when you eat a dot)

# Step 4: Process Game Over

If Pac-Man's lives go below 0, it's __Game Over__ and you should exit the game. Create a function that checks for this every time Pac-Man loses a life, and calls `process.exit();` if necessary.

# Step 5a: Power-Pellets

That wasn't very fair of us -- we added ghosts, but we never gave Pac-Man a fighting chance! Add the ability for Pac-Man to eat a __Power-Pellet__. There should be four power-pellets altogether.

- add a powerPellets variable, similar to how `score` and `lives` are setup. It should start off as `4`.
- display how many power-pellets are left underneath the stats area (where Score and Lives are displayed).

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

# Step 5b: Add Eat Power-Pellet to the Menu

Add the option to eat a power-pellet to the menu.

Your game should look similar to this now:

```
Score: 0     Lives: 2

Power-Pellets: 4

Select Option:

(d) Eat Dot
(p) Eat Power-Pellet
(1) Eat Inky
(2) Eat Blinky
(3) Eat Pinky
(4) Eat Clyde
(q) Quit

Waka Waka :v
```

# Step 5c: Process Power-Pellets

Create an `eatPowerPellet` function that's executed when the `p` key is entered. It should:

- increase Pac-Man's score by 50 points
- change all the ghost's `edible` property to true
- reduce the number of Power-Pellets remaining

# Step 5d: Power-Pellet Check

Ensure that Pac-Man can't eat a Power-Pellet if there are none left:

- remove the __(p) Eat Power-Pellet__ option from the menu

- ensure you don't allow the user to enter (p) to try to eat a Power-Pellet. You could put a warning in saying __No Power-Pellets left!__ similar to how the warning __Invalid Command!__ is implemented

# Step 6a: Edible Ghosts

Now that we have Power-Pellets, let's re-visit the process eat a ghost function. This is what happens if Pac-Man eats an edible ghost:

- say a quick sentence about the ghost just eaten and its personality (similar to how it flashes __Chomp!__ when Pac-Man eats a dot)

- Pac-Man's score increases:

  - The first ghost is worth 200 points
  - The second ghost is worth 400 points
  - The third ghost is worth 800 points
  - The fourth ghost is worth 1,600 points

  So if Pac-Man eats all the ghosts, he'll score 3,000 points in total.

- the ghost's edible property changes to false (as it regenerates in its offensive form)

# Step 6b: Adjust Ghosts in Menu

Update the eat ghost options in the menu to display whether a ghost is edible or inedible.

Your game should look similar to this now:

```
Score: 0     Lives: 2

Power-Pellets: 3

Select Option:

(d) Eat Dot
(p) Eat Power-Pellet
(1) Eat Inky (edible)
(2) Eat Blinky (inedible)
(3) Eat Pinky (edible)
(4) Eat Clyde (edible)
(q) Quit

Waka Waka :v
```

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

Now that you're all done, go outside and find the nearest time-machine, travel back to a 1980s arcade, and see if you can get the highest-score possible (3,333,360 points!).
