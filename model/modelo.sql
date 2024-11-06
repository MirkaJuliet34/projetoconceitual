CREATE DATABASE sistema_ecommerce;

USE sistema_ecommerce;

CREATE TABLE Cliente (
    cliente_id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    tipo ENUM('PF', 'PJ') NOT NULL,
    documento VARCHAR(20) NOT NULL,
    endereco VARCHAR(255) NOT NULL
);

CREATE TABLE Pedido (
    pedido_id INT PRIMARY KEY AUTO_INCREMENT,
    cliente_id INT,
    data_pedido DATETIME DEFAULT CURRENT_TIMESTAMP,
    status_pedido ENUM('Em processamento', 'Enviado', 'Entregue') NOT NULL,
    FOREIGN KEY (cliente_id) REFERENCES Cliente(cliente_id)
);

CREATE TABLE Forma_Pagamento (
    pagamento_id INT PRIMARY KEY AUTO_INCREMENT,
    tipo_pagamento VARCHAR(50) NOT NULL,
    detalhes VARCHAR(255)
);

CREATE TABLE Pedido_Forma_Pagamento (
    pedido_id INT,
    pagamento_id INT,
    PRIMARY KEY (pedido_id, pagamento_id),
    FOREIGN KEY (pedido_id) REFERENCES Pedido(pedido_id),
    FOREIGN KEY (pagamento_id) REFERENCES Forma_Pagamento(pagamento_id)
);

CREATE TABLE Entrega (
    entrega_id INT PRIMARY KEY AUTO_INCREMENT,
    pedido_id INT,
    status_entrega ENUM('Pendente', 'Em trânsito', 'Entregue') NOT NULL,
    codigo_rastreamento VARCHAR(50),
    FOREIGN KEY (pedido_id) REFERENCES Pedido(pedido_id)
);


INSERT INTO Cliente (nome, tipo, documento, endereco)
VALUES ('João Silva', 'PF', '123.456.789-00', 'Rua Exemplo, 123');

INSERT INTO Pedido (cliente_id, status_pedido)
VALUES (1, 'Em processamento');

INSERT INTO Pedido_Forma_Pagamento (pedido_id, pagamento_id)
VALUES (1, 1);

SELECT * FROM Forma_Pagamento;

INSERT INTO Forma_Pagamento (tipo_pagamento, detalhes)
VALUES ('Cartão de Crédito', 'Visa - Vencimento 30 dias');

SELECT * FROM Pedido;

INSERT INTO Pedido (cliente_id, status_pedido)
VALUES (1, 'Em processamento');

INSERT INTO Pedido_Forma_Pagamento (pedido_id, pagamento_id)
VALUES (1, 1);

INSERT INTO Entrega (pedido_id, status_entrega, codigo_rastreamento)
VALUES (1, 'Em trânsito', 'ABC123456');








