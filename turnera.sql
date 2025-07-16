create database turnera_db;

use turnera_db;

-- Insertar permisos
INSERT INTO permiso (nombre) VALUES
('CREATE'),
('READ'),
('UPDATE'),
('DELETE');

-- Insertar roles
INSERT INTO rol (nombre) VALUES
('ADMIN'),
('MEDICO'),
('PACIENTE'),
('USUARIO');

-- Asignar permisos a roles

-- ADMIN tiene todos los permisos
INSERT INTO rol_permiso (rol_id, permiso_id)
SELECT r.id, p.id FROM rol r, permiso p WHERE r.nombre = 'ADMIN';

-- MEDICO tiene READ y UPDATE
INSERT INTO rol_permiso (rol_id, permiso_id)
SELECT r.id, p.id FROM rol r, permiso p
WHERE r.nombre = 'MEDICO' AND p.nombre IN ('READ','UPDATE');

-- PACIENTE tiene CREATE y READ
INSERT INTO rol_permiso (rol_id, permiso_id)
SELECT r.id, p.id FROM rol r, permiso p
WHERE r.nombre = 'PACIENTE' AND p.nombre IN ('CREATE','READ');

-- USUARIO tiene solo READ
INSERT INTO rol_permiso (rol_id, permiso_id)
SELECT r.id, p.id FROM rol r, permiso p
WHERE r.nombre = 'USUARIO' AND p.nombre = 'READ';

-- Insertar usuario admin con contraseña bcrypt

-- Ejemplo de hash bcrypt para contraseña '123':
-- $2a$10$Dow1kYUSWmQKlY5bS36FaeAeo/DXEi1YfxPud5lCeF1PjA/yqQ2Hi

INSERT INTO usuarios (correo, contraseña, nombre) VALUES
('admin@gmail.com', '$2a$10$10XivKLFI1oFll4728nBK.CC8WtDQnEItn.gGg8Jt1il1vNYGAbc.', 'admin');

-- Asignar rol ADMIN al usuario
INSERT INTO usuario_rol (usuario_id, rol_id) VALUES (1, 1);
-- token eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJhZG1pbkBnbWFpbC5jb20iLCJpYXQiOjE3NTA4OTk5MjMsImV4cCI6MTc1MDk4NjMyM30.cUJnR5lcNJ2oSXIb9R_pOSZfmhq8V1isDG7xAwa0Exw--

-- Insertar turno del pasado:
INSERT INTO turno (fecha, hora, estado, medico_id, paciente_id)
VALUES ('2025-07-01', '10:30:00', 'REALIZADO', 1, 2);