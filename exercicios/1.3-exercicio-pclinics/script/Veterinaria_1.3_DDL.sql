CREATE DATABASE VETERINARIA_N;
GO

USE VETERINARIA_N;
GO

CREATE TABLE CLINICA(
idClinica SMALLINT PRIMARY KEY IDENTITY(1,1),
enderecoClinica VARCHAR(70), 
nomeClinica VARCHAR(20)
);
GO


 CREATE TABLE VETERINARIO(
 idVeterinario SMALLINT PRIMARY KEY IDENTITY (1,1),
 idClinica SMALLINT FOREIGN KEY REFERENCES CLINICA (idClinica),
 nomeVeterinario VARCHAR(20) NOT NULL,
 CRMV VARCHAR(6) NOT NULL
 );
 GO


 CREATE TABLE TIPO(
 idTipo SMALLINT PRIMARY KEY IDENTITY (1,1),
 nomeTipo VARCHAR(15) NOT NULL
 );
 GO

  CREATE TABLE RACA(
 idRaca SMALLINT PRIMARY KEY IDENTITY (1,1),
 idTipo SMALLINT FOREIGN KEY REFERENCES TIPO (idTipo),
 nomeRaca VARCHAR(16) NOT NULL
 );
 GO

 CREATE TABLE Dono(
 idDono SMALLINT PRIMARY KEY IDENTITY (1,1),
 nomeDono VARCHAR(20) NOT NULL
 );
 GO

 CREATE TABLE PET(
 idPet SMALLINT PRIMARY KEY IDENTITY (1,1),
 idRaca SMALLINT FOREIGN KEY REFERENCES RACA (idRaca),
 idDono SMALLINT FOREIGN KEY REFERENCES DONO (idDono),
 nascimentoPet VARCHAR(9) NOT NULL,
 nomePet VARCHAR(20) NOT NULL
 );
 GO


  CREATE TABLE ATENDIMENTO(
 idAtendimento SMALLINT PRIMARY KEY IDENTITY (1,1),
 idVeterinario SMALLINT FOREIGN KEY REFERENCES VETERINARIO (idVeterinario),
 idPet SMALLINT FOREIGN KEY REFERENCES PET (idPet),
 dataAtendimento VARCHAR(9) NOT NULL
 );
 GO





