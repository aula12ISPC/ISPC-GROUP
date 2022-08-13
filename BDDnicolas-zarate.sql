create database Peluqueria_canina1;
use Peluqueria_canina1;

create table Dueno (
DNI int not null primary key,
Nombre varchar(30) default null,
Apellido varchar(30) default null,
Telefono int default null,
Direccion varchar(100) default null
);

insert into dueno values (4567,'Nicolas','Zarate',66916437,'Cura Navarro 123');


create table Perro(
ID_Perro int not null auto_increment primary key,
Nombre varchar(30) default null,
Fecha_Nac date default null,
Sexo enum ('Macho','hembra') default null,
DNI_dueno int not null
);


create table Historial(
ID_Historial int not null auto_increment primary key,
Fecha date default null,
Perro int default null,
Descripcion varchar (300) default null,
Monto float default null
);

alter table Historial add constraint fk_Perro_Historial
foreign key (Perro)
references Perro (ID_Perro) on delete no action on update no action;


alter table Perro add constraint fk_DNI_dueno_Perro
foreign key (DNI_dueno)
references Dueno (DNI);

insert into Perro values (6345,'Sayen','2021-05-16','Hembra',4567);

insert into Historial values (6788,'2021-05-16',6345,'Tos',5000);

select Nombre
	from Historial inner join Perro on Historial.Perro = Perro.ID_perro
    where Fecha between '2022-01-01' and '2022-12-31';

