document.addEventListener("DOMContentLoaded", function(event) {
    console.log('Your DOM is ready!')
    var modal = document.querySelector(".modal");
    var signin = document.querySelector(".signin");
    var close = document.querySelector(".close");

    signin.addEventListener("click", function(e) {
        modal.style.display = 'block';
//     if (control.classList.contains("on")) {
//       control.classList.remove("on");
//       control.classList.add("off");

//       status.innerText = "Hey, who turned off the lights?";

//       body.classList.remove("light");
//       body.classList.add("dark");
//     } else {
//       control.classList.remove("off");
//       control.classList.add("on");

//       status.innerText = "It's so bright in here!";

//       body.classList.remove("dark");
//       body.classList.add("light");
//     }
    });
});
