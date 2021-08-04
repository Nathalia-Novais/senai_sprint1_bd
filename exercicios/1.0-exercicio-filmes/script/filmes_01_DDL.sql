--COMENTARIO

---CRIAR UM BANCO DE DADOS CHAMADO CATALAGO
CREATE DATABASE CATALOGO;
GO 

--DEFINE O BANCO DE DADOS QUE SERA UTILIZADO
USE CATALOGO;
GO

CREATE TABLE GENERO(
  idGenero TINYINT PRIMARY KEY IDENTITY(1,1),
  nomeGenero VARCHAR(20) 
);
GO

--ALTER TABLE GENERO
--DROP COLUMN nomeGenero

ALTER TABLE GENERO
ADD nomeGenero VARCHAR(20) NOT NULL

CREATE TABLE FILME(
  idFilme SMALLINT PRIMARY KEY IDENTITY(1,1),
  idGenero TINYINT FOREIGN KEY REFERENCES GENERO(idGenero),
  tituloFilme VARCHAR(50) NOT NULL
);
GO