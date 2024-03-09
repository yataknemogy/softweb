<%@ page import="com.example.softweb.Model.User" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Register</title>
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/static/style.css"/>">
    <link rel="shortcut icon" type="image/png" href="${pageContext.request.contextPath}/resources/img/spring.png">
</head>

<body>
<div class="container">
    <form:form method="POST" modelAttribute="userForm" action="${pageContext.request.contextPath}/register">
        <h2>Registration</h2>
        <div>
            <form:input type="text" path="login" placeholder="Username" autofocus="true" />
            <form:errors path="login" cssClass="error" />
        </div>
        <div>
            <form:input type="password" path="password" placeholder="Password" />
            <form:errors path="password" cssClass="error" />
        </div>
        <div>
            <form:input type="password" path="passwordConfirm" placeholder="Confirm password" />
            <form:errors path="passwordConfirm" cssClass="error" />
        </div>
        <div class="remember-me">
            <input type="checkbox" id="remember-me" name="remember-me" />
            <label for="remember-me">Remember Me</label>
        </div>
        <button type="submit">Register</button></form:form>
    <c:if test="${not empty SPRING_SECURITY_LAST_EXCEPTION}">
        <p class="error">Remember Me Error: ${SPRING_SECURITY_LAST_EXCEPTION}</p>
    </c:if>
    <a href="${pageContext.request.contextPath}/">Home</a>
</div>
</body>
</html>
