document.addEventListener("DOMContentLoaded", function (event) {

    var body = document.querySelector('.light');
    var control = document.querySelector('.switch');
    var status = document.querySelector('.status');

    control.addEventListener("click", function( e ) {
        
        if (control.classList.contains('on')) {
            control.classList.remove('on');
            control.classList.add("off");

            status.innerText = "Hey, who turned off the lights?";

            body.classList.remove('light');
            body.classList.add('dark');
        } else {
            control.classList.remove("off");
            control.classList.add("on");

            status.innerText = "It's so bright in here!";

            body.classList.remove("dark");
            body.classList.add("light");
        };
        
  });
});