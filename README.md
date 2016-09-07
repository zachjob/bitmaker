# JavaScript FUNdamentals: From Ruby to JavaScript

## Intro

JavaScript is everywhere: in your browser, on servers using __node__, and more recently, developers are even creating desktop applications with __electron__.

This assignment will cover programming concepts that you're already familiar with in Ruby, and introduce you to how they're done in JavaScript.

We'll be using the 80's iconic classic arcade game _Pac-Man_ for our example code.

Start by forking this repository to use as a shell for all the mini javascript files you'll be creating.

## A note about conventions

For all of the JavaScript examples provided, you should type in the code where appropriate. This will be at one of the following places:

- your operating system's command prompt
- the node prompt
- in your editor

If you see a `$`, that means enter the data at your command prompt:

```shell
$ pwd
/Users/sean/Desktop
```

If you see a `>`, that means enter data at a node prompt:

``` javascript
> 1 + 2 + 3
6
```

If you see `// filename.js`, that means you should:
1. create this file
2. enter code into your editor
3. save the file
4. run the file
5. add and commit your code to git

So for this example:

``` javascript
// pacman-console.js

console.log('Hello, Pac-Man!');
```

You should:
1. create a file called `pacman-console.js`
2. enter `console.log('Hello, Pac-Man!');` into the file in your editor
3. save the file
4. run it with `node pacman-console.js` in the terminal
5. add the code to git:
  1. `git status`
  1. `git add .`
  3. `git status`
  4. `git diff head`
  5. `git commit -m 'my first pacman program'`
  6. `git status`
  7. `git push`
  8. `git status`

Occasionally you'll see examples in Ruby as well, as many examples compare JavaScript with Ruby. If you already feel you fully understand the concept in Ruby, then you can skip typing in those examples.

# Node.js

Although much of the JavaScript you'll be creating in this course will be for the browser, Node, which allows you to run JavaScript on your computer from within your terminal, can be an easier way to experiment and learn.

## Is Node installed?

From your terminal:

```shell
$ node -v
```

If a version is reported back to you, you already have Node installed and you can skip the next section __"Installing Node"__.  If you get `command not found` or something similar, please install node as per the next section's instructions.

## Installing Node

Please install Node as per your Operating System's instructions:

#### Mac OS X

From your command prompt, use _brew_ to install node:

```shell
$ brew install node
```

#### Ubuntu Linux

