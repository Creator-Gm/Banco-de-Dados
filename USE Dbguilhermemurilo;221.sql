USE Dbguilhermemurilo;
GO
CREATE TABLE Usuarios (
    id_usuario INT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    apelido VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL,
    data_nascimento VARCHAR(10) NOT NULL
);

CREATE TABLE Posts (
    id_post INT PRIMARY KEY,
    texto VARCHAR(280) NOT NULL,
    data_hora_publicacao VARCHAR(20) NOT NULL,
    id_usuario INT NOT NULL,
    FOREIGN KEY (id_usuario) REFERENCES Usuarios(id_usuario)
);

CREATE TABLE Seguidores (
    id_seguidor INT,
    id_seguido INT,
    PRIMARY KEY (id_seguidor, id_seguido),
    FOREIGN KEY (id_seguidor) REFERENCES Usuarios(id_usuario),
    FOREIGN KEY (id_seguido) REFERENCES Usuarios(id_usuario)
);

INSERT INTO Usuarios (id_usuario, nome, apelido, email, data_nascimento) VALUES 
(1, 'Nome do Aluno Um', 'aluno1', 'aluno1@escola.com', '01/01/2000'),
(2, 'Nome do Aluno Dois', 'aluno2', 'aluno2@escola.com', '01/01/2000'),
(3, 'Nome do Aluno Tres', 'aluno3', 'aluno3@escola.com', '01/01/2000'),
(4, 'Nome do Aluno Quatro', 'aluno4', 'aluno4@escola.com', '01/01/2000'),
(5, 'Nome do Aluno Cinco', 'aluno5', 'aluno5@escola.com', '01/01/2000'),
(6, 'Nome do Aluno Seis', 'aluno6', 'aluno6@escola.com', '01/01/2000'),
(7, 'Nome do Aluno Sete', 'aluno7', 'aluno7@escola.com', '01/01/2000'),
(8, 'Nome do Aluno Oito', 'aluno8', 'aluno8@escola.com', '01/01/2000'),
(9, 'Nome do Aluno Nove', 'aluno9', 'aluno9@escola.com', '01/01/2000'),
(10, 'Nome do Aluno Dez', 'aluno10', 'aluno10@escola.com', '01/01/2000');

INSERT INTO Posts (id_post, texto, data_hora_publicacao, id_usuario) VALUES 
(1, 'Texto de teste do post um', '21/10/2026', 1),
(2, 'Texto de teste do post dois', '21/10/2026', 2),
(3, 'Texto de teste do post tres', '21/10/2026', 3),
(4, 'Texto de teste do post quatro', '21/10/2026', 4),
(5, 'Texto de teste do post cinco', '21/10/2026', 5),
(6, 'Texto de teste do post seis', '21/10/2026', 6),
(7, 'Texto de teste do post sete', '21/10/2026', 7),
(8, 'Texto de teste do post oito', '21/10/2026', 8),
(9, 'Texto de teste do post nove', '21/10/2026', 9),
(10, 'Texto de teste do post dez', '21/10/2026', 10);

INSERT INTO Seguidores (id_seguidor, id_seguido) VALUES 
(1, 2), (2, 3), (3, 4), (4, 5), (5, 6), (6, 7), (7, 8), (8, 9), (9, 10), (10, 1);

SELECT * FROM Usuarios;
SELECT * FROM Posts;
SELECT * FROM Seguidores;
