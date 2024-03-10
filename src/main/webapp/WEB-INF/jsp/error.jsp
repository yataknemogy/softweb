<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Error</title>
</head>
<body>
<h1>Oops! Something went wrong.</h1>
<p>We apologize for the inconvenience. Please try again later.</p>

<%-- Вывод информации об ошибке --%>
<p>Error details:</p>

<%-- Получение информации об ошибке --%>
<%
    String message = (String) request.getAttribute("javax.servlet.error.message");
%>

<pre>
        <%= (message != null) ? message : "No error message available." %>
    </pre>
</body>
</html>
