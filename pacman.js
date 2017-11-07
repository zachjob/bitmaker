// var ghosts = ["Inky", "Blinky", "Pinky", "Clyde"];

// console.log("There are " + ghosts.length + " ghosts.");
// console.log("Their names are: ");
// console.log(ghosts[0]);
// console.log(ghosts[1]);
// console.log(ghosts[2]);
// console.log(ghosts[3]);

// var inky = {};
// inky.colour = "Cyan";
// inky.personality = "Shadow";
// console.log(inky);

// var ghosts = { inky: "Cyan", blinky: "Red", pinky: "Pink", clyde: "Orange" };
// console.log(ghosts);
// console.log(ghosts.inky); // => 'Cyan'
// console.log(ghosts.blinky); // => 'Red'
// console.log(ghosts['inky']); // => 'Cyan'
// console.log(ghosts['blinky']); // => 'Red'

var ghosts = ["Inky", "Blinky", "Pinky", "Clyde"];

for (var index = 0; index < ghosts.length; index++) {
  console.log("Pac-Man eats " + ghosts[index]);
}