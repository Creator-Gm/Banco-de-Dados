



-----------ALTERANDO TABELAS ----------
---------------------------------------
-----------criar tabela-----------------

Use Dbguilhermemurilo
GO

CREATE TABLE Teste (
    Id_Teste INT PRIMARY KEY, --CHAVE PRIMARIA
    DESCRICAO VARCHAR(50) NULL
);

--------INSERINDO DADOS NA TABELA--------
INSERT INTO Teste (Id_Teste, descricao) 
VALUES (1,'Primeiro registro');

Select * FROM Teste;

 ----ADICIONANDO COLUNA-----
ALTER TABLE Teste
ADD Observacao VARCHAR(100) NULL;

INSERT INTO Teste (Id_Teste, descricao, Observacao)
VALUES
('3','Registro criado depois', 'Primeira observacao');

SELECT * FROM Teste;

UPDATE Teste
SET Observacao = 'Registro revisado pelo professor'
WHERE Id_Teste = 1;

-------DELETAR TABELAS
DROP TABLE Teste;
GO

SELECT * FROM Teste;

SELECT name From sys.tables;
GO







