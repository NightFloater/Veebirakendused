<%@ page import="java.sql.*" %>
<HTML>
<HEAD>
    <TITLE>Filling a Table</TITLE>
</HEAD>

<BODY>
<H1>Filling a Table</H1>

<%
    Connection connection = null;
    Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
    connection = DriverManager.getConnection("jdbc:postgresql://localhost:5432/postgres");

    Statement statement = connection.createStatement();

    String command = "INSERT INTO nimed (nimi) VALUES ('Tom')";
    statement.executeUpdate(command);



    ResultSet resultset = statement.executeQuery("select * from nimed");

    while(resultset.next()){
%>
<TABLE BORDER="1">
    <TR>
        <TH>ID</TH>
        <TH>Name</TH>
    </TR>
    <TR>
        <TD> <%= resultset.getString(1) %> </TD>

    </TR>
</TABLE>
<%
    }
%>
</BODY>
</HTML>