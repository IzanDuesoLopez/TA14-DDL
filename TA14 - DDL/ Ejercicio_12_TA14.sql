create database academia;

use academia;

create table profesores (
	dni varchar(9),
    nombre varchar(50),
    apellido1 varchar(50),
    apellido2 varchar(50),
    direccion varchar(255),
    titulo varchar(50),
    gana double,
    primary key (dni)
);

create table cursos(
    codigo int,
    dni_profesor varchar(9),
    nombre varchar(25) unique,
    maximo_alumnos int,
    profesor varchar(9),
    fecha_inicio date,
    fecha_fin date,
    num_horas int not null,
    constraint chk_cursos check (fecha_inicio<fecha_fin),
    primary key (codigo),
	foreign key (dni_profesor) references profesores(dni) 
    on delete cascade on update cascade
);

create table alumnos(
    dni varchar(9),
    nombre varchar(50),
    apellido1 varchar(50),
    apellido2 varchar(50),
    direccion varchar(255),
    fecha_nacimiento date,
    sexo char(1),
    curso int not null,
    constraint chk_alumnos check (sexo='H' or sexo='M'),
    primary key (dni),
    foreign key (curso) references cursos(codigo)
    on delete cascade on update cascade
);
