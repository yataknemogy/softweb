<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Логин</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/static/style.css">
</head>
<body>
<div class="container">
    <form action="${pageContext.request.contextPath}/login" method="post">
        <h2>Login to Your Account</h2>
        <div>
            <label>Username</label>
            <input type="text" name="login" placeholder="Username" autofocus="true">
        </div>
        <div>
            <label>Password</label>
            <input type="password" name="password" placeholder="Password">
        </div>
        <button type="submit" name="submit">Enter</button>
        <p>No profile? <a href="${pageContext.request.contextPath}/register">Register</a></p>
    </form>
</div>
</body>
</html>
