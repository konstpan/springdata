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
        <h2>Create</h2>
        <form action="create.htm" method="post">
            First name <input type="text" name="firstName">
            Last name <input type="text" name="lastName">
            <input type="submit" value="Create">
        </form>
        <h2>Search</h2>
        <form action="find.htm" method="get">
            Last name <input type="text" name="lastName">
            <input type="submit" value="Search">
        </form>
        <p><a href="<c:url value="/list.htm"/>">Show all customers</a></p>
    </body>
</html>
