document.addEventListener("DOMContentLoaded", function() {
  console.log("Your DOM is ready.");
  
  $.ajax({ 
    url: "https://bb-election-api.herokuapp.com/", 
    method: "GET",
    dataType: "json",
  }).done(function(data) {
    for (var i = data.length; i >= 0; i--) {
      
    };
  });
});
