/*
NORMAS
1. siempre usar minusculas (tablas y atributos)
2. siempre usar las 3 primeras letras para definir nombre de
tablas de mas de 2 palabras
3. Para los insert, siempre indica que campos vas a insertar
*/
create table tipusu(
	codtipusu int not null,
	nomtipusu varchar(50) not null,
	estado int not null,/*1: activo, 0: inactivo*/
	PRIMARY KEY (codtipusu)
);
create table usuario(
	codusu int AUTO_INCREMENT not null,
	nomusu varchar(50) not null,
	apeusu varchar(50) not null,
	estado int not null,/*1: activo, 0: inactivo*/
	corusu varchar(50) not null,
	pasusu varchar(60) not null,
	codtipusu int not null,
	/*1: administrador, 2: profesor, 3: otros*/
	PRIMARY KEY (codusu),
	FOREIGN KEY (codtipusu)
	REFERENCES tipusu(codtipusu)
);
create table nivel(
	codniv int not null,
	nomniv varchar(10) not null,
	estado int not null,/*1: activo, 0: inactivo*/
	PRIMARY KEY (codniv)
);
create table grado(
	codgra int not null,
	nomgra varchar(10) not null,
	codniv int not null,
	estado int not null,/*1: activo, 0: inactivo*/
	PRIMARY KEY (codgra),
	FOREIGN KEY (codniv)
	REFERENCES nivel(codniv)
);
create table seccion(
	codsec int not null,
	nomsec varchar(10) not null,
	estado int not null,/*1: activo, 0: inactivo*/
	PRIMARY KEY (codsec)
);

/*inserts o almacenar los datos*/
insert into tipusu (codtipusu,nomtipusu,estado)
values
(1,'ADMINISTRADOR',1),
(2,'PROFESOR',1),
(3,'OTROS',1);
insert into nivel (codniv,nomniv,estado)
values
(1,'INICIAL',1),
(2,'PRIMARIA',1),
(3,'SECUNDARIA',1);
insert into grado (codgra,nomgra,codniv,estado)
values
(1,'3 AÑITOS',1,1),
(2,'4 AÑITOS',1,1),
(3,'5 AÑITOS',1,1),
(4,'1ER GRADO',2,1),
(5,'2DO GRADO',2,1),
(6,'3ER GRADO',2,1),
(7,'4TO GRADO',2,1),
(8,'5TO GRADO',2,1),
(9,'6TO GRADO',2,1),
(10,'1ER GRADO',3,1),
(11,'2DO GRADO',3,1),
(12,'3ER GRADO',3,1),
(13,'4TO GRADO',3,1),
(14,'5TO GRADO',3,1);
insert into seccion (codsec,nomsec,estado)
values
(1,'A',1),
(2,'B',1),
(3,'C',1),
(4,'D',1),
(5,'E',1),
(6,'F',1),
(7,'G',1);
insert into usuario (nomusu,apeusu,estado,corusu,pasusu,codtipusu)
values
('José','Bazán',1,'puntoycoma3006@gmail.com','jose',2);