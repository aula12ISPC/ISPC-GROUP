create database peluqueríaCanina;
use peluqueríaCanina;
create table Dueño(
	DNI int,
    D_Nombre varchar(200),
    Apellido varchar(200),
    Telefono int,
    Dirección varchar(200),
    primary key (DNI)
);

insert into Dueño (DNI, D_Nombre, Apellido, Telefono, Dirección) 
values (43129654, 'Leonardo', 'Cuestas Manthai', 17845321, 'Bajo sucre 80'),
	   (43129651, 'Pedro', 'Gonzales', 17845222, 'Alta sucre 20'),
	   (43129754, 'Lari', 'schäfer', 17845111, ' sucre 20');


select * from Dueño;

create table Perro (
	ID_Perro varchar(200),
    P_Nombre varchar(200), 
    Fecha_nac varchar(200),
    Sexo varchar(200),
    DNI_dueño int,
    primary key(ID_Perro),
    foreign key(DNI_dueño) references Dueño(DNI)
);

insert into Perro (ID_Perro, P_Nombre, Fecha_nac, Sexo, DNI_dueño) 
values ('Airedale terrir','Lisa', '15/02/22', 'Femenino', 43129654),
	   ('Dálmata','Tobi', '8/05/10', 'Masculino', 43129651),
	   ('Poodle', 'Lara', '2/02/03','Femenino', 43129754);

select * from Perro;

create table Historial (
	ID_Historial varchar(200),
    Fecha varchar(100),
    Perro varchar(200),
    Descripción varchar(200),
    Monto varchar(10),
    primary key (ID_Historial),
    foreign key (Perro) references Perro(ID_Perro)
);

insert into Historial (ID_Historial, Fecha, Perro, Descripción, Monto) 
values 
	   (43129651, '5/01/10', 'Dálmata', 'corte westy', '500 pesos'),
	   (43129654, '12/07/22', 'Airedale terrir', 'corte león', '200 pesos'),
       (43129754, '11/01/09', 'Poodle', 'corte cachorro', '1000 pesos');

select * from Historial;

select * from  Historial, Dueño, Perro; -- ahí se recolectan todos los datos de cada tabla y surgirá un lio

select * from Historial, Dueño, Perro where DNI = DNI_dueño and ID_Historial = DNI_dueño; -- Acá se pueden ver los datos de clientes con sus perros 

select * from Historial, Dueño, Perro where DNI = DNI_dueño and ID_Historial = DNI_dueño and D_Nombre = 'Pedro'; -- Quería renombarar los nombres de la columna Perro y Dueño que era nombre a P_nombre y D_nombre para realizar la consulta de multitablas.







