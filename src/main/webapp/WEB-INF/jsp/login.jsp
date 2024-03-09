<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Логин</title>
</head>
<body>
<form action="${pageContext.request.contextPath}/login" method="post">
    <label>Username</label>
    <input type="text" name="login" placeholder="Username">
    <label>Password</label>
    <input type="password" name="password" placeholder="Password">
    <button type="submit" name="submit">Enter</button>
    <p>No profile? <a href="${pageContext.request.contextPath}/register">Register</a></p>
</form>
</body>
</html>
