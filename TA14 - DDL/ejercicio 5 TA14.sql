create database almacenes;
use almacenes;

create table Almacenes (
	codigo int auto_increment primary key,
    lugar nvarchar(100),
    capacidad int
	);
    
create table Cajas (
	numReferencia char(5) primary key,
    contenido nvarchar(100),
    valor int,
    codigo int auto_increment,
	foreign key (codigo) references Almacenes (codigo)
	);

show columns from Almacenes;
show columns from Cajas;