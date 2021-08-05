USE VETERINARIA_N
GO

INSERT INTO CLINICA (enderecoClinica,nomeClinica)
VALUES ('rua maria','veterinaria1'),('rua carlos','veterinaria2'),('rua vila','vet3');
GO

SELECT * FROM CLINICA 

INSERT INTO VETERINARIO (idClinica,nomeVeterinario)
VALUES (1,'MARIA'),(2,'João'),(3,'Pedro'),(1,'Luisa');
GO

SELECT * FROM VETERINARIO


INSERT INTO TIPO (nomeTipo)
VALUES ('Cachorro'),('Gato');

SELECT * FROM TIPO



INSERT INTO RACA (idTipo,nomeRaca)
VALUES (1,'Golden'),(1,'Labrador'),(2,'siames'),(1,'pitbull');
GO
SELECT * FROM RACA



INSERT INTO Dono (nomeDono)
VALUES ('Maria'),('marina'),('Nathalia'),('joao');
GO

SELECT * FROM Dono

INSERT INTO PET (idRaca,idDono,nascimentoPet,nomePet)
VALUES (1,1,'10/01','lili'),(1,2,'02/03','lulu'),(2,3,'03/04','lala'),(1,4,'02/03','lllll');
GO
SELECT * FROM PET

INSERT INTO ATENDIMENTO (idPet,idVeterinario,dataAtendimento)
VALUES (1,1,'10/01'),(2,2,'02/03'),(3,3,'03/04'),(4,1,'02/03');
GO
SELECT * FROM ATENDIMENTO
SELECT * FROM PET
SELECT * FROM Dono
SELECT * FROM RACA
SELECT * FROM TIPO
SELECT * FROM VETERINARIO
SELECT * FROM CLINICA









INSERT INTO ATENDIMENTO (idVeterinario,dataAtendimento)
VALUES (1,'01/02/21'),(2,'01/02/21'),(3,'01/02/21'),(1,'03/02/21');
GO

SELECT * FROM ATENDIMENTO



