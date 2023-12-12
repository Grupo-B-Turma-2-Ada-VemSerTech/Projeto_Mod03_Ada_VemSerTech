-- Criação do ID do cliente serial iniciando em 1
CREATE SEQUENCE inc_cliente
  start 1
  increment 1;

-- Inserção de dados na tabela cliente
INSERT INTO Cliente (ClienteID, Nome_cliente, Cpf, Genero, Rua, "Nº residencial", Bairro, Cidade, Cep, Uf)
VALUES  (nextval('inc_cliente'), 'Ana Silva', '12345678901', 'F', 'Rua da Paz', '100', 'Centro', 'São Paulo', '01234567', 'SP'),
        (nextval('inc_cliente'), 'Pedro Santos', '23456789012', 'M', 'Avenida das Flores', '200', 'Jardim Botânico', 'Curitiba', '12345678', 'PR'),
        (nextval('inc_cliente'), 'Julia Lima', '34567890123', 'F', 'Rua das Árvores', '300', 'Jardim Europa', 'São Paulo', '23456789', 'SP'),
        (nextval('inc_cliente'), 'Paulo Oliveira', '45678901234', 'M', 'Avenida Principal', '400', 'Centro', 'Belo Horizonte', '34567890', 'MG'),
        (nextval('inc_cliente'), 'Larissa Pereira', '56789012345', 'F', 'Rua da Esperança', '500', 'Botafogo', 'Rio de Janeiro', '45678901', 'RJ'),
        (nextval('inc_cliente'), 'Lucas Almeida', '67890123456', 'M', 'Rua das Amoras', '600', 'Aclimação', 'São Paulo', '56789012', 'SP'),
        (nextval('inc_cliente'), 'Cristina Souza', '78901234567', 'F', 'Rua das Margaridas', '700', 'Jardim América', 'Goiânia', '67890123', 'GO'),
        (nextval('inc_cliente'), 'Fernando Silva', '89012345678', 'M', 'Avenida das Estrelas', '800', 'Centro', 'São Paulo', '78901234', 'SP'),
        (nextval('inc_cliente'), 'Mariana Oliveira', '90123456789', 'F', 'Rua da União', '900', 'Centro', 'Rio de Janeiro', '89012345', 'RJ'),
        (nextval('inc_cliente'), 'Ricardo Santos', '01234567890', 'M', 'Avenida das Palmeiras', '1000', 'Centro', 'São Paulo', '90123456', 'SP');

-- Atualização de registros com as datas de nascimento
UPDATE cliente
SET data_nascimento = '1993-05-05'
WHERE clienteid = 1;

UPDATE cliente
SET data_nascimento = '1988-07-19'
WHERE clienteid = 2;

UPDATE cliente
SET data_nascimento = '1998-10-03'
WHERE clienteid = 3;

UPDATE cliente
SET data_nascimento = '1995-04-14'
WHERE clienteid = 4;

UPDATE cliente
SET data_nascimento = '1990-10-18'
WHERE clienteid = 5;

UPDATE cliente
SET data_nascimento = '1994-06-25'
WHERE clienteid = 6;

UPDATE cliente
SET data_nascimento = '1991-01-28'
WHERE clienteid = 7;

UPDATE cliente
SET data_nascimento = '2000-04-01'
WHERE clienteid = 8;

UPDATE cliente
SET data_nascimento = '1996-08-02'
WHERE clienteid = 9;

UPDATE cliente
SET data_nascimento = '1992-02-15'
WHERE clienteid = 10;

-- Criação do ID do fornecedor serial iniciando em 1
CREATE SEQUENCE inc_fornecedor
  start 1
  increment 1;

-- Inserção de dados na tabela fornecedor
INSERT INTO Fornecedor (FornecedorID, Nome, Cnpj, Telefone, Rua, Num_predial, Bairro, Cidade, Uf)
VALUES	(nextval('inc_fornecedor'), 'Malharia ABC', '12345678701234', '(41) 5555-5555', 'Rua das Malhas', 123, 'Centro', 'Belo Horizonte', 'MG'),
        (nextval('inc_fornecedor'), 'Ketal Calças', '23456789012345', '(22) 6666-6666', 'Avenida das Tuataras', 456, 'Igarapés', 'São José dos Campos', 'SP'),
        (nextval('inc_fornecedor'), 'Estapari', '34567890123456', '(33) 7777-7777', 'Rua das Tulipas', 789, 'Bairros das Flores', 'Formosa','GO'),
        (nextval('inc_fornecedor'), 'Loja da Moda', '12345678901234', '(11)1234-5678', 'Rua das Tendências', 123, 'Centro', 'São Paulo', 'SP'),
        (nextval('inc_fornecedor'), 'Fashion Outlet', '23456789018345', '(22)3456-7890', 'Avenida das Roupas', 456, 'Bairro da Moda', 'Rio de Janeiro', 'RJ'),
        (nextval('inc_fornecedor'), 'Chique Elegante', '34567840123456', '(33)5678-9012', 'Rua das Boutiques', 789, 'Centro', 'Belo Horizonte', 'MG'),
        (nextval('inc_fornecedor'), 'Estilo Urbano', '45678901134567', '(44)8901-2345', 'Avenida das Tendências', 101, 'Bairro Fashion', 'Curitiba', 'PR');

