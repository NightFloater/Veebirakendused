<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd" >
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>




<html lang="en">

<head>
    <script src="script.js"></script>


    <meta charset="UTF-8">
    <meta name="memes" content="memes">
    <title>Meme Exchange</title>


    <style>
        .g-signin2{
            margin-left:500px;
            margin-top:200px;
        }
        .data{
        display:none;
        }



    </style>



    <style type="text/css">
        .css-3d-text {

            font-size: 76px;
            color: #ed1aed;
            font-family: 'Comic Sans MS', cursive, sans-serif;
            text-shadow: 0px 0px 0 rgb(232, 21, 232),
            1px 1px 0 rgb(227, 16, 227),
            2px 2px 0 rgb(222, 11, 222),
            3px 3px 0 rgb(217, 6, 217),
            4px 4px 0 rgb(212, 1, 212),
            5px 5px 0 rgb(207, -4, 207),
            6px 6px 0 rgb(202, -9, 202),
            7px 7px 0 rgb(197, -14, 197),
            8px 8px 0 rgb(192, -19, 192),
            9px 9px 0 rgb(187, -24, 187),
            10px 10px 0 rgb(182, -29, 182),
            11px 11px 10px rgba(230, 32, 32, 0.6),
            11px 11px 1px rgba(230, 32, 32, 0.5),
            0px 0px 10px rgba(230, 32, 32, .2);
    </style>


    <style type="text/css">
        .css-3d-text2 {

            font-size: 76px;
            color: #1ab1ed;
            font-family: 'Comic Sans MS', cursive, sans-serif;
            text-shadow: 0px 0px 0 rgb(21, 172, 232),
            1px 1px 0 rgb(16, 167, 227),
            2px 2px 0 rgb(11, 162, 222),
            3px 3px 0 rgb(6, 157, 217),
            4px 4px 0 rgb(1, 152, 212),
            5px 5px 0 rgb(-4, 147, 207),
            6px 6px 0 rgb(-9, 142, 202),
            7px 7px 0 rgb(-14, 137, 197),
            8px 8px 0 rgb(-19, 132, 192),
            9px 9px 0 rgb(-24, 127, 187),
            10px 10px 0 rgb(-29, 122, 182),
            11px 11px 10px rgba(230, 32, 32, 0.6),
            11px 11px 1px rgba(230, 32, 32, 0.5),
            0px 0px 10px rgba(230, 32, 32, .2);
        }
    </style>


    <!-- Codes by HTML.am -->

    <!-- CSS Code -->
    <style type="text/css">
        .GeneratedMarquee {
            font-size: 76px;
            color: #1ab1ed;
            font-family: 'Comic Sans MS', cursive, sans-serif;
            text-shadow: 0px 0px 0 rgb(21, 172, 232),
            1px 1px 0 rgb(16, 167, 227),
            2px 2px 0 rgb(11, 162, 222),
            3px 3px 0 rgb(6, 157, 217),
            4px 4px 0 rgb(1, 152, 212),
            5px 5px 0 rgb(-4, 147, 207),
            6px 6px 0 rgb(-9, 142, 202),
            7px 7px 0 rgb(-14, 137, 197),
            8px 8px 0 rgb(-19, 132, 192),
            9px 9px 0 rgb(-24, 127, 187),
            10px 10px 0 rgb(-29, 122, 182),
            11px 11px 10px rgba(230, 32, 32, 0.6),
            11px 11px 1px rgba(230, 32, 32, 0.5),
            0px 0px 10px rgba(230, 32, 32, .2);

        }
    </style>

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


<div class="g-signin2" data-onsuccess="onSignIn"></div>
<img id="pic" class = "img-circle" width="100" height="100"/>



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


<em class="css-3d-text2">Last weeks dankest memes</em>


<p>
    <img src="https://thechive.files.wordpress.com/2017/03/90s-memes-that-prove-life-was-tough-before-the-internet-58-photos-28.jpg"
         alt="">
    <img src="https://pics.me.me/smh-life-was-much-better-in-the-90s-stormy-atx-6730152.png" alt="">
    <img src="https://pics.me.me/baby-its-only-micro-microsoft-when-its-soft-%F0%9F%98%82%F0%9F%98%82-microsoft-9533785.png"
         alt="">
</p>


<p>

    <img src="http://cdn.funnyand.com/wp-content/uploads/2015/02/80s-Hairstyle.jpg" alt="">
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


</body>

</html>
