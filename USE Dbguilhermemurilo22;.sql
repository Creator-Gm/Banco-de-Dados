USE Dbguilhermemurilo;
GO
CREATE TABLE Livros (
    isbn VARCHAR(20) PRIMARY KEY,
    titulo VARCHAR(150) NOT NULL,
    autor VARCHAR(100) NOT NULL,
    ano INT NOT NULL,
    editora VARCHAR(50)
);
SELECT * FROM Livros;

CREATE TABLE Exemplares (
    numero_tombo INT PRIMARY KEY,
    isbn_livro VARCHAR(20) NOT NULL,
    estado_conservacao VARCHAR(30) NOT NULL,
    FOREIGN KEY (isbn_livro) REFERENCES Livros
);
SELECT * FROM Exemplares;

CREATE TABLE Emprestimos (
    id_emprestimo INT PRIMARY KEY,
    id_estudante INT NOT NULL,
    numero_tombo INT NOT NULL,
    data_retirada VARCHAR(10) NOT NULL,
    data_prevista_devolucao VARCHAR(10) NOT NULL,
    data_efetiva_devolucao VARCHAR(10),
    FOREIGN KEY (id_estudante) REFERENCES Estudantes,
    FOREIGN KEY (numero_tombo) REFERENCES Exemplares
);
SELECT * FROM Emprestimos;
GO

INSERT INTO Livros (isbn, titulo, autor, ano, editora) VALUES 
('123321', 'livro1', 'okok', 2016, 'Alguma'),
('321123', 'livro2', 'kpop', 1999, 'Alguma'),
('213321', 'livro3', 'Paulo', 1999, 'Alguma'),
('213213', 'livro4', 'GM', 1999, 'Alguma'),
('232111', 'livro5', 'azeco', 1999, 'Alguma'),
('342211', 'livro6', 'José', 1999, 'Alguma'),
('123231', 'livro7', 'alguem', 1999, 'Alguma'),
('321333', 'livro8', 'morte', 1999, 'Alguma'),
('444444', 'livro9', 'Machado', 1999, 'Alguma'),
('123211', 'livro10', 'pequeno', 1999, 'Alguma');

INSERT INTO Exemplares (numero_tombo, isbn_livro, estado_conservacao)
VALUES
(1, '123321', 'Excelente'),
(2, '321123', 'Regular'),
(3, '213321', 'Bom'),
(4, '213213', 'Excelente'),
(5, '232111', 'Regular'),
(6, '342211', 'Bom'),
(7, '123231', 'Excelente'),
(8, '321333', 'Regular'),
(9, '444444', 'Bom'),
(10, '123211', 'Excelente');
GO
INSERT INTO Emprestimos (
    id_emprestimo,
    id_estudante,
    numero_tombo,
    data_retirada,
    data_prevista_devolucao,
    data_efetiva_devolucao
)
VALUES
(1, 1, 1, '20261010', '20261017', '20261015'),
(2, 2, 2, '20261011', '20261018', NULL),
(3, 3, 3, '20261012', '20261019', '20261019'),
(4, 4, 4, '20261013', '20261020', NULL),
(5, 5, 5, '20261014', '20261021', '20261020'),
(6, 6, 6, '20261015', '20261022', NULL),
(7, 7, 7, '20261016', '20261023', '20261022'),
(8, 8, 8, '20261017', '20261024', NULL),
(9, 9, 9, '20261018', '20261025', '20261024'),
(10, 10, 10, '20261019', '20261026', NULL);
GO
SELECT * FROM Emprestimos;
