USE Dbguilhermemurilo;
GO

CREATE DATABASE SaborDaTerraEntregas;
GO
USE SaborDaTerraEntregas;
GO

CREATE TABLE Clientes (
    cliente_id INT PRIMARY KEY,
    nome VARCHAR(100),
    telefone VARCHAR(20)
);
GO



CREATE TABLE Veiculos (
    veiculo_id INT PRIMARY KEY,
    codigo VARCHAR(10),
    placa VARCHAR(8) UNIQUE,
    modelo VARCHAR(50),
    capacidade DECIMAL(10,2)
);
GO



CREATE TABLE Motoristas (
    motorista_id INT PRIMARY KEY,
    matricula VARCHAR(10) UNIQUE,
    nome VARCHAR(100),
    telefone VARCHAR(20)
);
GO



CREATE TABLE Pedidos (
    pedido_id INT PRIMARY KEY,
    cliente_id INT,
    data_pedido DATE,
    valor_total DECIMAL(10,2),

    FOREIGN KEY (cliente_id)
    REFERENCES Clientes(cliente_id)
);
GO



CREATE TABLE Entregas (
    entrega_id INT PRIMARY KEY,
    codigo VARCHAR(10),
    pedido_id INT UNIQUE,
    veiculo_id INT,
    motorista_id INT,
    data_saida DATE,
    previsao_entrega DATE,
    data_efetiva DATE,
    status VARCHAR(20),

    FOREIGN KEY (pedido_id)
    REFERENCES Pedidos(pedido_id),

    FOREIGN KEY (veiculo_id)
    REFERENCES Veiculos(veiculo_id),

    FOREIGN KEY (motorista_id)
    REFERENCES Motoristas(motorista_id)
);
GO




INSERT INTO Clientes (cliente_id, nome, telefone)
VALUES
(1, 'Padaria Pão Dourado', '(14) 99811-1010'),
(2, 'Mercado Bom Preço', '(14) 99722-2020'),
(3, 'Restaurante Vila Verde', '(14) 99633-3030');
GO



INSERT INTO Veiculos (veiculo_id, codigo, placa, modelo, capacidade)
VALUES
(1, 'V-01', 'ABC1D23', 'Fiat Fiorino', 650),
(2, 'V-02', 'EFG4H56', 'Mercedes Sprinter', 2000);
GO



INSERT INTO Motoristas (motorista_id, matricula, nome, telefone)
VALUES
(1, 'MAT-1001', 'Carlos Henrique Souza', '(14) 99811-2233'),
(2, 'MAT-1002', 'Fernanda Lima Alves', '(14) 99722-4455'),
(3, 'MAT-1003', 'João Pedro Martins', '(14) 99633-7788');
GO




INSERT INTO Pedidos (pedido_id, cliente_id, data_pedido, valor_total)
VALUES
(101, 1, '2026-10-19', 480.00),
(102, 2, '2026-10-26', 1290.50),
(103, 3, '2026-10-23', 735.90);
GO



INSERT INTO Entregas (
    entrega_id,
    codigo,
    pedido_id,
    veiculo_id,
    motorista_id,
    data_saida,
    previsao_entrega,
    data_efetiva,
    status
)
VALUES
(1, 'ENT-0001', 101, 1, 1,
 '2026-10-20', '2026-10-22', '2026-10-21', 'Entregue'),

(2, 'ENT-0002', 102, 2, 2,
 '2026-10-27', '2026-10-29', NULL, 'Em rota'),

(3, 'ENT-0003', 103, 1, 3,
 '2026-10-24', '2026-10-25', '2026-10-27', 'Entregue');
GO




SELECT * FROM Clientes;
SELECT * FROM Veiculos;
SELECT * FROM Motoristas;
SELECT * FROM Pedidos;
SELECT * FROM Entregas;
GO



SELECT
    Pedidos.pedido_id,
    Clientes.nome AS cliente,
    Motoristas.nome AS motorista,
    Veiculos.placa,
    Entregas.status

FROM Entregas

INNER JOIN Pedidos
ON Entregas.pedido_id = Pedidos.pedido_id

INNER JOIN Clientes
ON Pedidos.cliente_id = Clientes.cliente_id

INNER JOIN Motoristas
ON Entregas.motorista_id = Motoristas.motorista_id

INNER JOIN Veiculos



ON Entregas.veiculo_id = Veiculos.veiculo_id;
GO

SELECT *
FROM Entregas
WHERE status = 'Em rota';
GO




SELECT
    Pedidos.pedido_id,
    Clientes.nome AS cliente,
    Motoristas.nome AS motorista,
    Veiculos.placa

FROM Entregas

INNER JOIN Pedidos
ON Entregas.pedido_id = Pedidos.pedido_id

INNER JOIN Clientes
ON Pedidos.cliente_id = Clientes.cliente_id

INNER JOIN Motoristas
ON Entregas.motorista_id = Motoristas.motorista_id

INNER JOIN Veiculos
ON Entregas.veiculo_id = Veiculos.veiculo_id

WHERE Pedidos.pedido_id = 102;
GO




SELECT
    Entregas.codigo,
    Entregas.pedido_id,
    Entregas.previsao_entrega,
    Entregas.data_efetiva,
    Entregas.status

FROM Entregas

WHERE
    Entregas.data_efetiva > Entregas.previsao_entrega

    OR

    (Entregas.data_efetiva IS NULL
    AND Entregas.previsao_entrega < GETDATE());
GO