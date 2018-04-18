<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<%!public static Connection connect (){
    try{

        Class.forName("co").newInstance();
        return DriverManager.getConnection("jdbc:mysql://localhost/robin","root","root");


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
    Connection c = connect();
    out.print(c);
    close(c);
%>

</body>
</html>
