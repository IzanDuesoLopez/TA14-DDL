create database cientificos;

use cientificos;

create table cientificos (
	dni varchar(8),
    nom_apels nvarchar(255),
    primary key (dni)
);

create table proyectos (
	id char(4),
    nombre nvarchar(255),
    horas int,
    primary key (id)
);

create table asignado_a (
	cientifico varchar(8),
    proyecto char(4),
    primary key (cientifico, proyecto),
    foreign key (cientifico) references cientificos (dni)
    on delete cascade on update cascade,
    foreign key (proyecto) references proyectos (id)
    on delete cascade on update cascade
);