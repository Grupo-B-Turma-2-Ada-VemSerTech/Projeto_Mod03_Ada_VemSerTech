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
--SELECT * FROM vw_produto_total

-- Cálculo to total por compra
DROP VIEW IF EXISTS vw_venda_total;
CREATE VIEW vw_venda_total AS
SELECT vw_produto_total."ID da Venda" AS vendaid,
		SUM("Preço Total") AS valor_total
FROM vw_produto_total
GROUP BY vw_produto_total."ID da Venda"
ORDER BY vw_produto_total."ID da Venda";

-- View da tabela de venda com o valor total da venda calculada
CREATE VIEW vw_valor_venda AS
	SELECT  vendas.vendaid,
			vendas.vendedorid,
			vendas.clienteid,
			vw_venda_total.valor_total,
			vendas.tipo_pagamento,
			vendas.data
	FROM vendas
		INNER JOIN vw_venda_total
		ON vendas.vendaid = vw_venda_total.vendaid;


-- para mostrar o nome do vendendor, nome do cliente, o id da venda e o valor total
DROP VIEW IF EXISTS vw_vendas_vendedor;

CREATE VIEW vw_vendas_vendedor AS
SELECT vendedor.nome_vendedor AS "Nome Vendedor",
	   cliente.nome_cliente AS "Nome Cliente",
	   vendas.vendaid AS "Venda ID",
	   vw_venda_total.valor_total AS "Total da Compra"
	   
	FROM loja_db.public.vendas
	INNER JOIN vw_venda_total
		ON vendas.vendaid = vw_venda_total.vendaid
	INNER JOIN loja_db.public.vendedor
		ON vendas.vendedorid = vendedor.vendedorid
	INNER JOIN loja_db.public.cliente
		ON vendas.clienteid = cliente.clienteid;
--SELECT * FROM vw_vendas_vendedor
--order by "Nome Vendedor" 

-- quantidade de itens por categoria
CREATE VIEW vw_item_categoria AS
SELECT categoria, count(*) AS "Quantidade de Itens" FROM produto group by produto.categoria


-- BALANÇO DAS VENDAS
CREATE VIEW vm_qtd_produtos_vendidos AS
	SELECT produtoid, sum(quantidade) AS total_vendido from produto_vendido
		group by produtoid
		order by produtoid;

CREATE VIEW vw_balanco_produtos_vendidos AS
	SELECT produto.produtoid,
		   produto.fornecedorid,
		   produto.quantidade_estoque AS quantidade_inicial,
		   vm_qtd_produtos_vendidos.total_vendido,
		   (produto.quantidade_estoque - vm_qtd_produtos_vendidos.total_vendido) AS quantidade_final
		   FROM produto
		   INNER JOIN vm_qtd_produtos_vendidos
				ON produto.produtoid = vm_qtd_produtos_vendidos.produtoid
			ORDER BY produto.produtoid

CREATE VIEW vw_produtos_nao_vendidos AS
	SELECT p.produtoid, p.nome_produto, p.fornecedorid, p.quantidade_estoque
	FROM Produto p
	LEFT JOIN vm_qtd_produtos_vendidos v
		ON p.produtoid = v.produtoid
	WHERE v.produtoid IS NULL
	ORDER BY p.produtoid;