USE VETERINARIA_N
GO

INSERT INTO CLINICA (enderecoClinica,nomeClinica)
VALUES ('rua maria','veterinaria1'),('rua carlos','veterinaria2'),('rua vila','vet3');
GO


INSERT INTO VETERINARIO (idClinica,nomeVeterinario,CRMV)
VALUES (1,'MARIA','444-SP'),(2,'João','553-MG'),(3,'Pedro','888-RJ'),(1,'Luisa','999-SP');
GO


INSERT INTO TIPO (nomeTipo)
VALUES ('Cachorro'),('Gato');



INSERT INTO RACA (idTipo,nomeRaca)
VALUES (1,'Golden'),(1,'Labrador'),(2,'siames'),(1,'pitbull');
GO


INSERT INTO Dono (nomeDono)
VALUES ('Maria'),('marina'),('Nathalia'),('joao');
GO


INSERT INTO PET (idRaca,idDono,nascimentoPet,nomePet)
VALUES (1,1,'10/01','lili'),(1,2,'02/03','lulu'),(2,3,'03/04','lala'),(1,4,'02/03','lllll');
GO


INSERT INTO ATENDIMENTO (idPet,idVeterinario,dataAtendimento)
VALUES (1,1,'10/01'),(2,2,'02/03'),(3,3,'03/04'),(4,1,'02/03');
GO











