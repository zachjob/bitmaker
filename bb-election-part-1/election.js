document.addEventListener("DOMContentLoaded", function() {
  console.log("Your DOM is ready.");
  
  $.ajax({ 
    url: "https://bb-election-api.herokuapp.com/", 
    method: "GET",
    dataType: "json",
  }).done(function(data) {
    for (var i = 0; i < data.candidates.length; i++) {
      list = document.querySelector("ul");
      // console.log(data.candidates[i].name);
      $(list).append("<li>Name: " + data.candidates[i].name + " | Votes: " + data.candidates[i].votes + "</li>");
    };
  });
});
