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
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>

<%
    String first_name=request.getParameter("eesnimi");
    String last_name=request.getParameter("perenimi");
    String city_name=request.getParameter("vanus");
    String email=request.getParameter("email");

    try
    {
        Class.forName("org.postgresql.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "");
        Statement st=conn.createStatement();

        int i=st.executeUpdate("insert into users(first_name,last_name,city_name,email)values('"+first_name+"','"+last_name+"','"+city_name+"','"+email+"')");
        out.println("Data is successfully inserted!");
    }
    catch(Exception e)
    {
        System.out.print(e);
        e.printStackTrace();
    }
%>
</body>
</html>
