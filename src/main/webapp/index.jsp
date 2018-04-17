<%@ page import="main.webapp.javastuff.KasutajaDAO" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
    <input type="text" name="Eesnimi" >
    <td>Perenimi</td>
    <input type="text" name="Perenimi" >
    <td>Vanus </td>
    <input type="text" name="Vanus" >
    <td>Email</td>
    <input type="text" name="Email" >
    <input type="submit" >
</form>


<jsp:useBean id="obj" class="main.webapp.javastuff.KasutajaBean"/>
<jsp:setProperty name="*" property="obj"/>
<%
    int status= KasutajaDAO.SisestaKasutaja(obj);
    if (status > 0)
        out.println("Inserted");
    else
        out.println("fail");

%>

</body>
</html>
