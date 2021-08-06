USE OPTUSempresa
GO

INSERT INTO EMPRESA (nomeEmpresa)
VALUES ('empresa-1'),('empresa-2');

SELECT * FROM EMPRESA

INSERT INTO ARTISTA (idEmpresa,nomeArtista)
VALUES (1,'maria'),(2,'cintia'),(2,'leo');

SELECT * FROM ARTISTA


INSERT INTO ESTILO (nomeEstilo)
VALUES ('Sertanejo'),('pop');

SELECT * FROM ESTILO

INSERT INTO ALBUM (idEstilo,nomeAlbum)
VALUES (1,'sucesso'),(1,'cantando'),(2,'cult');

SELECT * FROM ALBUM

INSERT INTO PLATAFORMA (idAlbum,descricao)
VALUES (1,'SPOTIFY'),(2,'Youtube'),(3,'playmusica');

SELECT * FROM PLATAFORMA

INSERT INTO Usuario (idPlataforma,nomeUsuario,emailUsuario,senhaUsuario)
VALUES (4,'lucas','l@gmail.com','123'),(5,'jose','j@gmail.com','321'),(6,'lilian','li@gmail.com','456'),(4,'jorge','jo@gmail.com','678')

SELECT * FROM Usuario
SELECT * FROM PLATAFORMA
SELECT * FROM ALBUM
SELECT * FROM ESTILO
SELECT * FROM ARTISTA
SELECT * FROM EMPRESA



