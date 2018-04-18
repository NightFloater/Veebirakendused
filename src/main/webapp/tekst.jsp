<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.Statement" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<html>
<body>

<P ALIGN=CENTER><h6>MEEMIDE OST, MÜÜK, VAHETUS</h6></P>
<h2>Viimase nädala kõige sõgedamad meemid on</h2>


<img src="https://i.redd.it/qcwrcbhy4gs01.png">
<p><img src="https://i.redd.it/wpozn1bapfs01.png"></p>
<p><img src="https://i.imgur.com/4rU2l2T.jpg"></p>




<form action="InsertData.java" method="get">
    <input type="text" name="input">
    <input type="submit" value="Send it!">
</form>




</body>
</html>
