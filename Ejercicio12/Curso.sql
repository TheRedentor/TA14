CREATE TABLE curso(
id_curso INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
nombre NVARCHAR(100) UNIQUE,
max_alumnos INT,
fecha_inicio DATE,
fecha_fin DATE,
horas DOUBLE NOT NULL,
dni VARCHAR(8),
FOREIGN KEY (dni) REFERENCES profesor(dni) ON DELETE CASCADE ON UPDATE CASCADE
);

ALTER TABLE curso
ADD CONSTRAINT fecha_fin CHECK (fecha_fin>=fecha_inicio);