select * FROM tb_pessoas WHERE desnome LIKE 'J%';

SELECT * FROM tb_pessoas;

DELETE FROM tb_pessoas WHERE idpessoa IN (SELECT idpessoa FROM tb_pessoas WHERE desnome LIKE 'J%');