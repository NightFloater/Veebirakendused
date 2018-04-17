<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.PreparedStatement" %><%--
<%@ page import="javastuff.*" %>
<%@ page import="javastuff.KasutajaDAO" %>
  Created by IntelliJ IDEA.
  User: Robin
  Date: 4/17/2018
  Time: 8:42 PM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    String first_name=request.getParameter("eesnimi");
    String last_name=request.getParameter("perenimi");
    String city_name=request.getParameter("vanus");
    String email=request.getParameter("email");
    out.println("siinveeltootab");
    try
    {
        Class.forName("org.postgresql.Driver");
        Connection conn = DriverManager.getConnection("jdbc:postgresql://ec2-54-83-1-94.compute-1.amazonaws.com", "owxntdhsuqxztz", "5097df67696c883797291e3383b61471cbbdcacd9985b33d07e34fa2a8c29f33");
        PreparedStatement st = conn.prepareStatement("insert into kasutajad(eesnimi,perenimi,vanus,email) VALUES ('" + first_name + "','" + last_name + "','" +city_name + "','" + email + "'");
       st.executeUpdate();
        out.println("Data is successfully inserted!");
    }
    catch(Exception e)
    {
        System.out.print(e);
        e.printStackTrace();
    }
%>
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



</body>
</html>
