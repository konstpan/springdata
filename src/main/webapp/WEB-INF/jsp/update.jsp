<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome to Spring Web MVC project</title>
    </head>

    <body>
        <form action="update.htm" method="post">
            <input type="hidden" name="id" value="${customer.id}">
            First name <input type="text" name="firstName" value="${customer.firstName}">
            Last name <input type="text" name="lastName" value="${customer.lastName}">
            <input type="submit" value="Update">
            <input type="button" value="Cancel" onclick="location.href='<c:url value="/"/>';">
        </form>
    </body>
</html>
