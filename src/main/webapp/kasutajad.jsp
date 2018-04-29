<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>

<form method="post">




    <iframe
            width="600"
            height="450"
            frameborder="0" style="border:0"
            src="https://maps.googleapis.com/maps/api/staticmap?key=AIzaSyCX_0JG9DoPLVBfLXftMPqcp4RWyvt8ZCM&center=-34.001421708307106,150.93027343749995&zoom=11&format=png&maptype=roadmap&style=element:geometry%7Ccolor:0x05f511&style=element:labels%7Ccolor:0xffffff&style=element:labels.text.fill%7Ccolor:0x746855&style=element:labels.text.stroke%7Ccolor:0x242f3e&style=feature:administrative.land_parcel%7Celement:labels%7Cvisibility:off&style=feature:administrative.locality%7Celement:labels.text.fill%7Ccolor:0xff0000&style=feature:administrative.neighborhood%7Celement:labels%7Ccolor:0xc07ab9%7Cvisibility:on%7Cweight:8&style=feature:poi%7Celement:labels.text%7Cvisibility:off&style=feature:poi%7Celement:labels.text.fill%7Ccolor:0xd59563&style=feature:poi.business%7Cvisibility:off&style=feature:poi.park%7Celement:geometry%7Ccolor:0x263c3f&style=feature:poi.park%7Celement:labels.text.fill%7Ccolor:0x6b9a76&style=feature:road%7Celement:geometry%7Ccolor:0x38414e&style=feature:road%7Celement:geometry.stroke%7Ccolor:0x212a37&style=feature:road%7Celement:labels.icon%7Cvisibility:off&style=feature:road%7Celement:labels.text.fill%7Ccolor:0x9ca5b3&style=feature:road.arterial%7Celement:labels%7Cvisibility:off&style=feature:road.highway%7Celement:geometry%7Ccolor:0x2424e8&style=feature:road.highway%7Celement:geometry.stroke%7Ccolor:0x1f2835&style=feature:road.highway%7Celement:labels%7Cvisibility:off&style=feature:road.highway%7Celement:labels.text.fill%7Ccolor:0xdd1332&style=feature:road.local%7Cvisibility:off&style=feature:road.local%7Celement:labels%7Cvisibility:off&style=feature:transit%7Cvisibility:off&style=feature:transit%7Celement:geometry%7Ccolor:0x0080c0&style=feature:transit.station%7Celement:labels.text.fill%7Ccolor:0xd59563&style=feature:water%7Celement:geometry%7Ccolor:0xc07ab9&style=feature:water%7Celement:labels.text.fill%7Ccolor:0x515c6d&style=feature:water%7Celement:labels.text.stroke%7Ccolor:0x17263c&size=480x360" allowfullscreen>
    </iframe>

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
                Connection conn = DriverManager.getConnection(url, username, password);
                Statement stmt = conn.createStatement();
                ResultSet rs = stmt.executeQuery(query);
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

</form>
`