create database futbol;

USE futbol;

CREATE TABLE Ligas (
	idliga int,
    pais varchar(25),
    temporada int,
    primary key (idliga)
);

CREATE TABLE Equipos (
	idequipo int,
    idliga int,
    nombre varchar(25),
    estadio varchar(25),
    presidente varchar(30),
    himno varchar(50),
    primary key (idequipo),
    foreign key (idliga) references Ligas (idliga) ON DELETE CASCADE ON UPDATE CASCADE
);

create table Jugadores(
	idjugador int,
    nombre varchar(25),
    peso float,
    altura float,
    dorsal int,
    goles int,
    asistencias int,
    faltas int,
    edad int,
    idequipo int,
    primary key (idjugador),
    foreign key (idequipo) references Equipos (idequipo)
);

create table Entrenador(
	identrenador int,
    nombre varchar(25),
    edad int,
    añosexperiencia int,
    idequipo int,
    primary key (identrenador),
    foreign key (idequipo) references Equipos (idequipo)
);

create table Partidos(
	idpartido int,
    equipolocal varchar(25),
    equipovisitante varchar(25),
    resultado int,
    idequipo int,
    primary key (idpartido),
    foreign key (idequipo) references Equipos (idequipo)
);

create table Jueganpartidos(
	idequipo int,
    idpartido int,
    foreign key (idequipo) references Equipos(idequipo),
    foreign key (idpartido) references Partidos(idpartido)
);

create table Arbitros(
	idarbitro int,
    nombre varchar(25),
    edad int,
    idpartido int,
    primary key (idarbitro),
    foreign key (idpartido) references Partidos(idpartido)
);

show tables from futbol;
show columns from Arbitros;


