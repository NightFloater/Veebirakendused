<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd" >
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<HTML>
<HEAD>
    <TITLE>insert data using prepared statement </TITLE>
</HEAD>
<BODY bgcolor="#ffffcc">
<font size="+3" color="green"><br>Welcome in memer!</font>
<FORM action="tekst.jsp" method="get">
    <TABLE style="background-color: #ECE5B6;" WIDTH="30%" >
        <TR>
            <TH width="50%">Name</TH>
            <TD width="50%"><INPUT TYPE="text" NAME="name"></TD>
        </tr>
        <TR>
            <TH width="50%">City</TH>
            <TD width="50%"><INPUT TYPE="text" NAME="city"></TD>
        </tr>
        <TR>
            <TH width="50%">Phone</TH>
            <TD width="50%"><INPUT TYPE="text" NAME="phone"></TD>
        </tr>
        <TR>
            <TH width="50%">Email</TH>
            <TD width="50%"><INPUT TYPE="text" NAME="email"></TD>
        </tr>
        <TR>
            <TH></TH>
            <TD width="50%"><INPUT TYPE="submit" VALUE="submit"></TD>
        </tr>
    </TABLE>
    <%
        String name = request.getParameter("name");
        String city = request.getParameter("city");
        String phone = request.getParameter("phone");
        String email = request.getParameter("email");
   /* Create string of connection url within specified
   format with machine name,
    port number and database name. Here machine name id
    localhost and database name is student. */
        String connectionURL = "jdbc:postgresql://ec2-54-243-213-188.compute-1.amazonaws.com:5432/deoqpobdfumna2";
        // declare a connection by using Connection interface
        Connection connection = null;
        // declare object of Statement interface that uses for executing sql statements.
            PreparedStatement pstatement = null;
        // Load JBBC driver "com.mysql.jdbc.Driver"
        Class.forName("org.postgresql.Driver").newInstance();
        int updateQuery = 0;

        // check if the text box is empty
        if(name!=null && city!=null && phone!=null){
            // check if the text box having only blank spaces
            if(name!="" && city!="" && phone!="") {
                try {
              /* Create a connection by using getConnection()
              method that takes parameters of string type
              connection url, user name and password to connect
		to database. */
                    connection = DriverManager.getConnection("jdbc:postgresql://ec2-54-243-213-188.compute-1.amazonaws.com:5432/deoqpobdfumna2", "vkzivsefpcoxqi", "dc800fc78ba20df40f86c5c828c8a4b69dce75095371428e732ca89f2c36b080");
                    // sql query to insert values in the secified table.
                    String queryString = "INSERT INTO kasutajad(Name, Address,Phone,Email) VALUES (?, ?, ?,?)";
              	      /* createStatement() is used for create statement
              object that is used for
		sending sql statements to the specified database. */
                    pstatement = connection.prepareStatement(queryString);
                    pstatement.setString(1, name);
                    pstatement.setString(2, city);
                    pstatement.setString(3, phone);
                    pstatement.setString(4, email);
                    updateQuery = pstatement.executeUpdate();
                    if (updateQuery != 0) { %>
    <br>
    <TABLE style="background-color: #E3E4FA;"
           WIDTH="30%" border="1">
        <tr><th>Data is inserted successfully
            in database.</th></tr>
    </table>
    <%
                    }
                }
                catch (Exception ex) {
                    throw new Error(ex);
                }
                finally {
                    // close all the connections.
                    pstatement.close();
                    connection.close();
                }
            }
        }
    %>
</FORM>
</body>
</html>