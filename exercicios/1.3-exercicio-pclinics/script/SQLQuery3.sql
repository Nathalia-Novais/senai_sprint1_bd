INSERT INTO PESSOA (nomePessoa)
VALUES ('SAULO'),('LUCAS');
GO

SELECT * FROM PESSOA 

INSERT INTO TELEFONE (idPessoa,numeroTelefone)
VALUES (1,'999'),(2,'888'),(1,'777')
GO

SELECT * FROM PESSOA

INSERT INTO EMAIL (idPessoa,end_email)
VALUES (1,'nathalia@gmail.com'),
(2,'n@gmail.com');
GO

SELECT * FROM EMAIL

INSERT INTO CNH (idPessoa, descricao)
VALUES (1,'132')

INSERT INTO CNH (idPessoa, descricao)
VALUES (2,'123')

SELECT * FROM CNH
SELECT * FROM EMAIL
SELECT * FROM TELEFONE
SELECT * FROM PESSOA







