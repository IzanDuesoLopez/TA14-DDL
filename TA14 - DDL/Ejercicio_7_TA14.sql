create database directores;

use directores;

create table despachos (
	numero int auto_increment,
    capacidad int,
    primary key (numero)
);

create table directores (
	dni varchar(8),
    nom_apels nvarchar(255),
    dni_jefe varchar(8),
    despacho int,
    primary key (dni),
    foreign key (despacho) references despachos (numero)
    on delete cascade on update cascade,
    foreign key (dni_jefe) references directores (dni)
    on delete cascade on update cascade
);
