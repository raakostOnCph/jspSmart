<%--
  Created by IntelliJ IDEA.
  User: nbh
  Date: 2019-03-13
  Time: 18:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="java.util.List"  errorPage= "fejl.jsp" isErrorPage="true" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>

<html>
<head>
    <title>JSTL sql:query Tag</title>
</head>

<body>
<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
                   url="jdbc:mysql://localhost/togashoppen"
                   user="root" password="root"/>

<sql:query dataSource="${snapshot}" var="result">
    SELECT * from kunder;
</sql:query>

<table border="10" width="50%">
    <tr>
        <th>Kunde id</th>
        <th>navn</th>
    </tr>

    <c:forEach var="kunde" items="${requestScope.kunder}">
        <tr>
            <td><c:out value="${kunde.getKundenr()}"/></td>
            <td><c:out value="${kunde.getNavn()}"/></td>
        </tr>
    </c:forEach>
</table>

</body>
</html>


</body>
</html>
