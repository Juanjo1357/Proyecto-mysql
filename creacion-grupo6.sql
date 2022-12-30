CREATE DATABASE MundialNatacion2022;

USE MundialNatacion2022;

CREATE TABLE Paises(
id_pais         INT(2),
nombre_pais     VARCHAR(50)     NOT NULL,
CONSTRAINT paises_pk PRIMARY KEY (id_pais),
CONSTRAINT paises_uk1 UNIQUE KEY (nombre_pais)
);

CREATE TABLE Categorias(
id_categoria    INT(1),
genero          VARCHAR(25)     NOT NULL,
CONSTRAINT categorias_pk PRIMARY KEY (id_categoria),
CONSTRAINT categorías_uk1 UNIQUE KEY (genero)
);

CREATE TABLE Medallas(
id_medalla      INT(1),
nombre_medalla  VARCHAR(15)     NOT NULL,
CONSTRAINT medallas_pk PRIMARY KEY (id_medalla),
CONSTRAINT medallas_uk1 UNIQUE (nombre_medalla)
);

CREATE TABLE Estilos_nado(
id_estilo           INT(2),
nombre              VARCHAR(25)     NOT NULL,
distancia_metros    INT(3)          NOT NULL,
CONSTRAINT estilos_nado_pk PRIMARY KEY (id_estilo)
);

ALTER TABLE Estilos_nado MODIFY
distancia_metros    VARCHAR(6);

CREATE TABLE Competidores(
id_competidor       INT(3),
nombre              VARCHAR(50)     NOT NULL,
apellido            VARCHAR(50)     NOT NULL,
id_pais             INT(2)          NOT NULL,
id_categoria        INT(1)          NOT NULL,
CONSTRAINT competidores_pk PRIMARY KEY (id_competidor),
CONSTRAINT competidores_fk1 FOREIGN KEY (id_pais) REFERENCES Paises (id_pais)
);

CREATE TABLE Equipos(
id_equipo           INT(1),
id_competidor       INT(3)          NOT NULL,
CONSTRAINT equipos_pk PRIMARY KEY (id_equipo),
CONSTRAINT equipos_uk1 UNIQUE (id_competidor),
CONSTRAINT equipos_fk1 FOREIGN KEY (id_competidor) REFERENCES Competidores (id_competidor)
);

CREATE TABLE Clasificacion_individual(
id_competidor       INT(3)          NOT NULL,
id_estilo           INT(2),
id_medalla          INT(1),
tiempo              TIMESTAMP       NOT NULL,
CONSTRAINT clasificacion_individual_pk PRIMARY KEY (id_estilo,id_medalla),
CONSTRAINT clasificacion_individual_fk1 FOREIGN KEY (id_competidor) REFERENCES Competidores (id_competidor),
CONSTRAINT clasificacion_individual_fk2 FOREIGN KEY (id_estilo) REFERENCES Estilos_nado (id_estilo),
CONSTRAINT clasificacion_individual_fk3 FOREIGN KEY (id_medalla) REFERENCES Medallas (id_medalla)
);

CREATE TABLE Clasificacion_grupal(
id_equipo           INT(3)          NOT NULL,
id_estilo           INT(2),
id_medalla          INT(1),
tiempo_total        TIMESTAMP       NOT NULL,
CONSTRAINT clasificacion_grupal_pk PRIMARY KEY (id_estilo,id_medalla),
CONSTRAINT clasificacion_grupal_fk1 FOREIGN KEY (id_equipo) REFERENCES Equipos (id_equipo),
CONSTRAINT clasificacion_grupal_fk2 FOREIGN KEY (id_estilo) REFERENCES Estilos_nado (id_estilo),
CONSTRAINT clasificacion_grupal_fk3 FOREIGN KEY (id_medalla) REFERENCES Medallas (id_medalla),
CONSTRAINT clasificacion_grupal_uk1 UNIQUE (id_equipo)
);

CREATE TABLE Records (
fecha               DATE,
id_estilo           INT(2),
tiempo              TIMESTAMP,
id_competidor       INT(3),
id_pais             INT(2)              NOT NULL,
CONSTRAINT records_pk PRIMARY KEY (id_estilo, tiempo),
CONSTRAINT records_fk1 FOREIGN KEY (id_estilo) REFERENCES Estilos_nado (id_estilo),
CONSTRAINT records_fk2 FOREIGN KEY (id_competidor) REFERENCES Competidores (id_competidor),
CONSTRAINT records_fk3 FOREIGN KEY (id_pais) REFERENCES Paises (id_pais)
);

SHOW FULL TABLES FROM MundialNatacion2022;

INSERT INTO Paises (id_pais, nombre_pais)
VALUES (1, 'Australia'),
       (2, 'Brazil'),
       (3, 'Canada'),
       (4, 'China'),
       (5, 'France'),
       (6, 'Germany'),
       (7, 'Great Britain'),
       (8, 'Hungary'),
       (9, 'Italy'),
       (10, 'Japan'),
       (11, 'Lithuania'),
       (12, 'Netherlands'),
       (13, 'Poland'),
       (14, 'Romania'),
       (15, 'South Africa'),
       (16, 'South Korea'),
       (17, 'Sweden'),
       (18, 'Ukraine'),
       (19, 'United States');

SELECT * FROM Paises;

INSERT INTO Categorias (id_categoria, genero)
VALUES (1, 'Men'), (2, 'Women');

