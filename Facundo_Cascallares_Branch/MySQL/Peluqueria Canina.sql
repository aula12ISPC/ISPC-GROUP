CREATE DATABASE Peluqueria_Canina;
use Peluqueria_Canina;

# Se crean las tablas con sus llaves primarias y llaves foraneas de la peluqueria canina

create table Dueno(
	DNI int NOT NULL auto_increment,
    Nombre varchar(50) not null ,
    Apellido varchar(50 ) not null,
    Telefono int not null,
    Direccion varchar(255) not null,
    primary key (DNI)
);

create table Perro(
	ID_Perro int not null auto_increment,
    Nombre varchar(50) not null,
    Fecha_Nac date not null,
    sexo varchar(50),
    DNI_Dueno int not null,
    primary key (ID_Perro),
    foreign key (DNI_Dueno) references Dueno(DNI)
    
);

create table Historial(
	ID_Historial int not null auto_increment,
    Fecha date not null,
    Perro int not null,
    Descripcion varchar(255),
    Monto float,
    primary key (ID_Historial),
    foreign key (Perro) references Perro(ID_Perro)
);

# Insertamos los datos
 -- Dueño
insert into Dueno (DNI, Nombre, Apellido, Telefono, Direccion)
values (28957346, 'Juan', 'Perez', 4789689, 'Belgrano 101');

-- Perro
insert into Perro (ID_Perro, Nombre, Fecha_Nac, sexo, DNI_Dueno)
values (13, 'Puppy', "2018-12-12", 'Macho', 28957346);

-- Historial
insert into Historial(ID_Historial, Fecha, Perro)
values (2, "2021-06-14", 13);

# Insertamos los datos
 -- Dueño 2
insert into Dueno (DNI, Nombre, Apellido, Telefono, Direccion)
values (41245785, 'Ana', 'Garcia', 4229689, 'Rivadavia 202');

-- Perro 2
insert into Perro (ID_Perro, Nombre, Fecha_Nac, sexo, DNI_Dueno)
values (37, 'Miguelito', "2019-12-12", 'Macho', 41245785);

-- Historial 2
insert into Historial(ID_Historial, Fecha, Perro)
values (43,"2021-05-10", 37);


# Se procede a relizar el punto 11
# Obtener todos los dueños que tengan perros de menos de 5 años de edad que no hayan visitado la peluquería en el año 2022.
select * from Perro where Fecha_Nac > "2017-08-16";
select * from Historial where Fecha < "2022-01-01";
