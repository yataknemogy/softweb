<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Log in</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/static/style.css">
    <link rel="shortcut icon" type="image/png" href="${pageContext.request.contextPath}/resources/img/spring.png">
</head>
<body>
<div class="container">
    <form action="#" th:action="@{/login}" method="post">
        <h2>Log in to Your Account</h2>
        <div>
            <label>Username</label>
            <input type="text" name="login" placeholder="Username" autofocus="true">
        </div>
        <div>
            <label>Password</label>
            <input type="password" name="password" placeholder="Password">
        </div>
        <div class="remember-me">
        <input type="checkbox" id="remember-me-login" name="remember-me" />
        <label for="remember-me-login">Remember Me</label>
    </div>
        <button type="submit" name="submit">Enter</button>
        <p>No profile? <a href="${pageContext.request.contextPath}/register">Register</a></p>
        <c:if test="${error}">
            <p style="color: red;">Invalid username or password</p>
        </c:if>
    </form>
    <%
        String rememberMeError = (String)request.getAttribute("SPRING_SECURITY_LAST_EXCEPTION");
        if (rememberMeError != null) {
            out.println("<p>Remember Me Error: " + rememberMeError + "</p>");
        }
    %>
</div>
</body>
</html>
