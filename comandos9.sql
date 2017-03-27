SELECT * 
FROM tb_funcionarios func
INNER JOIN tb_pessoas pes ON func.idpessoa = pes.idpessoa;

SELECT * FROM tb_funcionarios 
INNER JOIN tb_pessoas USING(idpessoa);

INSERT INTO tb_pessoas VALUES (NULL, 'Glaucio', NULL);

SELECT * FROM tb_pessoas a
LEFT JOIN tb_funcionarios b ON a.idpessoa = b.idpessoa;

SELECT * FROM tb_pessoas a
RIGHT JOIN tb_funcionarios b ON a.idpessoa = b.idpessoa;

