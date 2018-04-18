<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP List Users Records</title>
</head>
<body>
<sql:setDataSource
        var="kasutajad"
        driver="com.mysql.jdbc.Driver"
        url="jdbc:postgresql://ec2-54-243-213-188.compute-1.amazonaws.com:5432/deoqpobdfumna2"
        user="vkzivsefpcoxqi" password="dc800fc78ba20df40f86c5c828c8a4b69dce75095371428e732ca89f2c36b080"
/>

<sql:query var="listUsers"   dataSource="${myDS}">
    SELECT * FROM kasutajad;
</sql:query>

<div align="center">
    <table border="1" cellpadding="5">
        <caption><h2>List of users</h2></caption>
        <tr>
            <th>eesnimi</th>
            <th>perenimi</th>
            <th>vanus</th>
            <th>email</th>
        </tr>
        <c:forEach var="user" items="${listUsers.rows}">
            <tr>
                <td><c:out value="${kasutajad.eesnimi}" /></td>
                <td><c:out value="${kasutajad.perenimi}" /></td>
                <td><c:out value="${kasutajad.vanus}" /></td>
                <td><c:out value="${kasutajad.email}" /></td>
            </tr>
        </c:forEach>
    </table>
</div>
</body>
</html>