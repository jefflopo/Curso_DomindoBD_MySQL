CREATE TABLE tb_funcionarios(
	id INT,
    nome VARCHAR(100),
    salario DECIMAL(10, 2),
    admissao DATE,
    sexo ENUM('F', 'M'),
    cadastro TIMESTAMP DEFAULT CURRENT_TIMESTAMP()
);

INSERT INTO tb_funcionarios VALUES(
	1, 'Pedro Henrique', 4999.99, '2017-01-01', 'M', NULL
);

SELECT * FROM tb_funcionarios;
SELECT * FROM tb_pessoas;

USE hcode;

UPDATE tb_funcionarios SET salario = salario * 1.1;

DESCRIBE tb_funcionarios;
DESCRIBE tb_pessoas;

DELETE FROM tb_funcionarios;
DELETE FROM tb_pessoas;