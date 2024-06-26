<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Log in with your account</title>
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/static/style.css"/>">
    <link rel="shortcut icon" type="image/png" href="${pageContext.request.contextPath}/resources/img/spring.png">
</head>
<body>
<div>
    <form method="POST" action="/news">
        <h2>Вход в систему</h2>
        <div>
            <input name="username" type="text" placeholder="Username" autofocus="true"/>
            <input name="password" type="password" placeholder="Password"/>
            <button type="submit">Log In</button>
            <h4><a href="${pageContext.request.contextPath}/register">Registration</a></h4>
        </div>
    </form>
</div>
</body>
</html>