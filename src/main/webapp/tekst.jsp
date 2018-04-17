<%--
  Created by IntelliJ IDEA.
  User: Robin
  Date: 4/17/2018
  Time: 8:42 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <img src="https://i.imgur.com/WoF89Ay.jpg">
    <p>Sinu sisestatud info: </p>

    <p>Eesnimi: <%= request.getParameter("Eesnimi") %></p>

    <p>Perenimi: <%= request.getParameter("Perenimi") %></p>

    <p>Vanus: <%= request.getParameter("Vanus") %></p>

    <p>Email: <%= request.getParameter("Email") %></p>

</head>
<body>

</body>
</html>
