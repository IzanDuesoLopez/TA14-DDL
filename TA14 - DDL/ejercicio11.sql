create database investigadores;

use investigadores;

create table facultades (
	codigo int,
    nombre nvarchar(100),
    primary key (codigo)
);

create table investigadores (
	dni varchar(8),
    nom_apels nvarchar(255),
    facultad int,
    primary key (dni),
    foreign key (facultad) references facultades (codigo)
    on delete cascade on update cascade
);

create table equipos (
	num_serie char(4),
    nombre nvarchar(100),
    facultad int,
    primary key (num_serie),
    foreign key (facultad) references facultades (codigo)
    on delete cascade on update cascade
);

create table reservas (
	dni varchar(8),
    num_serie char(4),
    comienzo datetime,
    fin datetime,
    primary key (dni, num_serie),
    foreign key (dni) references investigadores (dni)
    on delete cascade on update cascade,
    foreign key (num_serie) references equipos (num_serie)
    on delete cascade on update cascade
);