-- Criação do ID do produto serial iniciando em 1
CREATE SEQUENCE inc_produto
  start 1
  increment 1;

-- Inserção de dados na tabela produto
INSERT INTO Produto (ProdutoID, Nome_produto, Fornecedorid, Categoria, Cor, Tamanho, Preco, Quantidade_estoque)
VALUES	(nextval('inc_produto'), 'Camiseta básica', 1, 'Roupas', 'Verde',  'PP', 25.00, 100),
        (nextval('inc_produto'), 'Camiseta básica', 1, 'Roupas', 'Verde',   'P', 25.00, 100),
        (nextval('inc_produto'), 'Camiseta básica', 1, 'Roupas', 'Verde',   'M', 25.00, 100),
        (nextval('inc_produto'), 'Camiseta básica', 1, 'Roupas', 'Verde',   'G', 25.00, 100),
        (nextval('inc_produto'), 'Camiseta básica', 1, 'Roupas', 'Verde',  'GG', 25.00, 100),
        (nextval('inc_produto'), 'Camiseta básica', 1, 'Roupas', 'Verde', 'EXG', 25.00, 100),
        (nextval('inc_produto'), 'Calça jeans', 2, 'Roupas', 'Azul', 'PP',45.00, 80),
        (nextval('inc_produto'), 'Calça jeans', 2, 'Roupas', 'Azul', 'P',45.00, 80),
        (nextval('inc_produto'), 'Calça jeans', 2, 'Roupas', 'Azul', 'M',45.00, 80),
        (nextval('inc_produto'), 'Calça jeans', 2, 'Roupas', 'Azul', 'G',45.00, 80),
        (nextval('inc_produto'), 'Calça jeans', 2, 'Roupas', 'Azul', 'GG',45.00, 80),
        (nextval('inc_produto'), 'Calça jeans', 2, 'Roupas', 'Azul', 'EXG',45.00, 80),
        (nextval('inc_produto'), 'Vestido estampado', 1, 'Roupas', 'Branco', 'PP',60.00, 65),
        (nextval('inc_produto'), 'Vestido estampado', 1, 'Roupas', 'Branco',  'P',60.00, 65),
        (nextval('inc_produto'), 'Vestido estampado', 1, 'Roupas', 'Branco',  'M',60.00, 65),
        (nextval('inc_produto'), 'Vestido estampado', 1, 'Roupas', 'Branco',  'G',60.00, 65),
        (nextval('inc_produto'), 'Vestido estampado', 1, 'Roupas', 'Branco',  'GG',60.00, 65),
        (nextval('inc_produto'), 'Vestido estampado', 1, 'Roupas', 'Branco', 'EXG',60.00, 65),
        (nextval('inc_produto'), 'Blusa de tricô', 2, 'Roupas', 'Rosa', 'PP',35.00, 90),
        (nextval('inc_produto'), 'Blusa de tricô', 2, 'Roupas', 'Rosa', 'P',35.00, 90),
        (nextval('inc_produto'), 'Blusa de tricô', 2, 'Roupas', 'Rosa', 'M',35.00, 90),
        (nextval('inc_produto'), 'Blusa de tricô', 2, 'Roupas', 'Rosa', 'G',35.00, 90),
        (nextval('inc_produto'), 'Blusa de tricô', 2, 'Roupas', 'Rosa', 'GG',35.00, 90),
        (nextval('inc_produto'), 'Blusa de tricô', 2, 'Roupas', 'Rosa', 'EXG',35.00, 90),
        (nextval('inc_produto'), 'Calça social', 3, 'Roupas', 'Preto', 'P', 55.00, 75),
        (nextval('inc_produto'), 'Calça social', 3, 'Roupas', 'Preto', 'M', 55.00, 75),
        (nextval('inc_produto'), 'Calça social', 3, 'Roupas', 'Preto', 'G', 55.00, 75),
        (nextval('inc_produto'), 'Calça social', 3, 'Roupas', 'Preto', 'GG', 55.00, 75),
        (nextval('inc_produto'), 'Calça social', 3, 'Roupas', 'Preto', 'EXG', 55.00, 75),
        (nextval('inc_produto'), 'Sapato social', 3, 'Calçados', 'Preto', '38', 70.00, 60),
        (nextval('inc_produto'), 'Sapato social', 3, 'Calçados', 'Preto', '39', 70.00, 60),
        (nextval('inc_produto'), 'Sapato social', 3, 'Calçados', 'Preto', '40', 70.00, 60),
        (nextval('inc_produto'), 'Sapato social', 3, 'Calçados', 'Preto', '41', 70.00, 60),
        (nextval('inc_produto'), 'Sapato social', 3, 'Calçados', 'Preto', '42', 70.00, 60),
        (nextval('inc_produto'), 'Sapato social', 3, 'Calçados', 'Preto', '43', 70.00, 60),
        (nextval('inc_produto'), 'Tênis esportivo', 4, 'Calçados', 'Lilás','40',40.00, 85),
        (nextval('inc_produto'), 'Tênis esportivo', 4, 'Calçados', 'Branco','40',40.00, 85),
        (nextval('inc_produto'), 'Tênis esportivo', 4, 'Calçados', 'Preto','40',40.00, 85),
        (nextval('inc_produto'), 'Tênis esportivo', 4, 'Calçados', 'Lilás','39',40.00, 85),
        (nextval('inc_produto'), 'Tênis esportivo', 4, 'Calçados', 'Branco','38',40.00, 85),
        (nextval('inc_produto'), 'Tênis esportivo', 4, 'Calçados', 'Preto','38',40.00, 85),
        (nextval('inc_produto'), 'Tênis esportivo', 4, 'Calçados', 'Lilás','41',40.00, 85),
        (nextval('inc_produto'), 'Tênis esportivo', 4, 'Calçados', 'Azul','40',40.00, 85),
        (nextval('inc_produto'), 'Sandália rasteira', 4, 'Calçados', 'Amarelo', '33',30.00, 95),
        (nextval('inc_produto'), 'Sandália rasteira', 4, 'Calçados', 'Amarelo', '34',30.00, 95),
        (nextval('inc_produto'), 'Sandália rasteira', 4, 'Calçados', 'Amarelo', '35',30.00, 95),
        (nextval('inc_produto'), 'Sandália rasteira', 4, 'Calçados', 'Amarelo', '36',30.00, 95),
        (nextval('inc_produto'), 'Sandália rasteira', 4, 'Calçados', 'Amarelo', '37',30.00, 95),
        (nextval('inc_produto'), 'Sandália rasteira', 4, 'Calçados', 'Amarelo', '38',30.00, 95),
        (nextval('inc_produto'), 'Bota de inverno', 4, 'Calçados', 'Amarelo', '36',90.00, 40),
        (nextval('inc_produto'), 'Bota de inverno', 4, 'Calçados', 'Amarelo', '37',90.00, 40),
        (nextval('inc_produto'), 'Bota de inverno', 4, 'Calçados', 'Amarelo', '38',90.00, 40),
        (nextval('inc_produto'), 'Bota de inverno', 4, 'Calçados', 'Amarelo', '39',90.00, 40),
        (nextval('inc_produto'), 'Bota de inverno', 4, 'Calçados', 'Amarelo', '40',90.00, 40),
        (nextval('inc_produto'), 'Bota de inverno', 4, 'Calçados', 'Amarelo', '41',90.00, 40),
        (nextval('inc_produto'), 'Sapatilha elegante', 4, 'Calçados', 'Lilás', '33', 50.00, 70),
        (nextval('inc_produto'), 'Sapatilha elegante', 4, 'Calçados', 'Lilás', '35', 50.00, 70),
        (nextval('inc_produto'), 'Sapatilha elegante', 4, 'Calçados', 'Lilás', '37', 50.00, 70),
        (nextval('inc_produto'), 'Sapatilha elegante', 4, 'Calçados', 'Lilás', '38', 50.00, 70),
        (nextval('inc_produto'), 'Sapatilha elegante', 4, 'Calçados', 'Lilás', '40', 50.00, 70),
        (nextval('inc_produto'), 'Chinelo confortável', 4, 'Calçados', 'Azul', '40',20.00, 100),
        (nextval('inc_produto'), 'Chinelo confortável', 4, 'Calçados', 'Branco', '38',20.00, 100),
        (nextval('inc_produto'), 'Chinelo confortável', 4, 'Calçados', 'Verde', '36',20.00, 100),
        (nextval('inc_produto'), 'Chinelo confortável', 4, 'Calçados', 'Ciano', '34',20.00, 100),
        (nextval('inc_produto'), 'Chinelo confortável', 4, 'Calçados', 'Amarelo', '42',20.00, 100),
        (nextval('inc_produto'), 'Bolsa de couro', 5, 'Acessórios','Preto', 'U', 60.00, 50),
        (nextval('inc_produto'), 'Bolsa de couro', 5, 'Acessórios','Branca', 'U', 60.00, 50),
        (nextval('inc_produto'), 'Óculos de sol', 6, 'Acessórios', 'Rosa', 'U',35.00, 75),
        (nextval('inc_produto'), 'Jaqueta de couro', 5, 'Roupas', 'Verde', 'P', 80.00, 50),
        (nextval('inc_produto'), 'Jaqueta de couro', 5, 'Roupas', 'Verde', 'M', 80.00, 50),        
        (nextval('inc_produto'), 'Jaqueta de couro', 5, 'Roupas', 'Verde', 'G', 80.00, 50),
        (nextval('inc_produto'), 'Cinto de couro', 5, 'Acessórios', 'Marrom', 'G',25.00, 90),
        (nextval('inc_produto'), 'Cinto de couro', 5, 'Acessórios', 'Preto', 'G',25.00, 90),
        (nextval('inc_produto'), 'Cinto de couro', 5, 'Acessórios', 'Marrom', 'M',25.00, 90),
        (nextval('inc_produto'), 'Cinto de couro', 5, 'Acessórios', 'Preto', 'M',25.00, 90),
        (nextval('inc_produto'), 'Cinto de couro', 5, 'Acessórios', 'Marrom', 'P',25.00, 90),
        (nextval('inc_produto'), 'Relógio de luxo', 7, 'Acessórios', 'Prata', 'U',100.00, 30),
        (nextval('inc_produto'), 'Relógio de luxo', 7, 'Acessórios', 'Dourado', 'U',100.00, 30),
        (nextval('inc_produto'), 'Lenço elegante', 7, 'Acessórios', 'Pink', 'U',30.00, 85),
        (nextval('inc_produto'), 'Lenço elegante', 7, 'Acessórios', 'Preto', 'U',30.00, 85),
        (nextval('inc_produto'), 'Lenço elegante', 7, 'Acessórios', 'Marfim', 'U',30.00, 85);

