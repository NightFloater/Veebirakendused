<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<%!public static void connect (){
    try{

        Class.forName("org.postgresql.Driver").newInstance();
        Connection conn = DriverManager.getConnection("jdbc:postgresql://ec2-54-243-213-188.compute-1.amazonaws.com:5432/deoqpobdfumna2","vkzivsefpcoxqi","dc800fc78ba20df40f86c5c828c8a4b69dce75095371428e732ca89f2c36b080");
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
<body>

<P ALIGN=CENTER><h6>MEEMIDE OST, MÜÜK, VAHETUS</h6></P>
<h2>Viimase nädala kõige sõgedamad meemid on</h2>


<img src="https://i.redd.it/qcwrcbhy4gs01.png">
<p><img src="https://i.redd.it/wpozn1bapfs01.png"></p>
<p><img src="https://i.imgur.com/4rU2l2T.jpg"></p>



Siia sisesta oma info kui soovid luua kasutajat
<form name="myForm" action="tekst.jsp" method="post" >
    <td>Eesnimi </td>
    <input type="text" name="eesnimi" >
    <td>Perenimi</td>
    <input type="text" name="perenimi" >
    <td>Vanus </td>
    <input type="text" name="vanus" >
    <td>Email</td>
    <input type="text" name="email" >
    <input type="submit" >
</form>
 <%
 connect();
 %>



</body>
</html>
