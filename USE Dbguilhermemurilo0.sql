USE Dbguilhermemurilo;
GO
CREATE TABLE Palcos (
    id_palco INT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    capacidade INT NOT NULL
);

CREATE TABLE Responsaveis_Palco (
    id_responsavel INT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    id_palco INT NOT NULL,
    FOREIGN KEY (id_palco) REFERENCES Palcos(id_palco)
);

CREATE TABLE Apresentacoes (
    id_apresentacao INT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    estilo VARCHAR(50) NOT NULL,
    duracao_minutos INT NOT NULL,
    classificacao_etaria VARCHAR(10) NOT NULL,
    id_palco INT NOT NULL,
    data_hora VARCHAR(20) NOT NULL,
    FOREIGN KEY (id_palco) REFERENCES Palcos(id_palco)
);

CREATE TABLE Participacoes_Festival (
    id_estudante INT,
    id_apresentacao INT,
    papel VARCHAR(50) NOT NULL,
    PRIMARY KEY (id_estudante, id_apresentacao),
    FOREIGN KEY (id_estudante) REFERENCES Estudantes,
    FOREIGN KEY (id_apresentacao) REFERENCES Apresentacoes(id_apresentacao)
);

INSERT INTO Palcos (id_palco, nome, capacidade) VALUES 
(1, 'Palco Alfa', 100), (2, 'Palco Beta', 100), (3, 'Palco Gama', 100), (4, 'Palco Delta', 100), (5, 'Palco Epsilon', 100),
(6, 'Palco Zeta', 100), (7, 'Palco Eta', 100), (8, 'Palco Theta', 100), (9, 'Palco Iota', 100), (10, 'Palco Kappa', 100);

INSERT INTO Responsaveis_Palco (id_responsavel, nome, id_palco) VALUES 
(1, 'Responsavel', 1), (2, 'Responsavel', 2), (3, 'Responsavel', 3), (4, 'Responsavel', 4), (5, 'Responsavel', 5),
(6, 'Responsavel', 6), (7, 'Responsavel', 7), (8, 'Responsavel', 8), (9, 'Responsavel', 9), (10, 'Responsavel', 10);

INSERT INTO Apresentacoes (id_apresentacao, nome, estilo, duracao_minutos, classificacao_etaria, id_palco, data_hora) VALUES 
(1, 'Apresentacao', 'Estilo', 30, 'Livre', 1, '21/10/2026'),
(2, 'Apresentacao', 'Estilo', 30, 'Livre', 2, '21/10/2026'),
(3, 'Apresentacao', 'Estilo', 30, 'Livre', 3, '21/10/2026'),
(4, 'Apresentacao', 'Estilo', 30, 'Livre', 4, '21/10/2026'),
(5, 'Apresentacao', 'Estilo', 30, 'Livre', 5, '21/10/2026'),
(6, 'Apresentacao', 'Estilo', 30, 'Livre', 6, '21/10/2026'),
(7, 'Apresentacao', 'Estilo', 30, 'Livre', 7, '21/10/2026'),
(8, 'Apresentacao', 'Estilo', 30, 'Livre', 8, '21/10/2026'),
(9, 'Apresentacao', 'Estilo', 30, 'Livre', 9, '21/10/2026'),
(10, 'Apresentacao', 'Estilo', 30, 'Livre', 10, '21/10/2026');

INSERT INTO Participacoes_Festival (id_estudante, id_apresentacao, papel) VALUES 
(1, 1, 'Papel'), (2, 2, 'Papel'), (3, 3, 'Papel'), (4, 4, 'Papel'), (5, 5, 'Papel'),
(6, 6, 'Papel'), (7, 7, 'Papel'), (8, 8, 'Papel'), (9, 9, 'Papel'), (10, 10, 'Papel');

SELECT * FROM Palcos;
SELECT * FROM Responsaveis_Palco;
SELECT * FROM Apresentacoes;
SELECT * FROM Participacoes_Festival;
