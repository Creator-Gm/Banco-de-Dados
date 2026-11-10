USE Dbguilhermemurilo;
GO
CREATE TABLE Categorias_Cantina (
    id_categoria INT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL
);
SELECT * FROM Categorias_Cantina;

CREATE TABLE Produtos (
    id_produto INT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    preco DECIMAL(10,2) NOT NULL,
    id_categoria INT NOT NULL,
    FOREIGN KEY (id_categoria) REFERENCES Categorias_Cantina
);
SELECT * FROM Produtos;

CREATE TABLE Pedidos (
    id_pedido INT PRIMARY KEY,
    id_estudante INT NOT NULL,
    data_pedido VARCHAR(20) NOT NULL,
    valor_total DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (id_estudante) REFERENCES Estudantes
);
SELECT * FROM Pedidos;

CREATE TABLE Itens_Pedido (
    id_pedido INT,
    id_produto INT,
    quantidade INT NOT NULL,
    preco_cobrado DECIMAL(10,2) NOT NULL,
    PRIMARY KEY (id_pedido, id_produto),
    FOREIGN KEY (id_pedido) REFERENCES Pedidos,
    FOREIGN KEY (id_produto) REFERENCES Produtos
);
SELECT * FROM Itens_Pedido;
GO

INSERT INTO Categorias_Cantina (id_categoria, nome) VALUES (1, 'Salgados'), (2, 'Bebidas'), (3, 'Doces');

INSERT INTO Produtos (id_produto, nome, preco, id_categoria) VALUES 
(1, 'Coxinha Assada', 6.50, 1), (2, 'Suco de Laranja', 5.00, 2), (3, 'Pão de Queijo', 4.00, 1),
(4, 'Refrigerante Lata', 6.00, 2), (5, 'Pastel de Carne', 7.00, 1), (6, 'Água Mineral', 3.00, 2),
(7, 'Brownie de Chocolate', 5.50, 3), (8, 'Enrolado de Presunto', 6.50, 1), (9, 'Água de Coco', 5.50, 2),
(10, 'Bala de Goma', 2.00, 3);

INSERT INTO Pedidos (id_pedido, id_estudante, data_pedido, valor_total) VALUES 
(1, 1, '21/10/2026', 11.50), (2, 2, '21/10/2026', 9.00), (3, 3, '21/10/2026', 7.00),
(4, 4, '21/10/2026', 6.00), (5, 5, '21/10/2026', 5.50), (6, 6, '21/10/2026', 6.50),
(7, 7, '21/10/2026', 3.00), (8, 8, '21/10/2026', 5.50), (9, 9, '21/10/2026', 12.50),
(10, 10, '21/10/2026', 2.00);

INSERT INTO Itens_Pedido (id_pedido, id_produto, quantidade, preco_cobrado) VALUES 
(1, 1, 1, 6.50), (1, 2, 1, 5.00), (2, 3, 1, 4.00), (2, 2, 1, 5.00),
(3, 5, 1, 7.00), (4, 4, 1, 6.00), (5, 7, 1, 5.50), (6, 8, 1, 6.50),
(7, 6, 1, 3.00), (8, 9, 1, 5.50), (9, 1, 1, 6.50), (10, 10, 1, 2.00);
SELECT * FROM Itens_Pedido;