-- Criação do ID do vendedor serial iniciando em 1
CREATE SEQUENCE inc_vendedor
  start 1
  increment 1;

-- Inserção de dados na tabela produto
INSERT INTO Vendedor (vendedorid, Nome_vendedor)
VALUES	(nextval('inc_vendedor'), 'Lucas Fernandes'),
        (nextval('inc_vendedor'), 'Fernanda Oliveira'),
        (nextval('inc_vendedor'), 'Rafael Santos'),
        (nextval('inc_vendedor'), 'Isabela Pereira');

-- Criação do ID da venda serial iniciando em 1
CREATE SEQUENCE inc_vendas
  start 1
  increment 1;

-- Inserção de dados na tabela produto
INSERT INTO Vendas (VendaID, VendedorID, ClienteID, Tipo_pagamento, Data)
VALUES (nextval('inc_vendas'), 1, 1, 'Cartão de crédito', '2023-08-15'),
       (nextval('inc_vendas'), 2, 2, 'Boleto', '2023-08-16'),
       (nextval('inc_vendas'), 3, 3, 'Dinheiro',  '2023-08-17'),
       (nextval('inc_vendas'), 4, 4, 'Cartão de débito', '2023-08-18'),
       (nextval('inc_vendas'), 1, 5, 'Pix', '2023-08-19'),
       (nextval('inc_vendas'), 2, 6, 'Boleto', '2023-08-20'),
       (nextval('inc_vendas'), 4, 4, 'Cartão de crédito', '2023-08-21'),
       (nextval('inc_vendas'), 1, 3, 'Dinheiro', '2023-08-22'),
       (nextval('inc_vendas'), 1, 3, 'Cartão de débito', '2023-08-23'),
       (nextval('inc_vendas'), 2, 10, 'Pix', '2023-08-24'),
       (nextval('inc_vendas'), 4, 1, 'Boleto', '2023-08-25'),
       (nextval('inc_vendas'), 3, 2, 'Dinheiro', '2023-08-26'),
       (nextval('inc_vendas'), 4, 8, 'Cartão de crédito', '2023-08-27'),
       (nextval('inc_vendas'), 3, 7, 'Cartão de débito', '2023-08-28'),
       (nextval('inc_vendas'), 2, 4, 'Pix', '2023-08-29'),
       (nextval('inc_vendas'), 1, 3, 'Boleto','2023-08-30'),
       (nextval('inc_vendas'), 3, 6, 'Dinheiro', '2023-08-31'),
       (nextval('inc_vendas'), 4, 10, 'Cartão de crédito', '2023-09-01'),
       (nextval('inc_vendas'), 2, 3, 'Cartão de débito', '2023-09-02'),
       (nextval('inc_vendas'), 1, 1, 'Pix', '2023-09-03'),
       (nextval('inc_vendas'), 1, 1, 'Cartão de crédito', '2023-08-15'),
       (nextval('inc_vendas'), 2, 2, 'Boleto', '2023-08-16'),
       (nextval('inc_vendas'), 3, 3, 'Dinheiro',  '2023-08-17'),
       (nextval('inc_vendas'), 4, 4, 'Cartão de débito', '2023-08-18'),
       (nextval('inc_vendas'), 1, 5, 'Pix', '2023-08-19'),
       (nextval('inc_vendas'), 2, 6, 'Boleto', '2023-08-20');

