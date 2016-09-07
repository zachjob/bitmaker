// Setup Input and Output to work nicely in our Terminal
var stdin = process.stdin;
var stdout = process.stdout;
stdin.setRawMode(true);
stdin.resume();
stdin.setEncoding('utf8');

// Setup initial game stats
var score = 0;
var lives = 2;

// Draw the screen functionality
function drawScreen() {
  clearScreen();
  setTimeout(function() {
    displayStats();
    displayMenu();
    displayPrompt();
  }, 10);
}

function clearScreen() {
  console.log('\x1Bc');
}

function displayStats() {
  stdout.write('Score: ' + score)
  stdout.write('     Lives: ' + lives)
}

function displayMenu() {
  console.log('\n\nSelect Option:\n');
  console.log('(d) Eat Dot')
  console.log('(q) Quit')
}

function displayPrompt() {
  stdout.write('\nWaka Waka :v '); // :v is the Pac-Man emoji.
}

// Menu Options
function eatDot() {
  console.log('\nChomp!');
  score += 10;
}

// Process Player's Input
function processInput(key) {
  switch(key) {
    case '\u0003':
    case 'q':
      process.exit();
      break;
    case 'd':
      eatDot();
      break;
    default:
      console.log('\nInvalid Command!');
  }
}

// Draw screen when game first starts
drawScreen();

// Process input and draw screen each time player enters a key
stdin.on('data', function(key) {
  stdout.write(key);
  processInput(key);
  setTimeout(drawScreen, 300);
});

// Player Quits
process.on('exit', function() {
  console.log('\n\nGame Over!\n');
});
