DELETE FROM tb_funcionarios WHERE id = 1;

SELECT * FROM tb_funcionarios;

START TRANSACTION;

DELETE FROM tb_funcionarios;

ROLLBACK;

COMMIT;

INSERT INTO tb_pessoas values (NULL, 'José', 'M');

SELECT * FROM tb_pessoas;

TRUNCATE table tb_pessoas;