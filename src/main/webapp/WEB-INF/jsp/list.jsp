<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Customer List</title>
    </head>

    <body>
        <h1>Customer List</h1>
        <table>
            <c:forEach items="${customers}" var="customer"> 
                <tr>
                    <td>${customer.id}</td>
                    <td>${customer.firstName}</td>
                    <td>${customer.lastName}</td>
                    <td><a href="<c:url value="/update.htm?id=${customer.id}"/>">update</a> | <a href="<c:url value="/delete.htm?id=${customer.id}"/>">delete</a></td>
                </tr>
            </c:forEach>
        </table>
        <a href="<c:url value="/"/>">Go Home</a>
    </body>
</html>
