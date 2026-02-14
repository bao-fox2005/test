<%-- 
    Document   : search
    Created on : Feb 14, 2026, 2:26:05 PM
    Author     : se193234_TranGiaBao
--%>

<%@page import="javax.xml.stream.events.Comment"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.UserDTO"%>
<%@page import="model.UniversityDTO"%>
<%@page import="model.UserDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:include page="welcome.jsp" />

        <!-- <--%@include  file="welcome.jsp" %> -->

        <%
            if ((UserDTO) session.getAttribute("user") != null) {
                String keywords = request.getAttribute("keywords") + "";
                keywords = keywords.equals("null") ? "" : keywords;
                ArrayList<UniversityDTO> list = new ArrayList<UniversityDTO>();
                if (request.getAttribute("list") != null) {
                    list = (ArrayList<UniversityDTO>) request.getAttribute("list");
                }
                
        %>
        <form action="MainController" method="post">
            <input type="hidden" name="action" value="search"/>
            Input name: <input type="text" name="keywords" value="<%=keywords%>" />
            <input type="submit" value="search"/>
        </form>
            
        <!-- Thẻ <hr/> (Horizontal Rule) -->
        <hr/> <!-- Tạo ra một đường kẻ ngang -->
        <table border="1"> <!-- table: Đây là cái khung bao ngoài cùng. Nó báo hiệu cho trình duyệt rằng: "Tất cả nội dung bên trong cặp thẻ này là một cái bảng". -->
            <!-- border="1": Đây là độ dày của đường viền (khung bảng). Nếu không có thuộc tính này (hoặc border="0"), bảng vẫn tồn tại nhưng các con số/chữ sẽ nằm lơ lửng, không có hàng kẻ bao quanh. Số 1 nghĩa là đường viền mỏng nhất. -->

        <thead> <!-- Chức năng: Nhóm các hàng đóng vai trò là phần đầu/phần tiêu đề của bảng. -->

                <!-- <th> (Table Header): Chức năng: Là ô tiêu đề (nằm trong <thead>). -->
            <th>Id</th>
            <th>Name</th>
            <th>Short Name</th>
            <th>City</th>
            <th>Region</th>
            <th>Type</th>
            <th>Founded Year</th>
            <th>Students</th>
            <th>Faculties</th>
            <th></th>
        </thead>
        <%
            if (list.size() == 0) {
        %>
        No data matching the search criteria found!
        <%    
        } else {
            for (UniversityDTO u : list) {
        %>
        <tr> <!-- Chức năng: Đại diện cho một hàng ngang trong bảng. -->
            <!-- <td> (Table Data): Là ô chứa dữ liệu bình thường (nằm trong các hàng nội dung). -->
            <td><%=u.getId()%></td>
            <td><%=u.getName()%></td>
            <td><%=u.getShortName()%></td>
            <td><%=u.getCity()%></td>
            <td><%=u.getRegion()%></td>
            <td><%=u.getType()%></td>
            <td><%=u.getFoundedYear()%></td> 
            <td><%=u.getTotalStudents()%></td>
            <td><%=u.getTotalFaculties()%></td>
            <td>
                <input type="submit" value="Update" style="display: <%=u.isIsDraft() ? "block" : "none"%>" />                                
            </td>
        </tr>  
        <%
                }
            }
        %>
    </table>
    <%  } else {
            response.sendRedirect("login.jsp");
            //ếu chưa đăng nhập, Server sẽ ngay lập tức "đá" người dùng quay lại trang login.
        }
    %>
</body>
</html>