-- Criação do ID do produto vendido serial iniciando em 1	   
CREATE SEQUENCE inc_produto_vendido
  start 1
  increment 1;

-- Inserção de dados na tabela produto
INSERT INTO Produto_vendido (produto_vendido_id, VendaID, ProdutoID, Quantidade)
VALUES (nextval('inc_produto_vendido'), 01, 08, 2),
       (nextval('inc_produto_vendido'), 01, 08, 2),
       (nextval('inc_produto_vendido'), 02, 09, 3),
       (nextval('inc_produto_vendido'), 03, 10, 4),
       (nextval('inc_produto_vendido'), 04, 08, 5),
       (nextval('inc_produto_vendido'), 04, 11, 1),
       (nextval('inc_produto_vendido'), 04, 01, 6),
       (nextval('inc_produto_vendido'), 05, 17, 1),
       (nextval('inc_produto_vendido'), 06, 16, 4),
       (nextval('inc_produto_vendido'), 06, 08, 2),
       (nextval('inc_produto_vendido'), 07, 08, 2),
       (nextval('inc_produto_vendido'), 07, 09, 3),
       (nextval('inc_produto_vendido'), 07, 10, 4),
       (nextval('inc_produto_vendido'), 08, 08, 5),
       (nextval('inc_produto_vendido'), 09, 11, 1),
       (nextval('inc_produto_vendido'), 10, 01, 6),
       (nextval('inc_produto_vendido'), 10, 17, 1),
       (nextval('inc_produto_vendido'), 11, 16, 4),
       (nextval('inc_produto_vendido'), 11, 08, 2),
       (nextval('inc_produto_vendido'), 12, 08, 2),
       (nextval('inc_produto_vendido'), 13, 09, 3),
       (nextval('inc_produto_vendido'), 14, 10, 4),
       (nextval('inc_produto_vendido'), 15, 08, 5),
       (nextval('inc_produto_vendido'), 16, 11, 1),
       (nextval('inc_produto_vendido'), 16, 01, 6),
       (nextval('inc_produto_vendido'), 17, 17, 1),
       (nextval('inc_produto_vendido'), 17, 16, 4),
       (nextval('inc_produto_vendido'), 17, 15, 2),
       (nextval('inc_produto_vendido'), 17, 08, 2),
       (nextval('inc_produto_vendido'), 17, 09, 3),
       (nextval('inc_produto_vendido'), 17, 10, 4),
       (nextval('inc_produto_vendido'), 18, 08, 5),
       (nextval('inc_produto_vendido'), 19, 11, 1),
       (nextval('inc_produto_vendido'), 20, 01, 6),
       (nextval('inc_produto_vendido'), 20, 17, 1),
       (nextval('inc_produto_vendido'), 21, 16, 4),
       (nextval('inc_produto_vendido'), 21, 08, 2),
       (nextval('inc_produto_vendido'), 22, 08, 2),
       (nextval('inc_produto_vendido'), 23, 09, 3),
       (nextval('inc_produto_vendido'), 24, 10, 4),
       (nextval('inc_produto_vendido'), 25, 08, 5),
       (nextval('inc_produto_vendido'), 26, 11, 1),
       (nextval('inc_produto_vendido'), 26, 01, 6),
       (nextval('inc_produto_vendido'), 26, 17, 1);
