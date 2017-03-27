INSERT INTO tb_pessoas VALUES (
	1, 'João', 'M'
);

INSERT INTO tb_pessoas(nome, sexo) VALUES ('Maria', 'F');

SELECT * FROM tb_pessoas;
SELECT * FROM tb_funcionarios;

INSERT INTO tb_pessoas(nome, sexo) VALUES
	('Divanei', 'M'),
	('Luiz', 'M'),
	('Djalma', 'M'),
	('Natali', 'F'),
	('Cristiane', 'F'),
	('Ana', 'F'),
	('Jaqueline', 'F');

INSERT INTO tb_funcionarios
SELECT id, nome, 950, CURRENT_DATE(), sexo, NULL FROM tb_pessoas;

SELECT COUNT(*) AS total FROM tb_funcionarios;

SELECT nome, salario AS atual, 
CONVERT(salario * 1.1, DEC(10,2)) AS 'SALARIO COM AUMENTO DE 10%'
FROM tb_funcionarios;

INSERT INTO tb_funcionarios(nome, salario, admissao, sexo, cadastro) VALUES (
	'Jefferson', 4800, CURRENT_DATE(), 'M', CURRENT_DATE() );
    
SELECT * FROM tb_funcionarios WHERE sexo != 'M';

UPDATE tb_funcionarios SET salario = salario * 1.4 WHERE id = 3;

SELECT * from tb_funcionarios where sexo = 'M' AND salario > 1500;
SELECT * from tb_funcionarios where sexo = 'F' OR salario > 1500;