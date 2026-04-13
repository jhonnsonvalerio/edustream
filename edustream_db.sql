-- 1. Crear base de datos
CREATE DATABASE IF NOT EXISTS edustream_db;
USE edustream_db;

-- 2. Crear tabla usuarios
CREATE TABLE IF NOT EXISTS usuarios (
    id_usuario INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    rol ENUM('ESTUDIANTE', 'PROFESOR') NOT NULL,
    fecha_registro TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- 3. Crear tabla cursos
CREATE TABLE IF NOT EXISTS cursos (
    id_curso INT AUTO_INCREMENT PRIMARY KEY,
    nombre_curso VARCHAR(150) NOT NULL,
    descripcion TEXT,
    id_profesor INT NOT NULL,
    FOREIGN KEY (id_profesor) REFERENCES usuarios(id_usuario) ON DELETE CASCADE
);

-- 4. Crear tabla inscripciones
CREATE TABLE IF NOT EXISTS inscripciones (
    id_inscripcion INT AUTO_INCREMENT PRIMARY KEY,
    id_estudiante INT,
    id_curso INT,
    fecha_inscripcion DATE,
    UNIQUE (id_estudiante, id_curso),
    FOREIGN KEY (id_estudiante) REFERENCES usuarios(id_usuario) ON DELETE CASCADE,
    FOREIGN KEY (id_curso) REFERENCES cursos(id_curso) ON DELETE CASCADE
);

-- 5. Limpiar datos anteriores
SET SQL_SAFE_UPDATES = 0;

DELETE FROM inscripciones;
DELETE FROM cursos;
DELETE FROM usuarios;

ALTER TABLE usuarios AUTO_INCREMENT = 1;
ALTER TABLE cursos AUTO_INCREMENT = 1;
ALTER TABLE inscripciones AUTO_INCREMENT = 1;

SET SQL_SAFE_UPDATES = 1;

-- 6. Insertar usuarios de prueba
INSERT INTO usuarios (nombre, email, password, rol) VALUES
('Pablo Cordero', 'pcorderov@uvirtual.ac.cr', '1234', 'PROFESOR'),
('Jhonnson Valerio', 'jhonnson6.12@gmail.com', '1234', 'ESTUDIANTE');

-- 7. Insertar cursos
INSERT INTO cursos (nombre_curso, descripcion, id_profesor) VALUES
('Java SE Avanzado', 'Dominio de POO y colecciones.', 1),
('Desarrollo Web con Java EE', 'Servlets, JSP y JDBC.', 1);

-- 8. Insertar inscripciones
INSERT INTO inscripciones (id_estudiante, id_curso, fecha_inscripcion) VALUES
(2, 1, CURDATE()),
(2, 2, CURDATE());

-- 9. Mostrar datos cargados
SELECT * FROM usuarios;
SELECT * FROM cursos;
SELECT * FROM inscripciones

SHOW VARIABLES LIKE 'port';

SHOW DATABASES;