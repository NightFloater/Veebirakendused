<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.Statement" %><%--
<%@ page import="javastuff.*" %>
<%@ page import="javastuff.KasutajaDAO" %>
  Created by IntelliJ IDEA.
  User: Robin
  Date: 4/17/2018
  Time: 8:42 PM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <img src="https://i.imgur.com/WoF89Ay.jpg">
    <p>Sinu sisestatud info: </p>

    <p>Eesnimi: <%= request.getParameter("eesnimi") %></p>

    <p>Perenimi: <%= request.getParameter("perenimi") %></p>

    <p>Vanus: <%= request.getParameter("vanus") %></p>

    <p>Email: <%= request.getParameter("email") %></p>



</head>
<body>
<%
Class.forName("org.postgresql.Driver");
Connection con= DriverManager.getConnection("jdbc:postgresql://localhost:5432/postgres", "postgres", "kaloss666");

Statement st = con.createStatement();

String sql = ("INSERT INTO register VALUES ('" + eesnimi+ "','" + perenimi + "','" + vanus + "','"+ email) ;
st.executeUpdate(sql);
con.close();
%>
</body>
</html>
