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

// var ghosts = ["Inky", "Blinky", "Pinky", "Clyde"];

// for (var index = 0; index < ghosts.length; index++) {
//   console.log("Pac-Man eats " + ghosts[index]);
// }

// var powerPelletEaten = false;
// var ghosts = 4;

// while (true) {
//   console.log("Ghosts remaining: " + ghosts);

//   if (powerPelletEaten == false) {
//     console.log("Pac-Man eats the power pellet.");
//     powerPelletEaten = true;
//   } else if (ghosts > 0) {
//     console.log("Pac-Man eats a ghost.");
//     ghosts--;
//   } else {
//     break;
//   }
// }

// console.log("Pac-Man returns home after a long day in the maze.");

var ghost = "Pinky";
var colour;

switch (ghost) {
  case "Inky":
    colour = "Cyan";
    break;
  case "Blinky":
    colour = "Red";
    break;
  case "Pinky":
    colour = "Pink";
    break;
  case "Clyde":
    colour = "Orange";
    break;
}

console.log(ghost + " is the colour " + colour);