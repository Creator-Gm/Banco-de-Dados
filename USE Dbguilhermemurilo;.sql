USE Dbguilhermemurilo;
GO
CREATE TABLE Estudantes ( 
    id_estudante INT PRIMARY KEY, 
    nome VARCHAR(100), 
    turma VARCHAR(30) 
);
SELECT * FROM Estudantes;


CREATE TABLE Musica ( 
    id_musica INT PRIMARY KEY, 
    titulo VARCHAR(100) NOT NULL, 
    artista VARCHAR(100) NOT NULL, 
    album VARCHAR(100), 
    duracao INT NOT NULL 
);
SELECT * FROM Musica;


CREATE TABLE Sugestoes( 
    id_estudante INT, 
    id_musica INT, 
    data_sugestao VARCHAR(10) NOT NULL, 
    nota INT, 
    PRIMARY KEY (id_estudante, id_musica), 
    FOREIGN KEY (id_estudante) REFERENCES Estudantes, 
    FOREIGN KEY (id_musica) REFERENCES Musica(id_musica) 
);
SELECT * FROM Sugestoes;
GO
INSERT INTO Musica (id_musica, titulo, artista, album, duracao) VALUES 
(1, 'Blinding Lights', 'The Weeknd', 'After Hours', 200),
(2, 'Shape of You', 'Ed Sheeran', 'Divide', 233),
(3, 'Believer', 'Imagine Dragons', 'Evolve', 204),
(4, 'As It Was', 'Harry Styles', 'Harrys House', 167),
(5, 'Stay', 'Kid LAROI & Justin Bieber', 'F*CK LOVE 3', 141),
(6, 'Flowers', 'Miley Cyrus', 'Endless Summer', 200),
(7, 'Perfect', 'Ed Sheeran', 'Divide', 263),
(8, 'Starboy', 'The Weeknd', 'Starboy', 230),
(9, 'Dynamite', 'BTS', 'Be', 199),
(10, 'Bad Guy', 'Billie Eilish', 'WWAFA, WDWG?', 194);

INSERT INTO Sugestoes (id_estudante, id_musica, data_sugestao, nota) VALUES 
(1, 1, '21/10/2026', 5), (2, 2, '21/10/2026', 4), (3, 3, '21/10/2026', 5),
(4, 4, '21/10/2026', 3), (5, 5, '21/10/2026', 4), (6, 6, '21/10/2026', 5),
(7, 7, '21/10/2026', 5), (8, 8, '21/10/2026', 2), (9, 9, '21/10/2026', 4),
(10, 10, '21/10/2026', 5);
SELECT * FROM Sugestoes;
