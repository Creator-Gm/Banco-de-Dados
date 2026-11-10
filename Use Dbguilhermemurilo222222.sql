Use Dbguilhermemurilo
GO
CREATE TABLE Categorias(
Id_Categorias INT PRIMARY KEY,
nome VARCHAR(50) NOT NULL
);
select * from Categorias;
CREATE TABLE Filmes(
    id_filme INT PRIMARY KEY,
    Titulo VARCHAR(150) NOT NULL,
    ano_lancamento SMALLINT NOT NULL,
    duracao INt,
    classificacao_indicativa VARCHAR(10),
    sinopse VARCHAR(500),
    Id_Categorias INT NOT NULL,
    FOREIGN KEY (Id_Categorias) references Categorias(Id_Categorias)
);
select * from Filmes;
GO
INSERT INTO Categorias (Id_Categorias, nome) Values 
(1, 'Ação'),
(2, 'Comedia'),
(3, 'Drama'),
(4, 'Animação'),
(5, 'Ficção Cientifica'),
(6, 'Romance');
INSERT INTO Filmes
    (Id_Filme, titulo, ano_lancamento, duracao, classificacao_indicativa, sinopse, Id_Categorias)
VALUES
    (1, 'Matrix',               1999, 136, '14', 'Um programador descobre que a realidade é uma simulação.', 5),
    (2, 'Toy Story',            1995,  81, 'L',  'Brinquedos ganham vida quando ninguém está olhando.', 4),
    (3, 'Missão Impossível',    1996, 110, '14', 'Um agente tenta provar sua inocência após uma missão fracassada.', 1),
    (4, 'Meu Malvado Favorito', 2010,  95, 'L',  'Um vilão adota três meninas como parte de um plano.', 4),
    (5, 'Tropa de Elite',       2007, 115, '16', 'Um capitão procura alguém para assumir seu lugar na corporação.', 3),
    (6, 'Se Beber, Não Case!',  2009, 100, '16', 'Três amigos tentam lembrar o que aconteceu na despedida de solteiro.', 2),
    (7, 'Interestelar',         2014, 169, '10', 'Exploradores atravessam um buraco de minhoca para salvar a humanidade.', 5),
    (8, 'Central do Brasil',    1998, 110, '14', 'Uma ex-professora ajuda um menino a procurar o pai.', 3),
    (9, 'Os Incríveis',         2004, 115, 'L',  'Uma família de super-heróis tenta viver uma vida comum.', 4),
    (10, 'Titanic', 1997, 195, '12', 'Um jovem artista e uma jovem da alta sociedade vivem um romance durante a viagem do Titanic.', 6),

    (11, 'Diário de uma Paixão', 2004, 123, '12', 'Um casal enfrenta diferenças sociais e desafios ao longo de uma história de amor.', 6),

    (12, 'Como Eu Era Antes de Você', 2016, 110, '12','Uma jovem cria uma ligação especial com um homem que passa a depender de seus cuidados.', 6);
select * from Filmes;
