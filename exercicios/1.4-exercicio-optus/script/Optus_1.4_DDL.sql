CREATE DATABASE OPTUSempresa;
GO

USE OPTUSempresa;
GO

CREATE TABLE EMPRESA (
	IdEmpresa TINYINT PRIMARY KEY IDENTITY (1,1),
	nomeEmpresa VARCHAR(20),
	end_Empresa VARCHAR(50),
);
GO

CREATE TABLE ARTISTA (
	IdArtista SMALLINT PRIMARY KEY IDENTITY (1,1),
	IdEmpresa TINYINT FOREIGN KEY REFERENCES EMPRESA (IdEmpresa),
	nomeArtista VARCHAR(100),
);
GO

CREATE TABLE  ESTILO (
	IdEstilo TINYINT PRIMARY KEY IDENTITY (1,1),
	nomeEstilo VARCHAR(20),
);
GO

CREATE TABLE VISIBILIDADE (
	IdVisibilidade SMALLINT PRIMARY KEY IDENTITY (1,1),
	descricao VARCHAR(10),
);
GO

CREATE TABLE PLATAFORMA (
	IdPlataforma SMALLINT PRIMARY KEY IDENTITY (1,1),
	descricao VARCHAR(10)
);
GO


CREATE TABLE ALBUM (
	IdAlbum SMALLINT PRIMARY KEY IDENTITY (1,1),
	IdArtista SMALLINT FOREIGN KEY REFERENCES ARTISTA (IdArtista),
	IdEstilo TINYINT FOREIGN KEY REFERENCES ESTILO (IdEstilo),
	IdVisibilidade SMALLINT  FOREIGN KEY REFERENCES VISIBILIDADE (IdVisibilidade),
	IdPlataforma SMALLINT  FOREIGN KEY REFERENCES PLATAFORMA (IdPlataforma),
	nomeAlbum VARCHAR(20),
	datalancamento VARCHAR(20),
	tempo VARCHAR(20),
	Localizacao VARCHAR(50)
);
GO

CREATE TABLE PERMISSAO (
	IdPermissao SMALLINT PRIMARY KEY IDENTITY (1,1),
	tipoPermissao VARCHAR(20)
);
GO


  CREATE TABLE USUARIO(
 IdUsuario SMALLINT PRIMARY KEY IDENTITY (1,1),
 IdPlataforma  SMALLINT FOREIGN KEY REFERENCES PLATAFORMA(idPlataforma),
 IdPermissao SMALLINT FOREIGN KEY REFERENCES PERMISSAO (idPermissao),
 nomeUsuario VARCHAR(30) NOT NULL, 
 emailUsuario VARCHAR(256) NOT NULL UNIQUE,
 senhaUsuario VARCHAR (30) NOT NULL
 );
 GO







