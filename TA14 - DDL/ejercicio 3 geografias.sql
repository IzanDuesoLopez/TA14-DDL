create database geografia;
use geografia;

create table comunidades (
	nombre varchar(30) primary key, 
    poblacion int, 
    superficie float
    );
   
create table provincias (
	idcodigopostal int primary key, 
    superficie float, 
    nombre varchar(30),
    foreign key (nombre) references comunidades (nombre)
    ); 
create table localidades (
	idlocalidad int primary key, 
    población int, 
    nombre1 varchar(20), 
    idcodigopostal int, 
    nombre varchar(30),
    foreign key (idcodigopostal) references provincias (idcodigopostal), 
    foreign key (nombre) references comunidades (nombre)
    );

show columns from comunidades;
show columns from provincias;
show columns from localidades; 

