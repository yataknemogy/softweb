# Web application using Spring Security

## Authentication setup
- Implement a login form for user authentication.
- Store a database of users with passwords and roles in memory (user with the "USER" role and administrator with the "ADMIN" role).

## Spring Security configuration
- Configure Spring Security to protect URLs based on user roles. Administrators with the "ADMIN" role have access to certain administrative pages.

## Working with authorization at the method level
- Use annotations to restrict access to specific methods in the controller based on the user role.

## Advanced features
- Set up 'Remember me' functionality.
- Create a custom handler for cases of access to restricted resources.