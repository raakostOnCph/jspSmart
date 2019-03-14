<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: nbh
  Date: 2019-03-13
  Time: 15:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<h1> her kommer resultaterne </h1>

<c:if test="${requestScope.kunder!=null}">

    <div class="container" style="color: coral">

        <table id="kundeliste">


            <c:forEach items="${requestScope.kunder}" var="kunder" varStatus="loop">

                <tr>
                    <td> ${loop.count}</td>
                    <td> ${kunder.getNavn()}</td>
                    <td bgcolor="#ff7f50"> ${kunder.getKundenr()}</td>
                </tr>


            </c:forEach>
            <tr>
                <td>

                </td>


            </tr>


        </table>


    </div>


</c:if>


</body>
</html>
