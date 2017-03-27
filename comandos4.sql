SELECT * FROM tb_funcionarios WHERE cadastro > '2017-01-01';

UPDATE tb_funcionarios SET admissao = CURRENT_DATE() WHERE id = 1;

UPDATE tb_funcionarios SET admissao = DATE_ADD(CURRENT_DATE(), INTERVAL 60 DAY) WHERE id = 4;

SELECT DATEDIFF(admissao, CURRENT_DATE()) AS 'diferença de dias' FROM tb_funcionarios WHERE id = 4;

SELECT * FROM tb_funcionarios WHERE MONTH(admissao) = 3;