Follow the instructions at [http://www.hostingadvice.com/how-to/install-nodejs-ubuntu-14-04/#node-version-manager] (http://www.hostingadvice.com/how-to/install-nodejs-ubuntu-14-04/#node-version-manager)

## Verify Node is Installed

```shell
$ node -v
```

It should report back the version of node install. If not, please ask an instructor for help.

## Node as a REPL (Read-Evaluate-Print-Loop)

With Ruby, we use `irb` to bring up a REPL. With node, just type `node` at your command prompt and you should see a `>`, indicating that you're now in the Node REPL.

```shell
$ node
```

```javascript
>
```

Try doing a little math with JavaScript code at the node prompt:

```javascript
> 8 * 8
64
>
```

The Node REPL is a great place to experiment with your code when you're trying to figure something out.

Like `irb` in Ruby, the Node REPL reports back the return value of the function you just ran. Often this will be `undefined` as that's the default return value of all functions.

```javascript
> 4 * 10
40 // 40 is the return value of 4 * 10
> var enemy = "Ghost";
undefined // Assigning a variable returns undefined
> console.log(enemy);
Ghost // console.log displays ghost on the screen
undefined // but then it returns undefined
> enemy;
'Ghost' // No undefined here -- that's because 'enemy' returned the string we set it to.
```

For help, type `.help`:

```javascript
> .help
```

If you get stuck (i.e. you continue to see `...`), press `ctrl-c` or type `.break` to get back to the regular Node prompt:

```javascript
> > var ghosts = [
... 'Inky',
... // Now press enter several times
...
...
... .break // or ctrl-c
> // Ahh relief... back to our regularly scheduled Node prompt.
```

Press `ctrl-d` or type `.exit` to exit the Node REPL.

## Running a Node script

Let's create and run our first Node script.

Create a file:

```shell
$ touch pacman-console-log.js
```

Open up `pacman-console-log.js` in your editor, and add the following code:

```javascript
// pacman-console-log.js

console.log('Pac-Man eats ghosts for lunch.');
```

And now, back at your command line, run the script by typing `node <filename>`:

```
$ node pacman-console-log.js
Pac-Man eats ghosts for lunch.
```

Notice that running a JavaScript file and entering the Node REPL both use the same command: `node`

# JavaScript

Now let's get on with while you're really here -- to learn some JavaScript (and help Pac-Man achieve his highest score yet!).

## Comments

In Ruby, we use a `#` for a comment. In JavaScript, use `//` for a single-line comment and `/* */` for multiline comments.

This assignment uses comments throughout -- you don't have to type those, it's just my way of letting you know something while you're in the middle of coding.

Ruby:

```ruby
# I am a comment!
```

JavaScript:

```javascript
// I am a comment!
var ghost = "Blinky!" // <<-- this variable assignment is not a comment, but everything after the // in this sentence is a comment.
/*
  Each
  of
  theses
  lines
  are
  comments
*/
```

## Semi-colons

Semi-colons are optional at the end of a line, as long as your next line of code starts on a new line.

## Data Types

There are six data types that are `primitives` and one Object data type.

- `Boolean`
- `Null`
- `Undefined`
- `Number`
- `String`
- `Symbol` (new in ECMAScript 6)
- `Object` (not a primitive)

You'll mainly use the _String_, _Number_ and _Boolean_ data types.

## Dynamic Typing

Like Ruby, JavaScript is a dynamic language. This means you don't have to declare the type of a variable ahead of time. The type will be determined automatically while the program is being processed.

Let's play around in the Node REPL to test this out.

```shell
$ node
```

```javascript
> var ghost = 'Inky'
> ghost
'Inky'
> typeof ghost
'string' // JavaScript automatically made 'ghost' a 'string' data type
> var numberOfGhosts = 4
> typeof numberOfGhosts
'number' // JavaScript automatically made 'numberOfGhosts' a 'number' data type
```

Notice how we used camel case for the `numberOfGhosts` variable, instead of underscores, like we do in Ruby (e.g. `number_of_ghosts`). Technically you could use underscores in your variable names, but the convention in JavaScript is camel case: the first word of the variable is all lowercase, and capitalize the first letter of each word following (if any).

## Variables

Variables can vary, and can be defined using the var keyword.

```javascript
> var ghost = 'Inky'
> console.log(ghost)
> ghost = 'Blinky' // We're redefining the ghost variable
> console.log(ghost)
```

## Constants

__Variables__ can change, but __Constants__ are forever (forever being as long as the JavaScript session is running).

Let's test this:

```shell
$ node
```

```javascript
// First create a ghost constant
> const NUMBER_OF_GHOSTS = 4
> const GHOST = 'Inky'
> console.log(NUMBER_OF_GHOSTS)
> console.log(GHOST)
> GHOST = 'Blinky' // this should generate an errors
> console.log(GHOST)
```

Notice what happened when you tried to redefine the `GHOST` constant.

The convention in JavaScript is to define constants using ALL_CAPITALS_WITH_UNDERSCORES_SEPARTING_WORDS.

## Strings

Strings are text. You set them up by putting quotes around them.

```javascript
> var name = 'Pac-Man'
> console.log(name)
```

You can concatenate (join together) strings together using a `+`.

```javascript
> var num_ghosts = 4
> var name = 'Pac-Man'
> var sentence = 'Our hero, ' + name + ', must eat ' + num_ghosts + ' ghosts for maximum points.'
> console.log(sentence)
```

Strings have the length property and many useful methods.

``` javascript
> var name = 'Pac-Man'
> name.length
> name.toUpperCase()
> name.replace('Man', 'Woman')
```

## Booleans (true and false)

The following are false:

- undefined
- null
- false
- 0
- NaN
- '' (empty string)

Everything else is true.

Test this out in the Node REPL:

```javascript
> Boolean(undefined)
> Boolean(null)
> Boolean(false)
> Boolean(true)
> Boolean(0)
> Boolean(1)
> Boolean('')
> Boolean('Waka Waka!')
```

## Numbers

In Ruby, we use Integers (Fixnum) for whole numbers, and Floats for numbers with a decimal. But in JavaScript, there's just Number, which are always floats, even if they look like Integers sometimes.

Let's go into irb (the Ruby REPL) to experiment:

```shell
$ irb
```

```ruby
irb > num_that_looks_like_an_integer = 1
irb >  num_that_looks_like_an_float = 1.0
irb > num_that_looks_like_an_integer.class
irb > num_that_looks_like_an_float.class
irb > num_that_looks_like_an_integer
irb > num_that_looks_like_an_float
```

Now let's try a similar experiment in the Node:

```javascript
> var numThatLooksLikeAnInteger = 1
> var numThatLooksLikeAFloat = 1
> numThatLooksLikeAnInteger.constructor
[Function: Number]
> numThatLooksLikeAFloat.constructor
[Function: Number]
> numThatLooksLikeAnInteger
1
> numThatLooksLikeAFloat
1 // Exact same as the number that looked like an Integer even though we defined it as 1.0
```

# Collections

Let's move to our editor to work on the following longer code blocks.

I'll show you the Ruby code as well where appropriate by indicating it's filename `pacman.rb`. You don't need to actually create this file and test the Ruby code: instead use it as a reference of something familiar to better understand the JavaScript code.

## Arrays

Defining and working with arrays is similar to Ruby.

#### Ruby:

(You don't need to test this out)

```ruby
# pacman.rb
ghosts = ['Inky', 'Blinky', 'Pinky', 'Clyde']
puts "There are #{ghosts.length}  ghosts."
puts 'Their names are: '
puts ghosts[0]
puts ghosts[1]
puts ghosts[2]
puts ghosts[3]
```

#### JavaScript:

(You should type in the JavaScript code)

```javascript
// pacman-arrays.js
var ghosts = ['Inky', 'Blinky', 'Pinky', 'Clyde']
console.log('There are ' + ghosts.length + ' ghosts.')
console.log('Their names are: ')
console.log(ghosts[0])
console.log(ghosts[1])
console.log(ghosts[2])
console.log(ghosts[3])
```

```shell
$ node pacman-arrays.js
```

## Maps

Maps in JavaScript can serve for a similar purpose that hashes provide in Ruby.

#### Ruby:

```ruby
# pacman.rb
ghosts = {}
ghosts['Inky'] = 'Cyan'
ghosts['Blinky'] = 'Red'
ghosts['Pinky'] = 'Pink'
ghosts['Clyde'] = 'Orange'
puts ghosts
```

#### JavaScript:

```javascript
// pacman-maps.js
var ghosts = new Map()
ghosts.set('Inky', 'Cyan')
ghosts.set('Blinky', 'Red')
ghosts.set('Pinky', 'Pink')
ghosts.set('Clyde', 'Orange')
console.log(ghosts)
```

Now run `pacman-maps.js` again from the command line using `node`.

## Objects

Objects are defined using `objectName = {}` and properties are assigned using dot notation.

#### Ruby:

```ruby
# pacman.rb
class Ghost
  attr_accessor :colour, :personality
end
inky = Ghost.new
inky.colour = 'Cyan'
inky.personality = 'Shadow'
puts inky.inspect
```

#### JavaScript:

```javascript
// pacman-objects-1.js
var inky = {}
inky.colour = 'Cyan'
inky.personality = 'Shadow'
console.log(inky)
```

We can also setup an object when we first define it:

```javascript
// pacman-objects-2.js
var ghosts = {inky: 'Cyan', blinky: 'Red', pinky: 'Pink', clyde: 'Orange' }
console.log(ghosts)
```

# Loops

Now that we have a way to define collections as Arrays and Objects, let's move on to loops.

In Ruby, we often use `each` for iterating over a collection:

```ruby
ghosts = %w(Inky Blinky Pinky Clyde)
ghosts.each do |ghost|
  puts ghost
end
```

## For Loop

Often loops in JavaScript will follow a more conventional approach:
```javascript
for (<<initializer>>, <<condition>>, <<post iteration>>) {
  <<statement>>
}
```

Pac-Man just ate an powerPellet and wants to eat all four ghosts!

_(note: the `...` in the code block below will output by your Node REPL when you start your for loop)_

```javascript
// pacman-for-loop.js
var ghosts = ['Inky', 'Blinky', 'Pinky', 'Clyde']
for (var index = 0; index < ghosts.length; index++) {
  console.log('Pac-Man eats ' + ghosts[index])
}
```

## for...each

Pac-Man ate all of the ghosts, and now they're coming out of their base one by one as their regular colour. Let Pac-Man know what colour each ghost is.

```javascript
// pacman-for-each.js
var ghosts = new Map()
ghosts.set('Inky', 'Cyan')
ghosts.set('Blinky', 'Red')
ghosts.set('Pinky', 'Pink')
ghosts.set('Clyde', 'Orange')
ghosts.forEach(function (value, key) {
  console.log(key + ' is ' + value)
})
```

## for...in

Now let's let Pac-Man know each ghost's personality so he knows how to react around them:

```javascript
// pacman-for-in.js
var ghosts = {inky: 'shadow', blinky: 'speedy', pinky: 'bashful', clyde: 'pokey' }
for (ghost in ghosts) {
  console.log(ghost + ' is ' + ghosts[ghost])
}
```

## While loop

As long as we have money, we should play Pac-Man!

```javascript
// pacman-while.js
var quarters = 4
while (quarters >= 1) {
  console.log('Play a game of Pac-Man')
  quarters--
}
```

## Do..While

If you know you want to loop to execute at least once, you can use `do...while`.

```javascript
// pacman-do-while.js
var quarters = 4
do {
  console.log('Play a game of Pac-Man')
  quarters--
} while (quarters > 0)
```

## Break

`break` can be used to exit a loop

```javascript
// pacman-break.js
var quarters = 4
while (true) {
  console.log('Play a game of Pac-Man')
  quarters--
  if (quarters <= 0 ) {
    break
  }
}
```

## Conditionals

### If..else

If statements work the same as Ruby, where you evaluate a condition to see if it's true.

#### Ruby:

```ruby
# pacman.rb
power_pellet_eaten = false
ghosts = 4
while true do
  puts "Ghosts remaining: #{ghosts}"
  if power_pellet_eaten == false
    puts 'Pac-Man eats the power pellet.'
    power_pellet_eaten = true
  elsif ghosts > 0
    puts 'Pac-Man eats a ghost.'
    ghosts--
  else
    break
  end
end
puts 'Pac-Man goes home after a long day in the maze.'
```

#### JavaScript:

```javascript
// pacman-if-else.js
var powerPelletEaten = false
var ghosts = 4
while (true) {
  console.log('Ghosts remaining: ' + ghosts)
  if (powerPelletEaten == false) {
    console.log('Pac-Man eats the power pellet.')
    powerPelletEaten = true
  } else if (ghosts > 0) {
    console.log('Pac-Man eats a ghost.')
    ghosts--
  } else {
    break
  }
}
console.log('Pac-Man returns home after a long day in the maze.')
```

### Switch

The `switch` statement in JavaScript is like the `case` statement in Ruby.

#### Ruby:

```ruby
# pacman.rb
ghost = 'Pinky'
case ghost
when 'Inky'
  colour = 'Cyan'
when 'Blinky'
  colour = 'Red'
when 'Pinky'
  colour = 'Pink'
when 'Clyde'
  colour = 'Orange'
end
puts "#{ghost} is the colour #{colour}"
```

#### JavaScript:

```javascript
// pacman-switch.js
var ghost = 'Blinky'
switch (ghost) {
case 'Inky':
  colour = 'Cyan'
  break
case 'Blinky':
  colour = 'Red'
  break
case 'Pinky':
  colour = 'Pink'
  break
case 'Clyde':
  colour = 'Orange'
  break
}
console.log(ghost + ' is the colour ' + colour)
```

## Functions

Functions are similar to `methods` in Ruby, but they are also more powerful, and less often attached to a class.

### Declaring a Function

#### Ruby:

```ruby
# pacman.rb
def eat_dot
  @score += 10
end
```

##### JavaScript:

```javascript
function eatDot() {
  score += 10
}
```

Note that you shouldn't actually see anything yet if you typed that in -- that's because we never called the function.

### Calling a function

Functions are called by putting `()` after the function name. Let's try this out in Node REPL.

```javascript
> var score = 0
> function eatDot() {
    score += 10
  }
> score
0
> eatDot()
> score
10
> eatDot()
> score
20
```

Let's try calling the function without the brackets:

```javascript
> score
20
> eatDot
[Function: eatDot] // eatDot without () returns the actual function, but doesn't execute it
> score
20 // score has remained the same
```

We can see evidence of trying to call the function without brackets by testing it out with the built in JavaScript String data type:

```javascript
> var hero = 'Pac-Man'
> hero.toUpperCase
[Function: toUpperCase] // no (), so we didn't call this function
> hero.toUpperCase()
'PAC-MAN' // now we have (), so we did call this function
> hero.length
7 // length returned 7, the number of characters in 'Pac-Man', because length is a property of the String type, not a function of the String type
```

### Passing parameters to functions

Often you'll pass parameters into the function, in which case you put the parameters between the brackets. Let's create a function to keep track of high scores.

```javascript
> var highScores = []
> function addHighScore(playerInitials, score) {
    var record = { player: playerInitials, score: score }
    highScores.push(record) // add record to array
  }
> highScores
[] // empty array to start
> addHighScore('SDL', 2000)
> highScores
[ { player: 'SDL', score: 2000 } ]
> addHighScore('JSL', 10000)
> highScores
[ { player: 'SDL', score: 2000 },
  { player: 'JSL', score: 10000 } ]
```

### Return Values

With Ruby, the last expression of a method is returned, however, as you've likely noticed in the Node REPL, `undefined` is returned in JavaScript by default. To return a value in JavaScript, we have to explicitly return it.

Let's have Pac-Man earn some points:

```javascript
// pacman-return.js
function addScore(currentScore, eaten) {
  switch (eaten) {
  case 'dot':
    scoreToAdd = 10
    break
  case 'powerPellet':
    scoreToAdd = 50
    break
  case 'firstGhost':
    scoreToAdd = 200
    break
  case 'secondGhost':
    scoreToAdd = 400
    break
  }
  return currentScore + scoreToAdd
}
var score = 0

score = addScore(score, 'dot')
score = addScore(score, 'dot')
score = addScore(score, 'dot')
score = addScore(score, 'powerPellet')
score = addScore(score, 'firstGhost')
console.log('Your score: ' + score)
```

## Scope

I haven't told you this yet, because you generally shouldn't do this, but I feel you should know about it. You can declare a variable without the var keyword. This creates a __global variable__ accessible to the entire program. Globals are frowned upon, but I thought I should mention it in case you inadvertently create a global and you're not sure what just happened.

```JavaScript
function scoreDefiner() {
  var localScore = 100
  globalScore = 200
  console.log('Scores have been defined.')
}
scoreDefiner()
globalScore
localScore // should return an error
 ```

Variables defined outside of functions are accessible within the function.

```JavaScript
var localScore = 300
function scoreCheck() {
  console.log('Your score is ' + localScore)
}
scoreCheck()
```

# Game Over

That's it for this gentle introduction to JavaScript. I hope you feel a little more comfortable with the syntax and basic concepts, and are eager to take on your next lesson in which you'll be introduced to new programming concepts that make JavaScript a unique a powerful language.
