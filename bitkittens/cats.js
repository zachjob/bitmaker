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
      $("#cat1").append('<img src="' + data.cats[0].photo + '" alt="Photo of ' + data.cats[0].name + '"/>');
      $("#cat2").append('<img src="' + data.cats[1].photo + '" alt="Photo of ' + data.cats[1].name + '"/>');
      $("#cat3").append('<img src="' + data.cats[2].photo + '" alt="Photo of ' + data.cats[2].name + '"/>');
    });
  });
});