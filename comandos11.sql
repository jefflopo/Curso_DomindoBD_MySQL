USE hcode;

CREATE TABLE tb_pedidos (
	idpedido INT AUTO_INCREMENT NOT NULL,
    idpessoa INT NOT NULL,
    dtpedido DATETIME NOT NULL,
    vlpedido DEC(10,2),
    CONSTRAINT PK_pedidos PRIMARY KEY(idpedido),
    CONSTRAINT FK_pedidos FOREIGN KEY (idpessoa) REFERENCES tb_pessoas(idpessoa)
);

SELECT * FROM tb_pessoas;

INSERT INTO tb_pedidos VALUES (NULL, 1, CURRENT_DATE(), 22000.00);
INSERT INTO tb_pedidos VALUES (NULL, 1, CURRENT_DATE(), 5000);
INSERT INTO tb_pedidos VALUES (NULL, 1, CURRENT_DATE(), 7500);
INSERT INTO tb_pedidos VALUES (NULL, 1, CURRENT_DATE(), 3400.00);

INSERT INTO tb_pedidos VALUES (NULL, 2, CURRENT_DATE(), 1999.90);
INSERT INTO tb_pedidos VALUES (NULL, 2, CURRENT_DATE(), 569.99);
INSERT INTO tb_pedidos VALUES (NULL, 2, CURRENT_DATE(), 1234.59);
INSERT INTO tb_pedidos VALUES (NULL, 2, CURRENT_DATE(), 3590.99);

CREATE VIEW vw_pedidostotais
AS
	SELECT pes.desnome,
	SUM(ped.vlpedido) AS total,
	CONVERT(AVG(ped.vlpedido), DEC(10,2)) AS media,
	CONVERT(MIN(ped.vlpedido), DEC(10,2)) AS 'menor valor',
	CONVERT(MAX(ped.vlpedido), DEC(10,2)) AS 'maior valor',
	COUNT(*) AS 'total de pedidos'
	FROM tb_pedidos ped INNER JOIN tb_pessoas pes USING(idpessoa) 
	GROUP BY pes.idpessoa
	ORDER BY desnome;

SELECT * FROM vw_pedidostotais WHERE total > 8000;











