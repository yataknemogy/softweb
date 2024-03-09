<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Регистрация</title>
    <link rel="stylesheet" href="../css/style.css">
</head>
<body>
<form action="${pageContext.request.contextPath}/register" method="post">
    <label>Логин</label>
    <input type="text" name="login" placeholder="Введите логин">
    <label>Пароль</label>
    <input type="password" name="password" placeholder="Введите пароль">
    <label>Повторите пароль</label>
    <input type="password" name="password_check" placeholder="Повторите пароль">
    <button type="submit" name="submit">Зарегистрироваться</button>
</form>
</body>

</html>
