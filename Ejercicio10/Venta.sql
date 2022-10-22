CREATE TABLE venta (
cajero INT NOT NULL,
maquina INT NOT NULL,
producto INT NOT NULL,
PRIMARY KEY (cajero, maquina, producto),
FOREIGN KEY (cajero)
REFERENCES cajero (codigo)
ON DELETE CASCADE
ON UPDATE CASCADE,
FOREIGN KEY (maquina)
REFERENCES maquina_registradora (codigo)
ON DELETE CASCADE
ON UPDATE CASCADE,
FOREIGN KEY (producto)
REFERENCES producto (codigo)
ON DELETE CASCADE
ON UPDATE CASCADE
);