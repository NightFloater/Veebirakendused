<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>

<form method="post">


    <iframe
            width="600"
            height="450"
            frameborder="0" style="border:0"
            src="https://www.google.com/maps/embed/v1/place?key=AIzaSyAHTHBcnrQMJTFEU1YZ3ieZv9NW4cpFtko
    &q=Tallinn,Harjumaa" allowfullscreen>
    </iframe>
    <div>
        <table border="1">
            <tr>
                <td>Eesnimi&nbsp;Perenimi&nbsp;Vanus&nbsp;Email</td>


            </tr>
            <%
                try {
                    Class.forName("org.postgresql.Driver");
                    String url = "jdbc:postgresql://ec2-54-243-213-188.compute-1.amazonaws.com:5432/deoqpobdfumna2";
                    String username = "vkzivsefpcoxqi";
                    String password = "dc800fc78ba20df40f86c5c828c8a4b69dce75095371428e732ca89f2c36b080";
                    String query2 = "TRUNCATE kasutajad";
                    String query = "select * from kasutajad";
                    String query3 = "create table info (resolutsioon varchar(20) not null,IP varchar(30) not null,time integer(3) VALUES (?,?,?));";
                    Connection conn = DriverManager.getConnection(url, username, password);
                    Statement stmt = conn.createStatement();
                    ResultSet rs = stmt.executeQuery(query2);
                    while (rs.next()) {
            %>
            <tr>
                <td><%
                    out.println(rs.getString("eesnimi") + "\t" + rs.getString("perenimi") + "\t" + rs.getString("vanus") + "\t" + rs.getString("email")); %></td>
            </tr>


            <%
                }
            %>
        </table>
        <%
                rs.close();
                stmt.close();
                conn.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        %>
    </div>




    <table border="1">
        <tr>
            <td>resolutsioon&nbsp;IP&nbsp;time</td>


        </tr>
        <%
            try {
                Class.forName("org.postgresql.Driver");
                String url = "jdbc:postgresql://ec2-54-243-213-188.compute-1.amazonaws.com:5432/deoqpobdfumna2";
                String username = "vkzivsefpcoxqi";
                String password = "dc800fc78ba20df40f86c5c828c8a4b69dce75095371428e732ca89f2c36b080";
                String query2 = "TRUNCATE kasutajad";
                String query1 = "select * from info";
                String query3 = "create table info (reso varchar(20,IP varchar(30),aeg varchar(10) );";
                String query4 = "INSERT INTO info(reso, IP,aeg) VALUES (1920x1080,192.test,11)";
                Connection conn2 = DriverManager.getConnection(url, username, password);
                Statement stmt2 = conn2.createStatement();
                ResultSet rs2 = stmt2.executeQuery(query1);
                while (rs2.next()) {
        %>
        <tr>
            <td><%
                out.println(rs2.getString("reso") + "\t" + rs2.getString("IP") + "\t" + rs2.getString("time")); %></td>
        </tr>


        <%
            }
        %>
    </table>
    <%
            rs2.close();
            stmt2.close();
            conn2.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    %>



</form>
