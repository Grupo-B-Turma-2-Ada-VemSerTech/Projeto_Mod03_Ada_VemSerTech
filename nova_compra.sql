-- Adicionando um novo cliente

INSERT INTO Cliente (ClienteID, Nome_cliente, Cpf, Genero, Rua, "Nº residencial", Bairro, Cidade, Cep, Uf)
VALUES  (nextval('inc_cliente'), 'Ana Paula Souza', '12345208901', 'F', 'Rua 20', '10', 'Liberdade', 'São Paulo', '01234565', 'SP')

-- verificando o id do cliente adicionado
/* Sabemos que o CPF é um registro único, pelo CPF do cliente adicionado iremos encontrar o id do cliente
o CPF adicionado foi '12345208901'.*/

select clienteid from cliente
where cpf='12345208901';

-- o clienteid encontrado foi 11

/* adicionar o registro da venda
a venda foi realizada pelo vendedorid 2
foi utilizado o tipo de pagamento 'cartão de crédito'
a compra foi realizada no dia 25/08/2023*/

INSERT INTO Vendas (VendaID, VendedorID, ClienteID, Tipo_pagamento, Data)
VALUES (nextval('inc_vendas'), 2, 11, 'Cartão de crédito', '2023-08-25')

select vendaid from vendas
where clienteid='11';
-- vendaid 27

-- com o id da venda, podemos inserir os itens comprados na venda

/*
O cliente comprou os seguintes itens:
- dois lenços elegantes pretos (produtoid = 80)
- um Cinto de couro Marrom, tamanho M (produtoid = 74)
- um Vestido estampado Branco, tamanho PP (produtoid = 13)
- uma Camiseta básica Verde, tamanho PP (produtoid = 1)
- uma Calça social Preta, tamanho EXG (produtoid = 29)
*/
INSERT INTO Produto_vendido (produto_vendido_id, VendaID, ProdutoID, Quantidade)
VALUES (nextval('inc_produto_vendido'), 27, 80, 2),
       (nextval('inc_produto_vendido'), 27, 74, 1),
       (nextval('inc_produto_vendido'), 27, 13, 1),
       (nextval('inc_produto_vendido'), 27,  1, 1),
       (nextval('inc_produto_vendido'), 27, 29, 1)

-- podemos verificar o total gasto na compra utilizando a view vw_valor_venda utilizando o id da venda
select * from vw_valor_venda
where vendaid = 27