document.addEventListener("DOMContentLoaded", function (event) {
    console.log("DOM fully loaded and parsed");

    var body = document.querySelector('.light');
    var control = document.querySelector('.switch');

    control.addEventListener("click", function( e ) {
        
        if (control.classList.contains('on')) {
            control.classList.remove('on');
            control.classList.add("off");

            body.classList.remove('light');
            body.classList.add('dark');
        } else {
            control.classList.remove("off");
            control.classList.add("on");

            body.classList.remove("dark");
            body.classList.add("light");
        };
        
  });
});