SELECT * FROM tb_funcionarios WHERE nome LIKE '%a%';
SELECT * FROM tb_funcionarios WHERE nome NOT LIKE 'J%';
SELECT * FROM tb_funcionarios WHERE nome LIKE '%a';
SELECT * FROM tb_funcionarios WHERE nome LIKE '__c%';

SELECT * FROM tb_funcionarios WHERE salario BETWEEN 1000 AND 2000;

SELECT * FROM tb_funcionarios WHERE SOUNDEX(nome) = SOUNDEX('Luis');


