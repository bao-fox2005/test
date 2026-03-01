<%-- 
    Document   : welcome
    Created on : Mar 1, 2026, 9:54:51 AM
    Author     : se193234_TranGiaBao
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <c:if test="${not empty user}">
            <h1>Welcome, ${user.fullName}</h1>

            <a href="MainController?action=logout">Logout</a><br/>
            <a href="search.jsp">Search</a>
        </c:if>


        <c:if test="${empty user}">
            <c:redirect url="login.jsp"/>
        </c:if>

    </body>
</html>
