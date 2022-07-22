create database futbol;
USE futbol;
CREATE TABLE liga (IDLiga int, pais varchar(25), temporada int, primary key (IDLiga));
CREATE TABLE equipo (IDEquipo int, IDLiga int, nombre varchar(25), estadio varchar(25), presidente varchar(30), himno varchar(50), primary key (IDEquipo), foreign key (IDLiga) references liga (IDLiga) ON DELETE CASCADE ON UPDATE CASCADE);
create table jugador(idjugador int, nombre varchar(25), peso float, altura float, dorsal int, goles int, asistencias int, faltas int, edad int, IDEquipo int, primary key (idjugador), foreign key (IDEquipo) references equipo (IDEquipo));
create table entrenador(identrenador int, nombre varchar(25), edad int, añosExperiencia int, IDEquipo int, primary key (identrenador), foreign key (IDEquipo) references equipo (IDEquipo));
create table partido(idpartido int, equipoLocal varchar(25), equipoVisitante varchar(25), resultado int, IDEquipo int, primary key (idpartido), foreign key (IDEquipo) references equipo (IDEquipo));
create table juegapartido(IDEquipo int, idpartido int, foreign key (IDEquipo) references equipo(IDEquipo), foreign key (idpartido) references partido(idpartido));
create table arbitro(idarbitro int, nombre varchar(25), edad int, idpartido int, primary key (idarbitro), foreign key (idpartido) references partido(idpartido));
show tables from futbol;


