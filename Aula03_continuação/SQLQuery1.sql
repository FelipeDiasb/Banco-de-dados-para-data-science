
/* SCRIPT SQL PARA CRIAÇÃO DE BANCO DE DADOS RHSENAI*/

CREATE DATABASE RHSENAI;  

USE RHSENAI;

CREATE TABLE Funcionarios(
COD_FUNCIONARIO INT NOT NULL,
NOME VARCHAR(50) NOT NULL,
SALARIO DECIMAL(18,0) NULL
);

/* FAZER BACKUP DO BANCO DE DADOS*/

BACKUP DATABASE RHSENAI
TO DISK = 'D:\BKP\RHSENAI.BAK'
WITH FORMAT,
MEDIANAME = 'D:\BKP',
NAME = 'BACKUP FULL DO RHSENAI_FELIPE';

/* EXCLUSÃO DO BANCO DE DADOS*/ 
-- USAR OUTRO BANCO DE DADOS*/
USE master;

-- desenexar o banco de dados 
EXEC sp_detach_db 'RHSENAI', TRUE; 
DROP DATABASE RHSENAI; 


/* RESTAURANDO BANCO DE DADOS VIA SCRIPT SQL */

RESTORE DATABASE RHSENAI
FROM DISK = 'D:\BKP\RHSENAI.BAK'
WITH REPLACE;


/* CADASTRO DE FUNCIONARIOS  - BANCO DE DADOS RHSENAI*/ 

USE RHSENAI
SELECT * FROM Funcionarios;

/* verificação dos campos da tabela observe somete os campos 
ainda sem registro*/


use RHSENAI

--cadastro efetivo dos dados

insert into Funcionarios
(COD_FUNCIONARIO,NOME,SALARIO)values
( 1,'Carlos Dias', 3520.00),
(2,'Maria Clara',5600.00),
(3,'Antunes Silveira',3520.00),
(4, 'Silvio Prado',3120.00),
(5, 'Andre Souza', 4800.00);


Select * from Funcionarios;

/*consulta somete os nomes*/ 

select nome, salario from Funcionarios;


/* somete os nomes dos funcionarios COMPLETO */ 

select nome as 'NOME COMPLETO DO FUNCIONARIO' FROM Funcionarios;


/* SALARIOS MAIOR QUE 4000 MIL*/ 
SELECT * FROM Funcionarios 
WHERE SALARIO> 4000


Select * from Funcionarios;

USE RHSENAI;


insert into Funcionarios
(COD_FUNCIONARIO,NOME,SALARIO)values
( 6,'José Antonio ',2500.00),
(7,'Dias Davila',6500.00),
(8,'André Souza',1850.00),
(9, 'Marcos Andrades',3500.00),
(10, 'Paula Santos', 4200.00);

Select * from Funcionarios;


/* FAZER BACKUP DO BANCO DE DADOS*/

BACKUP DATABASE RHSENAI
TO DISK = 'D:\BKP\RHSENAI.BAK'
WITH FORMAT,
MEDIANAME = 'D:\BKP',
NAME = 'BACKUP FULL DO RHSENAI_FELIPE';



/* selecione um funcionario onde o id é 5*/

SELECT nome
FROM Funcionarios
WHERE COD_FUNCIONARIO =6;

/*Selecione todos os dados de qualquer aluno cujo sobrenome seja Dias.*/

SELECT *
FROM Funcionarios
WHERE nome = 'carlos Dias';



select * from Funcionarios;


/* Selecione todos os dados de qualquer aluno cujo sobrenome seja D.*/ 

SELECT NOME
FROM Funcionarios
WHERE nome LIKE 'D%';



use RHSENAI;


--************* Aula 03 exercicio 3 -----------

