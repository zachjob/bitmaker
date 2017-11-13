document.addEventListener("DOMContentLoaded", function(event) {
    console.log('Your DOM is ready!')

    var modal = document.querySelector(".modal");
    var signin = document.querySelector(".signin");
    var close = document.querySelector(".close");
    var submit = document.querySelector(".submit");
    var username = document.querySelector('#user');
    var password = document.querySelector("#pass");

    signin.addEventListener("click", function(e) {
        modal.style.display = 'block';
    });

    close.addEventListener("click", function(e) {
      modal.style.display = "none";
    });

    submit.addEventListener("click", function(e) {
      username.classList.add('error');
      password.classList.add('error')
    });

    username.addEventListener("mouseover", function(e) {
      username.classList.remove("error");
    });
    
    password.addEventListener("mouseover", function(e) {
      password.classList.remove("error");
    });
});
