<%-- 
    Document   : index
    Created on : Jan 8, 2026, 9:48:11 AM
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

        <form action="MainController" method="get">
            <!-- <form>	Thẻ mở đầu cho một biểu mẫu. -->
            <!-- action="MainController"	Địa chỉ nơi dữ liệu sẽ được gửi đến (thường là một Servlet hoặc Controller ở phía Server) -->
            <!-- method="get"	Phương thức gửi dữ liệu. Với get, dữ liệu sẽ hiển thị ngay trên thanh địa chỉ (URL) của trình duyệt. -->
            a : <input type="text" name="txtA"> <br/> 
            <!-- <input type="text">	Tạo một ô trống để người dùng gõ chữ hoặc số vào -->
            <!-- name="txtA"	Đây là định danh của dữ liệu. Khi Server nhận được, nó sẽ tìm cái tên này để lấy giá trị tương ứng.  -->
            b : <input type="text" name="txtB"> <br/>
            <input type="submit" value="Submit"/>
            <!-- method="get"	Phương thức gửi dữ liệu. Với get, dữ liệu sẽ hiển thị ngay trên thanh địa chỉ (URL) của trình duyệt. -->
        </form>

    </body>
</html>
