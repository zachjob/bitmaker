1. ~
profile = document.body.querySelector(".profile-image")
<img class="profile-image" src="images/self-portrait-grassbg.jpg" alt="Self Portrait" title="Self Portrait">
profile
<img class="profile-image" src="images/self-portrait-grassbg.jpg" alt="Self Portrait" title="Self Portrait">
profile.src = "https://placebear.com/400/400"
"https://placebear.com/400/400"
~
2. ~
var sky = document.querySelector("#left-image")
sky
<div id="left-image" class="portfolio-image">
sky.innerHTML = '<img src="https://placebear.com/325/225">';
"<img src=\"https://placebear.com/325/225\">"
~
3. ~
title = document.querySelector("h1")
<h1 class="highlight">
title.innerHTML = "Zach Job";
"Zach Job"
~
4. ~
var employment = document.querySelector("div#employment > h3")
undefined
employment
<h3 class="info-title">
employment.innerHTML = "Test?";
"Test?"
~
5. ~
document.body.style = "background: #098766;";
~
6. ~
highlights = document.querySelectorAll(".highlight")
NodeList [ aside.highlight, h1.highlight, div#sleep.bar-filled.highlight, div#eat.bar-filled.highlight, div#time-travel.bar-filled.highlight, div#cry.bar-filled.highlight, h2.highlight, h2.highlight ]
for (var i = 0; i <= highlights.length; i++) { highlights[i].style = "background: #fff;"; };
~
7. ~
title.style="font-family: 'monospace';";
~
8. ~
icon = document.querySelector(".action-icon-bg");
<a class="action-icon-bg" href="#">
icon.style="background: #000;";
~
9. ~
var name = document.querySelector("#name");
undefined
name
"[object HTMLInputElement]"
name.placeholder = "Identify yourself!";
"Identify yourself!"
~
10. ~
var business = document.querySelector("#message")
undefined
business
<textarea id="message" name="message" placeholder="Message">
business.placeholder = "State your business!";
"State your business!"
~
11. ~
name
"[object HTMLInputElement]"
name.value = "Your Nemesis";
"Your Nemesis"
~
12. ~
var email = document.querySelector("#email");
undefined
email
<input id="email" class="contact-info" name="email" placeholder="Email" type="email">
email.value = "koalathebear@gmail.com";
"koalathebear@gmail.com"
~
13. ~
var btn = document.querySelector("#submit")
undefined
btn
<input id="submit" name="submit" value="Submit" type="submit">
btn.value = "En Garde!";
~
14. ~
btn.disabled = true;
true
~
15. ~
var privInfo = document.querySelector(".bio-info");
undefined
privInfo
<ul class="bio-info">
privInfo.remove()
~