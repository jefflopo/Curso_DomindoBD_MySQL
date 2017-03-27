SELECT * FROM tb_funcionarios ORDER BY nome;

SELECT * FROM tb_funcionarios ORDER BY 2;

SELECT * FROM tb_funcionarios ORDER BY salario DESC, nome ASC;

SELECT * FROM tb_funcionarios ORDER BY salario LIMIT 0, 5;

SELECT * FROM tb_funcionarios 
WHERE YEAR(admissao) = 2017 AND MONTH(admissao) = 5
ORDER BY salario LIMIT 0, 5;