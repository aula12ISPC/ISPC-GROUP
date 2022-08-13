-- Creo tabla Peluqueria de mascotas
create database peluqueria_c;

use peluqueria_c;

-- Esta tabla corresponde a los datos del dueño del perro

CREATE TABLE Dueño (
IdDni INT NOT NULL PRIMARY KEY,
Nombre VARCHAR(50) NOT NULL,
Apellido VARCHAR(50) NOT NULL,
Telefono VARCHAR(50) NOT NULL,
Direccion_domicilio VARCHAR(100)
);
-- La siguiente tabla a los datos del perro
CREATE TABLE Perro (
IDPerro INT NOT NULL PRIMARY KEY,
Nombre VARCHAR(50) NOT NULL,
FechaNacimiento DATE NOT NULL,
Sexo VARCHAR(10) NOT NULL
);
-- Historial de las veces que fue atendida la mascota
CREATE TABLE Historial (
ID_Historial INT NOT NULL PRIMARY KEY,
Fecha DATE NOT NULL,
Perro INT NOT NULL,
Descripcion VARCHAR (100) NOT NULL,
Monto  INT NOT NULL
);

INSERT INTO Dueño VALUES(725635664, "Fernando","Juarez","43456654","Mitre 24"),(56774432, "Brenda","Martinez","55556654","San Andres 24");
INSERT INTO Perro VALUES (3465,"Sifon","2022-02-20","Macho"),(3343,"Otho","2020-05-15","Macho");
INSERT INTO Historial VALUES (344,"2021-06-30","Otho","Peinado", 1500);

UPDATE Perro
SET fechaNacimiento ="2020-06-05"
WHERE IDPerro =3343