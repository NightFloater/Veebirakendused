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
<body>

<P ALIGN=CENTER><h6>MEEMIDE OST, MÜÜK, VAHETUS</h6></P>
<h2>Viimase nädala kõige sõgedamad meemid on</h2>


<h2>Niisama V2ike nunnu Randolfus</h2>
<p><img src="https://imgur.com/a/jJ0Uf.png"></p>
<<img src="https://imgur.com/a/qjneM" >

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
