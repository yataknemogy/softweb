# Webanwendung mit Verwendung von Spring Security

Diese Webanwendung ist ein Beispiel für die Verwendung von Spring Security zur Bereitstellung von Benutzerauthentifizierung und -autorisierung.

## Konfiguration der Authentifizierung

- Ein Anmeldeformular für die Authentifizierung von Benutzern wurde implementiert.
- Die Benutzerbasis mit Passwörtern und Rollen wird im Anwendungsspeicher gespeichert.

## Konfiguration von Spring Security

- Spring Security ist so konfiguriert, dass URL-Adressen je nach Benutzerrollen geschützt sind.
- Administratoren mit der Rolle "ADMIN" haben Zugriff auf bestimmte administrative Seiten.

## Arbeit mit methodenbasierter Autorisierung

- Annotationen werden verwendet, um den Zugriff auf bestimmte Methoden im Controller basierend auf Benutzerrollen einzuschränken.

## Erweiterte Funktionen

- Die "Remember Me" Funktion wurde implementiert.
- Ein benutzerdefinierter Handler für den Zugriff auf verbotene Ressourcen wurde entwickelt.

[EN](README_EN.MD) | [JP](README_JP.MD)