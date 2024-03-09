<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<!DOCTYPE html>
<html>
<head>
    <title>Home</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/static/style.css"/>">
    <link rel="shortcut icon" type="image/png" href="${pageContext.request.contextPath}/resources/img/spring.png">
</head>
<body>
<div>
    <h3>${pageContext.request.userPrincipal.name}</h3>
    <sec:authorize access="!isAuthenticated()">
        <h4><a href="${pageContext.request.contextPath}/login">Log in system</a></h4>
        <h4><a href="${pageContext.request.contextPath}/register">Register</a></h4>
    </sec:authorize>
    <sec:authorize access="isAuthenticated()">
        <h4><a href="${pageContext.request.contextPath}/logout">Exit</a></h4>
    </sec:authorize>
    <h4><a href="${pageContext.request.contextPath}/news">News (only user)</a></h4>
    <h4><a href="${pageContext.request.contextPath}/admin">Users (only admin)</a></h4>
</div>
</body>
</html>