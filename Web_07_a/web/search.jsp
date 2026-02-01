<%-- 
    Document   : search
    Created on : Jan 26, 2026, 11:09:19 AM
    Author     : se193234_TranGiaBao
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>search</title>
    </head>
    <jsp:include page="welcome.jsp" />

        <c:if test="${empty user}">
            <c:redirect url="login.jsp"/>
        </c:if>

        <c:if test="${not empty user}">

            <form action="MainController" method="post">
                <input type="hidden" name="action" value="search"/>
                Input name:
                <input type="text" name="keywords" value="${keywords}" />
                <input type="submit" value="Search"/>
            </form>
            <hr/>

            <c:if test="${empty list}">
                No data matching the search criteria found!
            </c:if>

            <c:if test="${not empty list}">
                <table border="1">
                    <thead>
                        <tr>
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
                        </tr>
                    </thead>

                    <c:forEach items="${list}" var="u">
                        <tr>
                            <td>${u.id}</td>
                            <td>${u.name}</td>
                            <td>${u.shortName}</td>
                            <td>${u.city}</td>
                            <td>${u.region}</td>
                            <td>${u.type}</td>
                            <td>${u.foundedYear}</td>
                            <td>${u.totalStudents}</td>
                            <td>${u.totalFaculties}</td>
                            <td>
                                <c:if test="${u.isDraft}">
                                    <input type="submit" value="Update"/>
                                </c:if>
                            </td>
                        </tr>
                    </c:forEach>
                </table>
            </c:if>
        </c:if>
    </body>
</html>
