USE OPTUSempresa
GO

SELECT * FROM EMPRESA;
SELECT * FROM ARTISTA;
SELECT * FROM ESTILO;
SELECT * FROM VISIBILIDADE;
SELECT * FROM PLATAFORMA;
SELECT * FROM ALBUM;
SELECT * FROM PERMISSAO;
SELECT * FROM USUARIO;



-- Listar todos os usu�rios administradores, sem exibir suas senhas

SELECT IdUsuario, tipoPermissao, nomeUsuario, emailUsuario FROM USUARIO
RIGHT JOIN PERMISSAO
ON PERMISSAO.IdPermissao = USUARIO.IdPermissao
WHERE tipoPermissao = 'Administrador'


-- Listar todos os �lbuns lan�ados ap�s o um determinado ano de lan�amento

SELECT * FROM ALBUM WHERE (dataLancamento > '03/03')


-- Listar os dados de um usu�rio atrav�s do e-mail e senha

SELECT * FROM USUARIO
WHERE emailUsuario = 'l@email.com' AND senhaUsuario = '123';


-- Listar todos os �lbuns ativos, mostrando o nome do artista e os estilos do �lbum 

SELECT  nomeArtista, nomeEstilo,nomeAlbum,descricao FROM ALBUM
LEFT JOIN ARTISTA
ON ARTISTA.IdArtista = ALBUM.IdArtista
LEFT JOIN ESTILO
ON ESTILO.IdEstilo = ALBUM.IdEstilo
LEFT JOIN VISIBILIDADE
ON VISIBILIDADE.IdVisibilidade = ALBUM.IdVisibilidade
WHERE descricao = 'Ativo';