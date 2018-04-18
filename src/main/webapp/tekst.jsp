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



<%!public static Connection connect (){
    String first_name=request.getParameter("eesnimi");
    String last_name=request.getParameter("perenimi");
    String city_name=request.getParameter("vanus");
    String email=request.getParameter("email");
    out.println("siinveeltootab");


    try{

        Class.forName("org.postgresql.Driver").newInstance();

        Connection conn = DriverManager.getConnection("jdbc:postgresql://ec2-54-243-213-188.compute-1.amazonaws.com:5432/deoqpobdfumna2","vkzivsefpcoxqi","dc800fc78ba20df40f86c5c828c8a4b69dce75095371428e732ca89f2c36b080");

        PreparedStatement st = conn.prepareStatement("insert into kasutajad(eesnimi,perenimi,vanus,email) VALUES ('" + first_name + "','" + last_name + "','" +city_name + "','" + email + "'");
        st.executeUpdate();

    }catch(Exception e){
        throw new Error(e);
    }
    return null;
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
    Connection c = connect();
    out.print(c);
    close(c);
%>

</body>
</html>
