create database peliculas_y_salas;

use peliculas_y_salas;

create table Peliculas(
	codigo int auto_increment primary key,
    nombre nvarchar(100) not null,
    calificacion_edad int not null
);

create table Salas(
	codigo int auto_increment primary key,
    pelicula int not null,
    nombre nvarchar(100) not null,
    foreign key(pelicula) references Peliculas(codigo)
);

show columns from Salas;

