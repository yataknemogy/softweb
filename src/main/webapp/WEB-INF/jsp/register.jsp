
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Register</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/style.css">
</head>

<body>
<div class="container">
    <form:form method="POST" modelAttribute="userForm" action="${pageContext.request.contextPath}/register">
        <h2>Регистрация</h2>
        <div>
            <form:input type="text" path="username" placeholder="Username" autofocus="true"></form:input>
            <form:errors path="username"></form:errors>${usernameError}
        </div>
        <div>
            <form:input type="password" path="password" placeholder="Password"></form:input>
        </div>
        <div>
            <form:input type="password" path="passwordConfirm" placeholder="Confirm password"></form:input>
            <form:errors path="password"></form:errors>${passwordError}
        </div>
        <button type="submit">Register</button>
    </form:form>
    <a href="${pageContext.request.contextPath}/index">Main</a>
</div>
</body>
</html>
