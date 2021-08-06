USE OPTUSempresa
GO


INSERT INTO EMPRESA (nomeEmpresa,end_Empresa)
VALUES ('record','Avenida'), ('music','rua tal');
GO

INSERT INTO ARTISTA (IdEmpresa, nomeArtista) 
VALUES (1, 'Maria'), (2, 'lilian'), (2, 'Lucas');
GO

INSERT INTO ESTILO (nomeEstilo)
VALUES ('Rock'), ('Sertanejo');
GO

INSERT INTO VISIBILIDADE (descricao)
VALUES ('Ativo'), ('Inativo');
GO

INSERT INTO PLATAFORMA (descricao)
VALUES ('Spotify'), ('Youtube');
GO


INSERT INTO ALBUM (IdArtista,IdEstilo,IdVisibilidade,IdPlataforma, nomeAlbum, dataLancamento, tempo, Localizacao) 
VALUES (1,1,2,1, ' Musics', '01/10/21', '40m', 'SP'),
       (2,2,1,2,'lalalal', '02/03/21', '30m', 'SP'),
	   (3,1,1,1,'sing', '03/03/21', '1h', 'RJ');
GO


INSERT INTO PERMISSAO (tipoPermissao) 
VALUES ('Administrador'), ('Comum');
GO

INSERT INTO USUARIO (IdPlataforma,IdPermissao, nomeUsuario, emailUsuario, senhaUsuario) 
VALUES (2,1, 'Lucas', 'l@email.com', '123'),
	   (1,2, 'Maria', 'c@email.com', '456'),
	   (1,2, 'Mateus', 'ma@email.com', '789'),
	   (2,1,'Vania', 'j@email.com', '101');
GO






