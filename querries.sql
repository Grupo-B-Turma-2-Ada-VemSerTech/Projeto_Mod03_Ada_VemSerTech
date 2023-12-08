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


-- para mostrar o nome do vendendor, nome do cliente, o id da venda e o valor total
DROP VIEW IF EXISTS vw_vendas_vendedor;

CREATE VIEW vw_vendas_vendedor AS
SELECT vendedor.nome_vendedor AS "Nome Vendedor",
	   cliente.nome_cliente AS "Nome Cliente",
	   vendas.vendaid AS "Venda ID",
	   vendas.valor_total AS "Total da Compra"
	   
	FROM loja_db.public.vendas
	INNER JOIN loja_db.public.vendedor
		ON vendas.vendedorid = vendedor.vendedorid
	INNER JOIN loja_db.public.cliente
		ON vendas.clienteid = cliente.clienteid;
SELECT * FROM vw_vendas_vendedor
order by "Nome Vendedor" 