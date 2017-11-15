$(function() {
  console.log("ready!");
  $(".summon-cats").click(function() {
    // console.log("Summoning cats...");
    $.ajax({ 
        url: "http://bitkittens.herokuapp.com/cats.json",
        method: "GET",
        dataType: "JSON",
    }).done(function(data) {
      console.log(data);
    });
  });
});