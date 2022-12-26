CREATE DATABASE MundialNatacion2022;

USE MundialNatacion2022;

CREATE TABLE Paises(
id_pais         INT(2),
nombre_pais     VARCHAR(50)     NOT NULL,
CONSTRAINT paises_pk PRIMARY KEY (id_pais),
CONSTRAINT paises_uk1 UNIQUE KEY (nombre_pais)
);

SHOW FULL TABLES FROM MundialNatacion2022;