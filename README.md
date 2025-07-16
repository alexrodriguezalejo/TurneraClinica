
# Turnera Médica - Sistema de Gestión de Turnos

Este proyecto es una aplicación web desarrollada en Java con Spring Boot para la gestión de turnos médicos. Permite registrar usuarios con diferentes roles (Admin, Médico, Paciente), asignar turnos, administrar agendas y gestionar usuarios de manera eficiente desde un panel administrativo.

---

## 🚀 Funcionalidades Principales

### 🔐 Autenticación y Autorización
- Registro e inicio de sesión con token JWT.
- Roles: ADMIN, MEDICO, PACIENTE, USUARIO.
- Control de acceso a endpoints y vistas según rol.

### 👨‍⚕️ Módulo Médico
- Registro de médico (especialidad y matrícula).
- Gestión de agenda médica (horarios, turnos disponibles).
- Generación automática de turnos por día.
- Listado de turnos por estado y fecha.
- Marcar turnos como realizados.

### 👤 Módulo Paciente
- Solicitud de turnos médicos disponibles.
- Visualización de turnos agendados y estado actual.

### 🛠️ Panel Administrador
- CRUD de usuarios.
- Asignación y modificación de roles.
- Eliminación de usuarios.
- Filtro de usuarios por rol.

---

## 🧰 Tecnologías Utilizadas

### Backend
- Java 17
- Spring Boot 3
- Spring Security
- JPA + Hibernate
- Base de datos MySQL / MariaDB

### Frontend // Hacemos uso de Thymeleaf para el manejo del Index.
- HTML5
- CSS3 / Bootstrap 5
- JavaScript Vanilla

---

## 🗃️ Estructura del Proyecto

```
turnera/
├── backend/
│   ├── config/
│   ├── dto/
│   ├── exception/
│   ├── entity/
│   ├── controller/
│   ├── repository/
│   ├── service/
│   ├── validation/
│   └── TurneraApplication.java
├── resources/ -- Aca se encuentran las vistas
│   ├── application.properties
│   ├── static/
│   └── templates/
```

---

## ⚙️ Instrucciones de Uso

1. **Clonar el repositorio:**

```bash
git clone https://github.com/alexrodriguezalejo/TurneraClinica
cd TurneraClinica
```

2. **Configurar la base de datos:**
   - Crear una base de datos llamada `turnera_db`.
   - Modificar `application.properties` con tus credenciales.

3. **Ejecutar el backend:**
   - Ejecutar la clase `TurneraApplication.java`.

---

## 📦 Dependencias Relevantes

- `spring-boot-starter-security`
- `spring-boot-starter-data-jpa`
- `spring-boot-starter-web`
- `jjwt` (para manejo de JWT)
- `lombok`

---

## 🔒 Roles de Acceso

| Rol     | Acciones Permitidas                          |
|---------|-----------------------------------------------|
| ADMIN   | ABM de usuarios, asignación de roles          |
| MÉDICO  | Registro, agenda, turnos, consulta del día    |
| PACIENTE| Solicitud y visualización de turnos           |
| USUARIO | Acceso básico                                 |

---

## 👨‍💻 Autor

**Alexander Rodríguez**  
Desarrollador Backend Java Jr.  
📍 Argentina

---

## 📜 Licencia

Este proyecto está bajo licencia MIT.  
Libre para uso académico y educativo.
