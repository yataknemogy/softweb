# Web Application Using Spring Security

This web application serves as an example of using Spring Security to provide user authentication and authorization.

## Authentication Setup

- Implemented a login form for user authentication.
- User database with passwords and roles is stored in the application's memory.

## Spring Security Configuration

- Spring Security is configured to protect URL addresses based on user roles.
- Administrators with the "ADMIN" role have access to specific administrative pages.

## Method-Level Authorization

- Annotations are used to restrict access to specific methods in the controller based on user roles.

## Advanced Features

- Implemented 'Remember Me' functionality.
- Custom handler developed for cases of accessing forbidden resources.

[JP](README_JP.MD)