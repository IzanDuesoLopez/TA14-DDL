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
    
    create table Venta (
	foreign key (codigo) references Cajeros (codigo),
    foreign key (codigo) references Maquinas_Registradoras (codigo),
    foreign key (codigo) references Productos (codigo)
	);
    
    create table Maquinas_Registradoras (
	codigo int auto_increment primary key,
    piso int
	);

show columns from Productos;
show columns from Cajeros;
show columns from Maquinas_Registradoras;
show columns from Venta;