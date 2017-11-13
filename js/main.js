document.addEventListener("DOMContentLoaded", function(event) {
    console.log('Your DOM is ready!')
    var modal = document.querySelector(".modal");
    var signin = document.querySelector(".signin");
    var close = document.querySelector(".close");

    signin.addEventListener("click", function(e) {
        modal.style.display = 'block';
    });

    close.addEventListener("click", function(e) {
      modal.style.display = "none";
    });
});
