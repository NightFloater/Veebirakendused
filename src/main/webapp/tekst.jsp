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
    Connection connection = null;
    try {
        Class.forName("sun.jdbc.odbc.JdbcOdbcDriver").newInstance();
        connection = DriverManager.getConnection("jdbc:odbc:data", "userName", "password");

        Statement statement = connection.createStatement();
        String command = "CREATE TABLE Employees (ID INTEGER, Name CHAR(50));";
        statement.executeUpdate(command);

    } catch (Exception e) {
        out.println("An error occurred1.");
    }
%>



<%
    String first_name=request.getParameter("eesnimi");
    String last_name=request.getParameter("perenimi");
    String city_name=request.getParameter("vanus");
    String email=request.getParameter("email");
    out.println("siinveeltootab");
    try
    {
        Class.forName("org.postgresql.Driver");
        Connection conn = DriverManager.getConnection("jdbc:postgresql://ec2-54-243-213-188.compute-1.amazonaws.com", "vkzivsefpcoxqi", "dc800fc78ba20df40f86c5c828c8a4b69dce75095371428e732ca89f2c36b080");

        Statement statement = conn.createStatement();
        String command = "CREATE TABLE kasutajad (eesnimi char(50), perenimi CHAR(50),vanus VARCHAR (50),email VARCHAR (50));";
        statement.executeUpdate(command);

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
