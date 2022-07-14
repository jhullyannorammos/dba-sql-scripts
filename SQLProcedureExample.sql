use webapplication;

CREATE PROCEDURE verPreco (var smallint)
SELECT CONCAT('O preço do produto ', Nome_Produto, ' é ', Preco_Normal) AS Preco_Normal
FROM produto
WHERE idProduto = var;

DROP PROCEDURE verPreco;
CALL verPreco(1);