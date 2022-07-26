create database empleados;

use empleados;

create table departamentos (
	codigo int,
    nombre nvarchar(100),
    presupuesto int,
    primary key(codigo)
);

create table empleados (
	dni varchar(8), 
	nombre nvarchar(100), 
	apellidos nvarchar(255), 
	departamento int, 
	foreign key (departamento) references departamentos (codigo)
    on delete cascade on update cascade
);