<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd" >
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@ page import="com.sun.org.apache.xalan.internal.xsltc.compiler.Parser" %>
<HTML>
<HEAD>
    <TITLE>Kasutaja info </TITLE>
</HEAD>
<BODY bgcolor="#7ac968">
<audio controls autoplay>
    <source src="http://www.kanyewest.com/assets/images/LIFT_YOURSELF.mp3"/>
</audio>






<p>Vajuta siis ja anna oma reso ja kylastuskellaaeg meile</p>

<button onclick="myFunction()">Try it</button>





<script>
    function myFunction() {
        var x = "Total Width: " + screen.width + "px";
        var y = "Total Width: " + screen.height + "px";

        document.getElementById("X").innerHTML = x;
        document.getElementById("Y").innerHTML = y;

        var today = new Date();
        document.getElementById('time').innerHTML=today.getHours().toString();
    }
</script>

<p id="X">TEST</p>
<p id="Y">TEST</p>
<p id="time">TEST</p>
<p id="IP">TEST</p>


<font size="+3" color="green"><br>Welcome memer!</font>



    <script type="text/javascript">
        var userip;
    </script>

    <script type="text/javascript" src="https://l2.io/ip.js?var=userip"></script>

    <script type="text/javascript">
        document.write("Su IP address on :", userip);
    </script>






    <%
        String name = request.getParameter("eesnimi");
        String perenimi = request.getParameter("perenimi");
        String vanus = request.getParameter("vanus");
        String email = request.getParameter("email");
        String reso = request.getParameter("X")+"x"+request.getParameter("Y");
        String IP = request.getParameter("IP");
        String time = request.getParameter("time");

        Connection connection = null;

        PreparedStatement pstatement = null;

        Class.forName("org.postgresql.Driver").newInstance();
        int updateQuery = 0;

        if (name != null && perenimi != null && vanus != null) {

            if (name != "" && perenimi != "" && vanus != "") {
                try {

                    connection = DriverManager.getConnection("jdbc:postgresql://ec2-54-243-213-188.compute-1.amazonaws.com:5432/deoqpobdfumna2", "vkzivsefpcoxqi", "dc800fc78ba20df40f86c5c828c8a4b69dce75095371428e732ca89f2c36b080");

                    String queryString = "INSERT INTO kasutajad(eesnimi, perenimi,vanus,email) VALUES (?, ?, ?,?)";

                    pstatement = connection.prepareStatement(queryString);
                    pstatement.setString(1, reso);
                    pstatement.setString(2, IP);
                    pstatement.setString(3, time);
                    pstatement.setString(4, email);
                    updateQuery = pstatement.executeUpdate();


                    if (updateQuery != 0) { %>

    <%
                    }
                } catch (Exception ex) {
                    throw new Error(ex);
                } finally {

                    pstatement.close();
                    connection.close();
                }
            }
        }
    %>


<img src="https://i.imgur.com/KYOVFtS.png">
</body>
</html>