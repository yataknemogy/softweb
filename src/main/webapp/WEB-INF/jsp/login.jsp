<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Логин</title>
    <link href="../css/style.css" rel="stylesheet">
</head>
<body>


<form action="${pageContext.request.contextPath}/login" method="post">
    <label>Логин</label>
    <input type="text" name="login" placeholder="Введите логин">
    <label>Пароль</label>
    <input type="password" name="password" placeholder="Введите пароль">
    <button type="submit" name="submit">Войти</button>
    <p>Нет профиля ? <a href="/register">Зарегистрироваться</a></p>
</form>

</body>

</html>
