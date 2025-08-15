

CREATE TABLE Pizza (
    Pizza_ID INT NOT NULL,
    nome VARCHAR(30) NOT NULL,
    Descricao CHAR(1) NOT NULL,
    Valor DECIMAL(4,2) NOT NULL
);


alter table Cliente
add primary key (Cliente_id)



drop table Pizza


CREATE TABLE Pizza (
    Pizza_ID INT NOT NULL,
    nome VARCHAR(30) NOT NULL,
    Descricao CHAR(1) NOT NULL,
    Valor DECIMAL(4,2) NOT NULL
	primary Key (pizza_id)
);

CREATE TABLE Pedido (
    Pedido_ID INT PRIMARY KEY IDENTITY(1,1),
    Cliente_ID INT NOT NULL,
    Data_Hora DATETIME NOT NULL,
    Valor_Total DECIMAL(10,2) NOT NULL
);

CREATE TABLE Item_Pedido (
    Item_PedidoID INT PRIMARY KEY IDENTITY(1,1),
    Pedido_ID INT NOT NULL,
    Pizza_ID INT NOT NULL,
    Quantidade INT NOT NULL,
    Valor DECIMAL(18,0) NOT NULL

);

--RELACIONANENTOS


/* CRIAÇÃO DA CONSTRAINT FK_PEDIDO_CLIENTE*/

ALTER TABLE Pedido
ADD CONSTRAINT fk_Pedido_Cliente
FOREIGN KEY (Cliente_ID) REFERENCES Cliente (Cliente_ID)

/* finalizado*/
ALTER TABLE Item_pedido
ADD CONSTRAINT fk_Item_pedido_Pedido
FOREIGN KEY (Pedido_id) REFERENCES Pedido (Pedido_id)

ALTER TABLE Item_pedido
ADD CONSTRAINT fk_Item_pedido_Pizza
FOREIGN KEY (Pizza_id) REFERENCES Pizza (Pizza_id)

SELECT * FROM Pedido
SELECT * FROM Item_Pedido
SELECT * FROM Pizza
SELECT * FROM Cliente



--
INSERT INTO Cliente (cliente_id,Telefone,Nome, Logradouro, Numero,Complemento, Bairro, Cidade,Estado,CEP, Referencia) VALUES
(1,'(11)1111-1111','Alexandre Santos','Rua das Palmeiras', '111',null,'Bela Vista','Guarulhos','SP','7123890','Em frente a escola' ),
(2,'(11)2222-2222','Bruna Dantas','Rua das Rosas', '222',null,'Cantareira','São Paulo','SP','7124550',null ),
(3,'(11)2222-2222','Alexandre Santos','Rua das Palmeiras', '111',null,'Bela Vista','Guarulhos','SP','7123890',null ),
(4,'(11)2222-2222','Alexandre Santos','Rua das Palmeiras', '111',null,'Bela Vista','Guarulhos','SP','7123890','Em frente a escola' ),
(5,'(11)2222-2222','Alexandre Santos','Rua das Palmeiras', '111',null,'Bela Vista','Guarulhos','SP','7123890','Em frente a escola' ),
(6,'(11)2222-2222','Alexandre Santos','Rua das Palmeiras', '111',null,'Bela Vista','Guarulhos','SP','7123890','Em frente a escola' ),


INSERT INTO Pizza (nome, Descricao, Valor) VALUES
('');


INSERT INTO Pedido (ClienteID, DataHora, ValorTotal) VALUES
(1, '2025-08-10 19:30:00', 120.00),
(2, '2025-08-10 20:15:00', 75.00),
(1, '2025-08-11 18:45:00', 90.00),
(3, '2025-08-11 21:00:00', 55.00);

-- Inserir itens dos pedidos
INSERT INTO ItemPedido (PedidoID, PizzaID, Quantidade, ValorUnitario) VALUES
-- Pedido 1 (João Silva)
(1, 1, 2, 50.00),
(1, 2, 1, 35.00),
-- Pedido 2 (Maria Oliveira)
(2, 3, 1, 55.00),
(2, 2, 1, 35.00),
-- Pedido 3 (João Silva)
(3, 4, 2, 40.00),
-- Pedido 4 (Carlos Pereira)
