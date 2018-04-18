<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<%!public static Connection connect (){
    try{

        Class.forName("org.postgresql.Driver").newInstance();
        Connection conn =  DriverManager.getConnection("jdbc:postgresql://ec2-54-243-213-188.compute-1.amazonaws.com:5432/deoqpobdfumna2","vkzivsefpcoxqi","dc800fc78ba20df40f86c5c828c8a4b69dce75095371428e732ca89f2c36b080");
        PreparedStatement st = conn.prepareStatement("insert into kasutajad(eesnimi,perenimi,vanus,email) VALUES ('" + "Robin" + "','" + "Soodor" + "','" +"Vanus" + "','" + "email" + "'");
        int i =st.executeUpdate();


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



<%
    Connection c = connect();
    out.print(c);
    close(c);
%>

</body>
</html>
