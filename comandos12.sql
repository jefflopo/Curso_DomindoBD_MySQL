DELIMITER $$

CREATE PROCEDURE sp_pessoa_save(
	p_desnome VARCHAR(256)
)
BEGIN 
	INSERT INTO tb_pessoas VALUES(NULL, p_desnome, NULL);
    SELECT * FROM tb_pessoas WHERE idpessoa = last_insert_id();
END $$

DELIMITER ;

CALL sp_pessoa_save('Massaharu');