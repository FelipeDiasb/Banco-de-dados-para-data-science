

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





--
INSERT INTO Cliente (Cliente_id,Telefone, Nome, Logradouro, Numero,Complemento, Bairro, Cidade,Estado,CEP, Referencia) VALUES
(1, '(11)1111-1111','Alexandre Santos','Rua das Palmeiras', '111',null,'Bela Vista','Guarulhos','SP','7123890','Em frente a escola' ),
(2, '(11)2222-2222','Bruna Dantas','Rua das Rosas',         '222', null,'Cantareira','São Paulo','SP','7124550',null ),
(3, '(11)3333-3333','Carlos Vieira','Rua das Avenças',     '333'  ,null,'Bela Vista','Guarulhos','SP','7123890',null ),
(4,'(11)4444-4444','julia Silva','Rua das Cravos', '444',         null,'Cantareira','Arujá','SP',               null,'Esquina do Mercado' ),
(5,'(11)5555-5555','Mariana Silva','Rua das Acácias', '555',      null,'Bela Vista','Arujá','SP',               null,null ),
(6,'(11)6666-6666','Laura Medeiros','Rua das Gardenias', '666',   null,'Cantareira', null,'SP','28040690',       null )

SELECT * FROM Pedido
SELECT * FROM Item_Pedido
SELECT * FROM Pizza
SELECT * FROM Cliente

INSERT INTO Pizza (Pizza_ID,nome, Descricao, Valor) VALUES
(1,'Portuguesa',null,15.00),
(2,'Provole',null,17.00),
(3,'4 Queijo',null,20.00),
(4,'Calabresa','Com cebola',17.00),
(5,'Escarola',null,22.50)

select nome from Pizza  /* todas as pizzas cadastradas*/

SELECT SUM(valor) FROM Pizza; /* valor total de pizza*/

select AVG(valor) from Pizza /* valor médios de pizzas*/

select * from Pizza
where Valor = (select MAX(valor) from Pizza)

ALTER TABLE Cliente
ALTER COLUMN telefone varchar(30);


  
    INSERT INTO Pedido (Pedido_ID, Cliente_ID, Data_Hora, Valor_Total) 
    VALUES (1, 1, '15/12/2023', 32.00);
    SET IDENTITY_INSERT Pedido OFF;

SET IDENTITY_INSERT Pedido ON
INSERT INTO Pedido (Pedido_ID,Cliente_ID,Data_Hora, Valor_Total) VALUES
(1,1, '15/12/2023', 32.00),
(2,2, '15/12/2023', 40.00),
(3,3, '15/12/2023', 22.00),
(4,1, '17/12/2023', 42.00),
(5,2, '18/12/2023', 45.00),

(6,3, '19/12/2023', 44.00),
(7,4, '19/12/2023', 72.00),
(8,6, '19/12/2023', 34.00)

ALTER TABLE pedido
ALTER COLUMN Data_hora date;



SELECT * from Item_Pedido


INSERT INTO Item_Pedido (Pedido_ID, Pizza_ID, Quantidade, Valor) VALUES
(1, 1, 1, 15.00),
(1, 4, 1, 17.00),
(2, 3, 2, 40.00),
(3, 5, 1, 22.00),
(4, 3, 1, 20.00),
(4, 5, 1, 22.00),
(5, 1, 3, 45.00),
(6, 5, 2, 44.00),
(7, 1, 2, 30.00),
(7, 3, 1, 20.00),
(7, 5, 1, 22.00),
(8, 4, 2, 34.00)

select * from Item_Pedido
select * from Pedido

SELECT 
PE.PEDIDO_ID,
PE.CLIENTE_ID,
CL.NOME,
CL.logradouro,
Cl.Cidade,
Pe.Data_hora,
Pe.Valor_Total

from Pedido Pe inner join Cliente Cl
on Pe.Cliente_ID = Cl.Cliente_id
where Pe.Data_Hora >= '18/12/2023' and Pe.Data_Hora <= '20/12/2023'


EXEC sp_rename 'Pedido', 'Valor', 'valor_total'; 


SELECT * FROM Pedido
SELECT * FROM Item_Pedido
SELECT * FROM Pizza
SELECT * FROM Cliente

