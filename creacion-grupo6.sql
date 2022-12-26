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

SHOW FULL TABLES FROM MundialNatacion2022;

