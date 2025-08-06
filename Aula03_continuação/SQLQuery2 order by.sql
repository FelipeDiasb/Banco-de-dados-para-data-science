

/* 05/08/2025 aula 03 continuação exercicio 03 */

select * from Funcionarios;

-- selecionado somente duas colunas 
select nome,salario from Funcionarios;

--selecionando os Top 5 funcionarios de registros 
select top 5 * from Funcionarios;

/*exibir todos os dados da tabela funcionarios, classificando os dados por nomes*/
 
 select * from Funcionarios
 order by NOME;

 /* exibir todos os funcionarios que tenha o salario maior ou igual a 5000mil*/

 select * from Funcionarios
 where SALARIO >=5000;



 /* exibir todos os funcionarios entre os códigos 5 e 8 */

 select * from Funcionarios
 where COD_FUNCIONARIO >= 5 and COD_FUNCIONARIO <=8 order by nome asc;

 /* os operadores condicionais são utilizados em consultas beseado em valores, números e datas*/

 select * from Funcionarios
 where SALARIO <2000;

 select * from Funcionarios
 where SALARIO <> 2500;

 /* where e and */

 select *from Funcionarios
 where SALARIO >3000 and COD_FUNCIONARIO <5;

  select *from Funcionarios
 where SALARIO >3000 or SALARIO >=6000;

 /* Exibir todos os funcionarios da tabela com código menores ou iguais a 5 ou salário maior ou igual a 600*/

 select * from Funcionarios
 where COD_FUNCIONARIO <=5 or SALARIO >=6000;

 /* uso de LIKE busca de textos*/
 --- inicando com uma letra especifica 
 select * from Funcionarios
 where NOME LIKE 'A%';

 ---- exibir nome da maria clara
 select * from Funcionarios
 where NOME LIKE 'Maria Clara'

 /* calculos no SQL  -   count, SUM, AVG, Max e MIN
  No SQL podemos aplicar funcões para fazer cálculos utilizando as principais funções do SQL
  também + - * /             */


  select 
  sum (salario) As 'Total de SALÁRIOS DA FOLHA ' FROM Funcionarios;

  SELECT 
  SUM (SALARIO) AS 'TOTAL DE SALARIO DA FOLHA', 
  AVG (SALARIO) AS 'MEDIA DE SALARIOS',
  MAX (SALARIO) AS 'MAIOR SALARIO',
  MIN (SALARIO) AS 'MENOR SALARIO',
  COUNT (COD_FUNCIONARIO) AS 'QTDE FUNCIONARIOS CADASTRADOS'
  FROM Funcionarios;

  /* FAZENDO CALCULOS NO SELECT */ 
  SELECT 
  2+6 AS 'SOMA',
  20-15 AS 'SUBTRAÇÃO',
  2*4 AS 'MULTIPLICAÇÃO',
  8/2 AS 'DIVISÃO'


  /* TRASENDO TEXTO NO SELECT */ 
  SELECT 
  'PARABÉNS PELA ANALISE REALIZADA SOBRE UMA BASE DE DADOS EM SQL_SERVER !!'






