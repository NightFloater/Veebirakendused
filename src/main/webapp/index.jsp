<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd" >
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>




<html lang="en">

<head>

    <link rel="stylesheet" href="Styles.css">
    <script src="script.js"></script>


    <meta charset="UTF-8">
    <meta name="memes" content="memes">
    <title>Meme Exchange</title>








</head>
<body onload="resolution()"
      background="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTu3TSQXAplExhow-h2xtZGSn9gfEtI2CdHVh6I2YeKtj19K9uB">

<!-- Google translate-->
<div id="google_translate_element"></div><script type="text/javascript">
    function googleTranslateElementInit() {
        new google.translate.TranslateElement({pageLanguage: 'en', includedLanguages: 'et,id,la,ru', layout: google.translate.TranslateElement.InlineLayout.SIMPLE, multilanguagePage: true}, 'google_translate_element');
    }
</script><script type="text/javascript" src="//translate.google.com/translate_a/element.js?cb=googleTranslateElementInit"></script>

<!-- Google login-->

<script src="https://apis.google.com/js/platform.js" async defer></script>

<meta name="google-signin-client_id" content="380538042349-mhl7ivq7si0t2ajgtothpkidmt271ieh.apps.googleusercontent.com">

<script>
    function onSignIn(googleUser) {
        var profile = googleUser.getBasicProfile();
        $("#pic").attr('src',"http://i1.kym-cdn.com/photos/images/newsfeed/000/270/676/83b.png");
        document.getElementById("pic").src = "http://i1.kym-cdn.com/photos/images/newsfeed/000/270/676/83b.png";

    }

</script>

<div class="g-signin2" data-onsuccess="onSignIn" ></div>
<img id="pic" class = "img-circle" />



<!-- Google logout-->
<script>
    function signOut() {
        var auth2 = gapi.auth2.getAuthInstance();
        auth2.signOut().then(function () {
            console.log('User signed out.');

        });
    }
</script>
<a href="#" onclick="signOut();">Sign out</a>


<div>
    <em class="css-3d-text">BUY, SELL, EXCHANGE MEMES</em>
</div>


<!-- HTML Code -->
<marquee class="GeneratedMarquee">Lil Fi$h - Better</marquee>
<p>

    <img src="https://i.imgur.com/Y7RVrdL.gif" alt="" width="25%" style="float:left">
    <iframe width="50%" height="300" scrolling="no" frameborder="0"
            src="https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/391069176&color=%2350eb6a&auto_play=true&hide_related=false&show_comments=true&show_user=true&show_reposts=false&show_teaser=true&visual=true"></iframe>
    <img src="https://i.imgur.com/Y7RVrdL.gif" alt="" width="25%" style="float:right">
<div>
    <img src="https://i.imgur.com/BlRQDFF.gif" alt="" width="50%">
</div>


</p>


<marquee class="css-3d-text">She better than the rest</marquee>

<p>
    <marquee><img src="https://www.pngarts.com/files/1/Face-PNG-Background-Image.png" alt="" id="pic2">
        <img src="https://www.pngarts.com/files/1/Face-PNG-Background-Image.png" alt="">
        <img src="https://i.imgur.com/ka7taFq.png" alt="">
    </marquee>


</p>


<em class="css-3d-text2">Throwback memes</em>


<p>
    <img src="https://thechive.files.wordpress.com/2017/03/90s-memes-that-prove-life-was-tough-before-the-internet-58-photos-28.jpg"
         alt="">
    <img src="https://pics.me.me/smh-life-was-much-better-in-the-90s-stormy-atx-6730152.png" alt="">
    <img src="https://pics.me.me/baby-its-only-micro-microsoft-when-its-soft-%F0%9F%98%82%F0%9F%98%82-microsoft-9533785.png"
         alt="">
</p>



<p>
    Click here to give us your information
    <input type="button" name="b1" value="Click Me" onclick="location.href='tekst.jsp'">
</p>
<p>
    Click here to see some lists
    <input type="button" name="b1" value="Click Me" onclick="location.href='kasutajad.jsp'">
    Click here in the future to upload pictures
    <input type="button" name="b1" value="Upload" onclick="location.href='upload.php'">

    Click here to see your resolution
    <input type="button" name="b1" value="Reso" onclick="location.href='resolution.php'">




</p>
<p>
    Click here to give us your information
    <input type="button" name="b1" value="Click Me" onclick="location.href='loaderio-946c5f0bd08a7d43ba7885955bf1dc4e'">
</p>


</body>

</html>
