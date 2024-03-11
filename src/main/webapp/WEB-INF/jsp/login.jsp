<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Log in</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/static/style.css">
    <link rel="shortcut icon" type="image/png" href="${pageContext.request.contextPath}/resources/img/spring.png">
</head>
<body>
<div class="container">
    <form action="/login" method="post">
        <h2>Log in to Your Account</h2>
        <div>
            <label>Login</label>
            <input type="text" id="login" name="login" placeholder="Login" required>
        </div>
        <div>
            <label>Password</label>
            <input type="password" id="password" name="password" placeholder="Password" required>
        </div>
        <div class="remember-me">
            <input type="checkbox" id="remember-me-login" name="remember-me" />
            <label for="remember-me-login">Remember Me</label>
        </div>
        <button type="submit" name="submit">Enter</button>
        <p>No profile? <a href="${pageContext.request.contextPath}/register">Register</a></p>
    </form>
</div>
</body>
</html>
