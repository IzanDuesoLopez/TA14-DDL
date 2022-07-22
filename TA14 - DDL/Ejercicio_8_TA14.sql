create database piezas_y_proveedores;
use piezas_y_proveedores;

create table Piezas(
	codigo int auto_increment primary key,
    nombre nvarchar(100)
);

create table Proveedores(
	id char(4) primary key,
    nombre nvarchar(100)
);

create table Suministra(
	codigoPieza int,
    idProveedor char(4),
    foreign key(codigoPieza) references Piezas(codigo),
    foreign key(idProveedor) references Proveedores(id)
);

show columns from Suministra;

