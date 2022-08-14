create database peluqueria_canina;

use peluqueria_canina;

create table Duenio (
DNI int4 not null primary key auto_increment,
Nombre varchar(80) not null,
Apellido varchar(80) not null,
Telefono varchar(80) not null,
Direccion varchar(80) not null
);

create table Perro (
ID_Perro int4 not null primary key auto_increment,
Nombre varchar(80) not null,
Fecha_nac date not null, 
Sexo varchar(20) not null,
DNI_duenio int4 not null
);

alter table Perro add constraint fk_Duenio_Perro
foreign key(DNI_duenio)
references Duenio(DNI);

create table Historial (
ID_Historial int4 not null primary key auto_increment,
Fecha date not null,
Perro int4 not null,
Descripción varchar(80) not null,
Monto int4 not null
);

alter table Historial add constraint fk_Perro_Historial
foreign key(Perro)
references Perro(ID_Perro);

insert into Duenio (DNI, Nombre, Apellido, Telefono, Direccion)
values (95898989, "Johana", "Martinez", "1165696969", "Maipu 269");

insert into Perro (ID_Perro, Nombre, Fecha_nac, Sexo, DNI_duenio)
values (2, "Pancho", "2022-11-05", "masculino", 95898989);

insert into Historial (ID_Historial, Fecha, Perro, Descripción, Monto)
values (1, "2022-07-01", 2, "Vacuna", 2000);

insert into Historial (ID_Historial, Fecha, Perro, Descripción, Monto)
values (2, "2022-07-15", 2, "Baño", 1200);

insert into Historial (ID_Historial, Fecha, Perro, Descripción, Monto)
values (3, "2022-07-22", 2, "Consulta", 2500);

-- Ejercicio 7 Obtener los ingresos percibidos en Julio del 2022
use peluqueria_canina;
SELECT SUM(Monto)
FROM Historial
where Fecha >= "2022-07-01" and fecha <= "2022-07-31"