INSERT INTO Medallas (id_medalla, nombre_medalla)
VALUES (1, 'Gold'), (2, 'Silver'), (3, 'Bronze');

INSERT INTO Estilos_nado (id_estilo, nombre, distancia_metros)
VALUES (1, 'freestyle', '50m'),
       (2, 'freestyle', '100m'),
       (3, 'freestyle', '200m'),
       (4, 'freestyle', '400m'),
       (5, 'freestyle', '800m'),
       (6, 'freestyle', '1500m'),
       (7, 'backstroke', '50m'),
       (8, 'backstroke', '100m'),
       (9, 'backstroke', '200m'),
       (10, 'breaststroke', '50m'),
       (11, 'breaststroke', '100m'),
       (12, 'breaststroke', '200m'),
       (13, 'butterfly', '50m'),
       (14, 'butterfly', '100m'),
       (15, 'butterfly', '200m'),
       (16, 'individual medley', '200m'),
       (17, 'individual medley', '400m'),
       (18, 'freestyle relay', '4x100m'),
       (19, 'freestyle relay', '4x200m'),
       (20, 'medley relay', '4x100m');

SELECT * FROM Estilos_nado;

INSERT INTO Competidores (id_competidor, nombre, apellido, id_pais, id_categoria)
VALUES (1, 'Ben', 'Proud', 7, 1),
       (2, 'Michael', 'Andrew', 19, 1),
       (3, 'Maxime', 'Grousset', 5, 1),
       (4, 'David', 'Popovici', 14, 1),
       (5, 'Joshua', 'Liendo', 3, 1),
       (6, 'Hwang', 'Sun-woo', 16, 1),
       (7, 'Tom', 'Dean', 7, 1),
       (8, 'Elijah', 'Winnington', 1, 1),
       (9, 'Lukas', 'Märtens', 6, 1),
       (10, 'Guilherme', 'Costa', 2, 1),
       (11, 'Bobby', 'Finke', 19, 1),
       (12, 'Florian', 'Wellbrock', 6,1),
       (13, 'Mykhailo','Romanchuk', 18, 1),
       (14, 'Gregorio', 'Paltrinieri', 9,1),
       (15, 'Justin', 'Ress', 19,1),
       (16, 'Hunter', 'Armstrong', 19,1),
       (17, 'Ksawery', 'Masiuk', 13, 1),
       (18, 'Thomas', 'Ceccon', 9,1),
       (19, 'Ryan', 'Murphy', 19,1);

INSERT INTO Competidores (id_competidor, nombre, apellido, id_pais, id_categoria)
VALUES (20, 'Luke', 'Greenbank', 7,1),
       (21, 'Shaine', 'Casas', 19,1),
       (22, 'Nic', 'Fink', 19,1),
       (23, 'Nicolò', 'Martinenghi', 9,1),
       (24, 'Amo', 'Kamminga', 12,1),
       (25, 'Zac', 'Stubblety-Cook', 1,1),
       (26, 'Yu', 'Hanaguruma', 10,1),
       (27, 'Erik', 'Persson', 17,1),
       (28, 'Caeleb', 'Dressel', 19,1),
       (29, 'Nicholas', 'Santos', 2,1),
       (30, 'Kristóf', 'Milák', 8,1),
       (31, 'Naoki','Mizunuma', 10,1),
       (32, 'Léon', 'Marchand', 5,1),
       (33, 'Tomoru','Honda', 10,1),
       (34, 'Carson', 'Foster', 19,1),
       (35, 'Daiya', 'Seto', 10,1),
       (36, 'Chase', 'Kalisz', 19,1),
       (37, 'Ryan', 'Held', 19,1),
       (38, 'Brooks', 'Curry', 19,1),
       (39, 'William','Yang', 1,1),
       (40, 'Matthew','Temple', 1,1),
       (41, 'Jack','Cartwright', 1,1),
       (42, 'Kyle','Chalmers', 1,1),
       (43, 'Alessandro', 'Miressi', 9,1),
       (44, 'Lorenzo','Zazzeri', 9,1),
       (45, 'Manuel','Frigo', 9,1),
       (46, 'Drew', 'Kibler',19,1),
       (47, 'Trenton','Julian',19,1),
       (48, 'Kieran','Smith',19,1),
       (49, 'Trey', 'Freeman',19,1),
       (50, 'Coby','Carrozza', 19,1),
       (51, 'Zac','Incerti', 1,1),
       (52, 'Samuel','Short', 1,1),
       (53, 'Mack','Horton', 1,1),
       (54, 'Brendon','Smith', 1,1),
       (55, 'James','Guy',7,1),
       (56, 'Jacob','Whittle',7,1),
       (57, 'Joe','Litchfield',7,1),
       (58, 'Matthew','Richards',7,1),
       (59, 'Federico','Burdisso',9,1),
       (60, 'Piero','Codia', 9,1),
       (61,'Ryan','Held',19,1),
       (62,'James','Wilby',7,1),
       (63,'Jacob','Peters',7,1),
       (64,'Lewis','Burras',7,1);

DELETE FROM Competidores WHERE id_competidor=61;

INSERT INTO Competidores (id_competidor, nombre, apellido, id_pais, id_categoria)
VALUES (61, 'Sarah','Sjöström', 17,2);

SELECT * FROM Competidores;