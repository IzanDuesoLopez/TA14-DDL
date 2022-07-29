create database grandesAlmacenes;
use grandesAlmacenes;

create table Productos (
	codigo int auto_increment primary key,
    nombre nvarchar(100),
    precio int
	);
    
create table Cajeros (
	codigo char(5) primary key,
    nomApels nvarchar(100)
	);
create table Maquinas_Registradoras (
	codigo int auto_increment primary key,
    piso int
	);
	
    create table Venta (
	codigo_cajero char(5),
	codigo_maquina int,
	codigo_producto int,
	primary key (codigo_cajero, codigo_maquina, codigo_producto),
	foreign key (codigo_cajero) references Cajeros (codigo),
    foreign key (codigo_maquina) references Maquinas_Registradoras (codigo),
    foreign key (codigo_producto) references Productos (codigo)
	);
    
