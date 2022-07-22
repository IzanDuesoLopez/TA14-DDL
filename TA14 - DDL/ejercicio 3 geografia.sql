/* create database geografia;
use geografia; 
create table comunidad (nombre varchar(30), poblacion int, superficie float, primary key (nombre));
create table provincia (idcodigopostal int, superficie float, nombre varchar(30), primary key (idcodigopostal), foreign key (nombre) references comunidad (nombre));
create table localidad (idlocalidad int, población int, nombre1 varchar(20), idcodigopostal int, nombre varchar(30), primary key (idlocalidad), foreign key (idcodigopostal) references provincia (idcodigopostal), foreign key (nombre) references comunidad (nombre));  */

show columns from comunidad;
show columns from provincia;
show columns from localidad;
