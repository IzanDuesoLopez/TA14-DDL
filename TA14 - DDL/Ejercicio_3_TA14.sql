create database tienda_informatica;

use tienda_informatica;

create table Fabricantes(
	codigo int auto_increment primary key,
    nombre nvarchar(100)
);

create table Articulos(
	codigo int auto_increment primary key,
    nombre nvarchar(100),
    precio int,
    fabricante int,
    foreign key (fabricante) references Fabricantes(codigo)
);

show tables from tienda_informatica;
show columns from Articulos;