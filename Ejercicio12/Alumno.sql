CREATE TABLE alumno(
dni VARCHAR(8) NOT NULL PRIMARY KEY,
nombre NVARCHAR(100),
apellidos NVARCHAR(255),
direccion NVARCHAR(255),
fecha_nacimiento DATE,
sexo CHAR,
id_curso INT NOT NULL,
FOREIGN KEY (id_curso) REFERENCES curso (id_curso) ON DELETE CASCADE ON UPDATE CASCADE
);

ALTER TABLE alumno
ADD CONSTRAINT sexo  CHECK (sexo='H' OR sexo='M');