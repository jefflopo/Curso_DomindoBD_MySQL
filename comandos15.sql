DELIMITER $$

CREATE FUNCTION fn_imposto_renda(
	pvlsalario DECIMAL (10,2)
)
RETURNS DEC(10,2)
BEGIN
	DECLARE vimposto DECIMAL(10,2);
    
    /*
		até 1903,98 não paga imposto
        1903,99 até 2826,65 paga 7,5% deduzir do imposto 142,80
        2826,66 até 3751,05 paga 15% deduzir do imposto 354,80
        3751,06 até 4664,68 paga 22,5% deduzir do imposto 636,13
        acima de 4664,68 para 27,5% deduzir do imposto 869,36
    */
    
    SET vimposto = CASE
		WHEN pvlsalario <= 1903.98 THEN 0
        WHEN pvlsalario >= 1903.99 AND pvlsalario <= 2826.65 THEN (pvlsalario * .075) - 142.80
        WHEN pvlsalario >= 2826.66 AND pvlsalario <= 3751.05 THEN (pvlsalario * .15) - 354.80
        WHEN pvlsalario >= 3751.06 AND pvlsalario <= 4664.68 THEN (pvlsalario * .225) - 636.13
        WHEN pvlsalario >= 4664.69 THEN (pvlsalario * .275) - 869.36
	END;
    
    return vimposto;
    
END $$

DELIMITER ;

SELECT *, fn_imposto_renda( func.vlsalario ) AS vlimposto
FROM tb_funcionarios func
INNER JOIN tb_pessoas pes USING(idpessoa);









