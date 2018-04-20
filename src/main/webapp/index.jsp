<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<%!public static Connection connect (){
    try{

        Class.forName("org.postgresql.Driver").newInstance();
        return DriverManager.getConnection("jdbc:postgresql://ec2-54-243-213-188.compute-1.amazonaws.com:5432/deoqpobdfumna2","vkzivsefpcoxqi","dc800fc78ba20df40f86c5c828c8a4b69dce75095371428e732ca89f2c36b080");


    }catch(Exception e){
       throw new Error(e);
    }
}


    public static boolean close(Connection c){

        try{
            c.close();
            return true;
        }catch (Exception e){
            return false;
        }

    }





%>


<html>
<body  bgcolor="#7ac968">




<P ALIGN=CENTER></P>
<div class="css-3d-text">MEEMIDE OST, MÜÜK, VAHETUS</div>
<style>
    .css-3d-text {
        font-size: 76px;
        color: #ed1aed;
        font-family: 'Comic Sans MS', cursive, sans-serif;
        text-shadow: 0px 0px 0 rgb(232,21,232),
        1px 1px 0 rgb(227,16,227),
        2px 2px 0 rgb(222,11,222),
        3px 3px 0 rgb(217,6,217),
        4px 4px 0 rgb(212,1,212),
        5px 5px 0 rgb(207,-4,207),
        6px 6px 0 rgb(202,-9,202),
        7px 7px 0 rgb(197,-14,197),
        8px 8px 0 rgb(192,-19,192),
        9px 9px 0 rgb(187,-24,187),
        10px 10px  0 rgb(182,-29,182),
        11px 11px 10px rgba(230,32,32,0.6),
        11px 11px 1px rgba(230,32,32,0.5),
        0px 0px 10px rgba(230,32,32,.2);
    }
</style>


<style>
    .css-3d-text2 {
        font-size: 76px;
        color: #1ab1ed;
        font-family: 'Comic Sans MS', cursive, sans-serif;
        text-shadow: 0px 0px 0 rgb(21,172,232),
        1px 1px 0 rgb(16,167,227),
        2px 2px 0 rgb(11,162,222),
        3px 3px 0 rgb(6,157,217),
        4px 4px 0 rgb(1,152,212),
        5px 5px 0 rgb(-4,147,207),
        6px 6px 0 rgb(-9,142,202),
        7px 7px 0 rgb(-14,137,197),
        8px 8px 0 rgb(-19,132,192),
        9px 9px 0 rgb(-24,127,187),
        10px 10px  0 rgb(-29,122,182),
        11px 11px 10px rgba(230,32,32,0.6),
        11px 11px 1px rgba(230,32,32,0.5),
        0px 0px 10px rgba(230,32,32,.2);
    }
</style>



<h1><marquee behavior="scroll" direction="left"><div><span style="color:#ff0000;">U</span><span style="color:#ff2a00;">P</span><span style="color:#ff5500;"> </span><span style="color:#ff7f00;">A</span><span style="color:#ffaa00;">N</span><span style="color:#ffd400;">D</span><span style="color:#ffff00;"> </span><span style="color:#aaff00;">C</span><span style="color:#55ff00;">O</span><span style="color:#00ff00;">M</span><span style="color:#00ff80;">I</span><span style="color:#00ffff;">N</span><span style="color:#00aaff;">G</span><span style="color:#0055ff;"> </span><span style="color:#0000ff;">F</span><span style="color:#2e00ff;">I</span><span style="color:#5d00ff;">S</span><span style="color:#8b00ff;">H</span>
</div></marquee><h1>
<iframe width="100%" height="300" scrolling="no" frameborder="no" allow="autoplay" src="https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/391069176&color=%2350eb6a&auto_play=true&hide_related=false&show_comments=true&show_user=true&show_reposts=false&show_teaser=true&visual=true"></iframe>

    <marquee behavior=scroll direction="left" scrollamount="14"><div class="css-3d-text2">She better than the rest</div></marquee>

<img src="https://i.imgur.com/QKwl1jm.gif" height="200" width="200" style="float:left">
<p></p>
<img class="middle-img" src="https://i.imgur.com/QKwl1jm.gif" height="200" width="200"style="float:left">
<p></p>
<img src="https://i.imgur.com/QKwl1jm.gif" height="200"style="float:left">

    <h2>Niisama V2ike nunnu Randolfus</h2>
    <marquee behavior=scroll direction="left" scrollamount="14"><img src="https://i.imgur.com/3P2eI25.jpg"></marquee>
<img src="https://i.imgur.com/3P2eI25.jpg">
<h4>Viimase nädala kõige sõgedamad meemid on</h4>
<<img src="https://i.imgur.com/4rU2l2T.jpg" >

<img src="https://i.redd.it/qcwrcbhy4gs01.png">
<p><img src="https://i.redd.it/wpozn1bapfs01.png"></p>


<div>
    <h4><a href="http://allinthehead.com/" data-gravatar-hash="13734b0cb20708f79e730809c29c3c48">
        Drew McLellan
    </a></h4>
    <p>This is a great article!</p>
</div>

<script type="text/javascript">
    $(window).load(function() {
        $('a[data-gravatar-hash]').prepend(function(index){
            var hash = $(this).attr('data-gravatar-hash')
            return '<img width="100" height="100" alt="" src="http://www.gravatar.com/avatar.php?size=100&gravatar_id=' + hash + '">'
        })
    })
</script>




Siia sisesta oma info kui soovid luua kasutajat
<form name="myForm" action="tekst.jsp" method="post" >
    <input type="submit" >
</form>
Siia vajutades saad ligi kasutajate nimekirjale
<form name="myForm" action="kasutajad.jsp" method="post" >
    <input type="submit" >
</form>

Vajuta siia et laadida pilti
<form name="myForm" action="PildiLaadimine.jsp" method="post" >
    <input type="submit" >
</form>




<%
    Connection c = connect();
    out.print(c);
    close(c);
%>

    IP adress on-----

        <%   request.getHeader("VIA");
        String ipAddress = request.getHeader("X-FORWARDED-FOR");
       if (ipAddress == null) {
            ipAddress = request.getRemoteAddr();
       }
        out.print(ipAddress);
        %>
    <script type="text/javascript" id="Resolution">
        $(window).resize(function(){
            var windowWidth = $(window).width();
            var windowHeight = $(window).height();
            var Window = windowHeight +"x"+ windowWidth;
            var el = document.getElementById("data");
            el.value = Window;

            // windowWidth & windowHeight are automatically updated when the browser size is modified

        });

    </script>


    <form >
        <input id="data" type="hidden" value="" />
        <input type="submit" />
    </form>
    <input type="button" onclick="printDiv('printableArea')" value="print a div!" />


</body>
</html>
