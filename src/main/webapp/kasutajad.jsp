<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>

<form method="post">

    <table border="1">
        <tr>
            <td>eesnimi</td>
            <td>perenimi</td>
            <td>vanus</td>
            <td>email</td>

        </tr>
        <%
            try
            {
                Class.forName("org.postgresql.Driver");
                String url="jdbc:postgresql://ec2-54-243-213-188.compute-1.amazonaws.com:5432/deoqpobdfumna2";
                String username="vkzivsefpcoxqi";
                String password="dc800fc78ba20df40f86c5c828c8a4b69dce75095371428e732ca89f2c36b080";
                String query="select * from kasutajad";
                Connection conn=DriverManager.getConnection(url, username, password);
                Statement stmt=conn.createStatement();
                ResultSet rs=stmt.executeQuery(query);
                while(rs.next())
                {
        %>
        <tr><td><%out.println(rs.getString("eesnimi")+rs.getString("perenimi")+rs.getString("vanus")+rs.getString("email")); %></td></tr>




        <%
            }
        %>
    </table>
    <%
            rs.close();
            stmt.close();
            conn.close();
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
    %>
</form>`