<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Admin</title>
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/static/style.css"/>">
    <link rel="shortcut icon" type="image/png" href="${pageContext.request.contextPath}/resources/img/spring.png">
</head>
<body>
<div>
    <table>
        <thead>
        <th>ID</th>
        <th>UserName</th>
        <th>Password</th>
        <th>Roles</th>
        </thead>
        <c:forEach items="${allUsers}" var="user">
            <tr>
                <td>${user.id}</td>
                <td>${user.username}</td>
                <td>${user.password}</td>
                <td>
                    <c:forEach items="${user.roles}" var="role">${role.name}; </c:forEach>
                </td>
                <td>
                    <form action="${pageContext.request.contextPath}/admin" method="post">
                        <input type="hidden" name="userId" value="${user.id}"/>
                        <input type="hidden" name="action" value="delete"/>
                        <button type="submit">Delete</button>
                    </form>

                </td>

            </tr>
        </c:forEach>
    </table>
    <a href="/${pageContext.request.contextPath}/index">Main</a>
</div>
</body>
</html>