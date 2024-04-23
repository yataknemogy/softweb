# Веб-приложение с использованием Spring Security

Это веб-приложение представляет собой пример использования Spring Security для обеспечения аутентификации и авторизации пользователей.

## Настройка аутентификации

- Реализована форма логина для аутентификации пользователей.
- База пользователей с паролями и ролями хранится в памяти приложения.

## Конфигурация Spring Security

- Spring Security настроен для защиты URL-адресов в зависимости от ролей пользователей.
- Администраторы с ролью "ADMIN" имеют доступ к определенным административным страницам.

## Работа с авторизацией на уровне методов

- Используются аннотации для ограничения доступа к определенным методам в контроллере на основе ролей пользователей.

## Расширенные функции

- Реализована настройка 'Запомнить меня'.
- Разработан пользовательский обработчик для случаев доступа к запрещенным ресурсам.

<<<<<<< HEAD
---
***Настройка аутентификации***
- Форму логина для аутентификации пользователей.
- Сохранение в память базу пользователей с паролями и ролями (пользователь с ролью "USER" и администратор с ролью "ADMIN").
---
***Конфигурация Spring Security***
- Настройка Spring Security для защиты URL-адресов на основе ролей порльзователя. Администраторы с ролью "ADMIN" имеют доступ к определенным административным страницам.
---
***Работа с авторизацией на уровне методов***
- Использование аннотаций для ограничения доступа к определенным методам в контроллере на основе роли использователя.
---
***Расширенные функции***
- Настройка 'Запомнить меня'.
- Пользовательский обработчик для случаев доступа к запрещенным ресурсам.
---

[EN](docs/README_EN.MD)
=======
>>>>>>> origin/master
