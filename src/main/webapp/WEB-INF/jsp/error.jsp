<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Error</title>
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/static/style.css"/>">
    <link rel="shortcut icon" type="image/png" href="${pageContext.request.contextPath}/resources/img/spring.png">
</head>
<body>
<h1>Oops! Something went wrong.</h1>
<p>We apologize for the inconvenience. Please try again later.</p>

<p>Error details:</p>

<%
    String message = (String) request.getAttribute("javax.servlet.error.message");
%>

<pre>
        <%= (message != null) ? message : "No error message available." %>
    </pre>
</body>
</html>
