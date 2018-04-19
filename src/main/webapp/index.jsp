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




<P ALIGN=CENTER><h1
                    text-shadow: 0 1px 0 #ccc,
                    0 2px 0 #c9c9c9,
                    0 3px 0 #bbb,
                    0 4px 0 #b9b9b9,
                    0 5px 0 #aaa,
                    0 6px 1px rgba(0,0,0,.1),
                    0 0 5px rgba(0,0,0,.1),
                    0 1px 3px rgba(0,0,0,.3),
                    0 3px 5px rgba(0,0,0,.2),
                    0 5px 10px rgba(0,0,0,.25),
                    0 10px 10px rgba(0,0,0,.2),
                    0 20px 20px rgba(0,0,0,.15);
                    >MEEMIDE OST, MÜÜK, VAHETUS</h1></P>
<h1><marquee behavior="scroll" direction="left"><div><span style="color:#ff0000;">U</span><span style="color:#ff2a00;">P</span><span style="color:#ff5500;"> </span><span style="color:#ff7f00;">A</span><span style="color:#ffaa00;">N</span><span style="color:#ffd400;">D</span><span style="color:#ffff00;"> </span><span style="color:#aaff00;">C</span><span style="color:#55ff00;">O</span><span style="color:#00ff00;">M</span><span style="color:#00ff80;">I</span><span style="color:#00ffff;">N</span><span style="color:#00aaff;">G</span><span style="color:#0055ff;"> </span><span style="color:#0000ff;">F</span><span style="color:#2e00ff;">I</span><span style="color:#5d00ff;">S</span><span style="color:#8b00ff;">H</span>
</div></marquee><h1>
<iframe width="100%" height="300" scrolling="no" frameborder="no" allow="autoplay" src="https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/391069176&color=%2350eb6a&auto_play=true&hide_related=false&show_comments=true&show_user=true&show_reposts=false&show_teaser=true&visual=true"></iframe>



<img src="https://i.imgur.com/QKwl1jm.gif" height="200" width="200" style="float:left">
<p></p>
<img class="middle-img" src="https://i.imgur.com/QKwl1jm.gif" height="200" width="200"style="float:left">
<p></p>
<img src="https://i.imgur.com/QKwl1jm.gif" height="200"style="float:left">
<p></p>

<h2>Niisama V2ike nunnu Randolfus</h2>
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

</body>
</html>
