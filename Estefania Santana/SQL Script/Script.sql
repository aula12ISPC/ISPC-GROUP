create database peluqueria_canina;

use peluqueria_canina;

create table Dueno (
DNI int4 not null primary key,
Nombre varchar(80) not null,
Apellido varchar(80) not null,
Telefono varchar(80) not null,
Direccion varchar(80) not null
);

-- Punto 1: Realice la consulta correspondiente para crear la tabla Perro, teniendo en cuenta sus claves foráneas y primarias.
create table Perro (
ID_Perro int4 not null primary key,
Nombre varchar(80) not null,
Fecha_nac date not null, 
Sexo varchar(20) not null,
DNI_dueno int4 not null
);
--

create table Historial (
ID_Historial int4 not null primary key,
Fecha date not null,
Perro int4 not null
);

alter table Perro add constraint fk_Dueno_Perro
foreign key(DNI_dueno)
references Dueno(DNI);

alter table Historial add constraint fk_Perro_Historial
foreign key(Perro)
references Perro(ID_Perro);

-- Punto 2: Inserte en la tabla correspondiente un nuevo animal (perro) como paciente y el dueño asociado a ese animal.
insert into Dueno (DNI, Nombre, Apellido, Telefono, Direccion)
values (40100101, "Roberto", "Gutierrez", "4444-8888", "Pasaje La Vía 200");

insert into Perro (ID_Perro, Nombre, Fecha_nac, Sexo, DNI_dueno)
values (3, "Lolo", "2018-08-08", "masculino", 40100101);
--

-- Se inserta una fila en Historial para el punto 10.
insert into Historial (ID_Historial, Fecha, Perro)
values (1, "2004-08-08", 1);
--

-- Punto 10: Vaciar la tabla historial y resetear el contador del campo ID.
delete from Historial;
alter table Historial AUTO_INCREMENT=1;
--

