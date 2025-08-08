SELECT * FROM TAB_2;


DROP TABLE TAB_2;
SELECT * INTO TAB_2
FROM FUNCIONARIO


SELECT COUNT(1) FROM TAB_2;


INSERT INTO TAB_2
                       (COD_FUNCIONARIO
					  ,NOME
					  ,SALARIO) VALUES

					  (6, 'JOSÉ ANTONIO', 2500.00),
					  (7, 'DIAS DAVILA', 6500.00),
					  (8, 'ANDRÉ SOUZA', 1850.00),
					  (9, 'MARCOS ANDRADE',3500.00),
					  (10,'PAULA SANTOS',4200.00)
  					  ;


					  DELETE T
					  FROM 
					      (
						   SELECT *
						           ,DUPRANK = ROW_NUMBER() OVER (
								              PARTITION BY COD_FUNCIONARIO
											  ORDER BY (SELECT NULL)
											  )
                            FROM TAB_2 ) AS T
											  WHERE DUPRANK >1;



											  SELECT COUNT(1) FROM TAB_2;

											  SELECT * FROM TAB_2 ORDER BY 1 ASC;


										SELECT 
											  COD_FUNCIONARIO
											  ,NOME
											  ,SALARIO
											  ,ROW_NUMBER() OVER (ORDER BY SALARIO DESC) RANK_SALARIO
										   FROM TAB_2;


											SELECT 
											  COD_FUNCIONARIO
											  ,NOME
											  ,SALARIO
											  ,ROW_NUMBER() OVER (PARTITION BY COD_FUNCIONARIO ORDER BY SALARIO DESC) RANK_SALARIO
										   FROM TAB_2;


										   USE RHSENAI

										   SELECT * FROM TAB_2;


										   SELECT COD_FUNCIONARIO
										         ,NOME
												 ,SALARIO
												 ,ROW_NUMBER() OVER (PARTITION BY COD_FUNCIONARIO ORDER BY SALARIO DESC) RANK_SALARIO
										  FROM TAB_2;


DELETE A
  FROM 
  ( 
     SELECT *
	 ,RANKDUP = ROW_NUMBER() OVER (PARTITION BY COD_FUNCIONARIO ORDER BY (SELECT NULL)
	 )
	 FROM TAB_2) A

	 WHERE RANKDUP >1;
										 
											  