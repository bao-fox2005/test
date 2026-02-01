<%-- 
    Document   : login
    Created on : Jan 8, 2026, 11:25:39 AM
    Author     : se193234_TranGiaBao
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="MainController" method="post">
           UserName: <input type="text" name="txtUserName"> <br/>
        PassWord: <input type="text" name="txtPassword"> <br/>
        <input type = "submit" value="Login"> 
        </form>
        

    </body>
</html>
