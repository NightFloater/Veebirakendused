<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.sql.Driver" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%--
<%@ page import="javastuff.*" %>
<%@ page import="javastuff.KasutajaDAO" %>
  Created by IntelliJ IDEA.
  User: Robin
  Date: 4/17/2018
  Time: 8:42 PM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<% String first_name =request.getParameter("eesnimi"); %>

<%!public static void  connect (){



    try{

        Class.forName("org.postgresql.Driver").newInstance();

        Connection conn = DriverManager.getConnection("jdbc:postgresql://localhost:5432/postgres","postgres","kaloss666");

        PreparedStatement st = conn.prepareStatement("insert into kasutajad(eesnimi,perenimi,vanus,email) VALUES ('" + "Robin" + "','" + "Soodor" + "','" +"Vanus" + "','" + "email" + "'");
        st.executeUpdate();

    }catch(Exception e){

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
    connect();
    //close(c);
%>

</body>
</html>
