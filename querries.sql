-- Cálculo do preço por produto
DROP VIEW IF EXISTS vw_produto_total;

CREATE VIEW vw_produto_total AS
SELECT vendas.vendaid AS "ID da Venda",
	   produto.nome_produto AS "Nome do Produto",
	   produto.preco AS "Preço",
	   produto_vendido.quantidade "Quantidade Vendida",
	   produto.preco * produto_vendido.quantidade AS "Preço Total"
	   
	FROM loja_db.public.produto_vendido
	INNER JOIN loja_db.public.produto
		ON produto.produtoid = produto_vendido.produtoid
	INNER JOIN loja_db.public.vendas
		ON vendas.vendaid = produto_vendido.vendaid;
SELECT * FROM vw_produto_total

-- para calcular o preço de uma determinada venda (exemplo: venda 18)
SELECT SUM("Preço Total") AS soma_total
FROM vw_produto_total
WHERE "ID da Venda" = 18;
