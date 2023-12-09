CREATE SEQUENCE inc_cliente
  start 1
  increment 1;

INSERT INTO Cliente (ClienteID, Nome_cliente, Cpf, Genero, Idade, Rua, "Nº residencial", Bairro, Cidade, Cep, Uf)
VALUES  (nextval('inc_cliente'), 'Ana Silva', '12345678901', 'F', 30, 'Rua da Paz', '100', 'Centro', 'São Paulo', '01234567', 'SP'),
        (nextval('inc_cliente'), 'Pedro Santos', '23456789012', 'M', 35, 'Avenida das Flores', '200', 'Jardim Botânico', 'Curitiba', '12345678', 'PR'),
        (nextval('inc_cliente'), 'Julia Lima', '34567890123', 'F', 25, 'Rua das Árvores', '300', 'Jardim Europa', 'São Paulo', '23456789', 'SP'),
        (nextval('inc_cliente'), 'Paulo Oliveira', '45678901234', 'M', 40, 'Avenida Principal', '400', 'Centro', 'Belo Horizonte', '34567890', 'MG'),
        (nextval('inc_cliente'), 'Larissa Pereira', '56789012345', 'F', 28, 'Rua da Esperança', '500', 'Botafogo', 'Rio de Janeiro', '45678901', 'RJ'),
        (nextval('inc_cliente'), 'Lucas Almeida', '67890123456', 'M', 33, 'Rua das Amoras', '600', 'Aclimação', 'São Paulo', '56789012', 'SP'),
        (nextval('inc_cliente'), 'Cristina Souza', '78901234567', 'F', 29, 'Rua das Margaridas', '700', 'Jardim América', 'Goiânia', '67890123', 'GO'),
        (nextval('inc_cliente'), 'Fernando Silva', '89012345678', 'M', 32, 'Avenida das Estrelas', '800', 'Centro', 'São Paulo', '78901234', 'SP'),
        (nextval('inc_cliente'), 'Mariana Oliveira', '90123456789', 'F', 27, 'Rua da União', '900', 'Centro', 'Rio de Janeiro', '89012345', 'RJ'),
        (nextval('inc_cliente'), 'Ricardo Santos', '01234567890', 'M', 31, 'Avenida das Palmeiras', '1000', 'Centro', 'São Paulo', '90123456', 'SP');

CREATE SEQUENCE inc_fornecedor
  start 1
  increment 1;

INSERT INTO Fornecedor (FornecedorID, Nome, Cnpj, Telefone, Rua, Num_predial, Bairro, Cidade, Uf)
VALUES	(nextval('inc_fornecedor'), 'Malharia ABC', '12345678701234', '(41) 5555-5555', 'Rua das Malhas', 123, 'Centro', 'Belo Horizonte', 'MG'),
        (nextval('inc_fornecedor'), 'Ketal Calças', '23456789012345', '(22) 6666-6666', 'Avenida das Tuataras', 456, 'Igarapés', 'São José dos Campos', 'SP'),
        (nextval('inc_fornecedor'), 'Estapari', '34567890123456', '(33) 7777-7777', 'Rua das Tulipas', 789, 'Bairros das Flores', 'Formosa','GO'),
        (nextval('inc_fornecedor'), 'Loja da Moda', '12345678901234', '(11)1234-5678', 'Rua das Tendências', 123, 'Centro', 'São Paulo', 'SP'),
        (nextval('inc_fornecedor'), 'Fashion Outlet', '23456789018345', '(22)3456-7890', 'Avenida das Roupas', 456, 'Bairro da Moda', 'Rio de Janeiro', 'RJ'),
        (nextval('inc_fornecedor'), 'Chique Elegante', '34567840123456', '(33)5678-9012', 'Rua das Boutiques', 789, 'Centro', 'Belo Horizonte', 'MG'),
        (nextval('inc_fornecedor'), 'Estilo Urbano', '45678901134567', '(44)8901-2345', 'Avenida das Tendências', 101, 'Bairro Fashion', 'Curitiba', 'PR');


CREATE SEQUENCE inc_produto
  start 1
  increment 1;

INSERT INTO Produto (ProdutoID, Nome_produto, Fornecedorid, Categoria, Cor, Tamanho, Preco, Quantidade_estoque)
VALUES	(nextval('inc_produto'), 'Camiseta básica', 7, 'Roupas', 'Verde', 'P', 25.00, 100),
        (nextval('inc_produto'), 'Calça jeans', 6, 'Roupas', 'Azul', 'G',45.00, 80),
        (nextval('inc_produto'), 'Vestido estampado', 1, 'Roupas', 'Branco', 'M',60.00, 65),
        (nextval('inc_produto'), 'Blusa de tricô', 2, 'Roupas', 'Rosa', 'M',35.00, 90),
        (nextval('inc_produto'), 'Jaqueta de couro', 2, 'Roupas', 'Verde', 'G', 80.00, 50),
        (nextval('inc_produto'), 'Calça social', 2, 'Roupas', 'Preto', 'GG', 55.00, 75),
        (nextval('inc_produto'), 'Sapato social', 3, 'Calçados', 'Preto', '38', 70.00, 60),
        (nextval('inc_produto'), 'Tênis esportivo', 4, 'Calçados', 'Lilás','40',40.00, 85),
        (nextval('inc_produto'), 'Sandália rasteira', 4, 'Calçados', 'Amarelo', '36',30.00, 95),
        (nextval('inc_produto'), 'Bota de inverno', 3, 'Calçados', 'Amarelo', '37',90.00, 40),
        (nextval('inc_produto'), 'Sapatilha elegante', 2, 'Calçados', 'Lilás', '33', 50.00, 70),
        (nextval('inc_produto'), 'Chinelo confortável', 1, 'Calçados', 'Azul', '40',20.00, 100),
        (nextval('inc_produto'), 'Bolsa de couro', 2, 'Acessórios','Preto', 'P', 60.00, 50),
        (nextval('inc_produto'), 'Óculos de sol', 6, 'Acessórios', 'Rosa', 'P',35.00, 75),
        (nextval('inc_produto'), 'Cinto de couro', 1, 'Acessórios', 'Prata', 'G',25.00, 90),
        (nextval('inc_produto'), 'Relógio de luxo', 5, 'Acessórios', 'Prata', 'P',100.00, 30),
        (nextval('inc_produto'), 'Lenço elegante', 5, 'Acessórios', 'Pink', 'P',30.00, 85);



CREATE SEQUENCE inc_vendedor
  start 1
  increment 1;

INSERT INTO Vendedor (vendedorid, Nome_vendedor)
VALUES	(nextval('inc_vendedor'), 'Lucas Fernandes'),
        (nextval('inc_vendedor'), 'Fernanda Oliveira'),
        (nextval('inc_vendedor'), 'Rafael Santos'),
        (nextval('inc_vendedor'), 'Isabela Pereira');

CREATE SEQUENCE inc_vendas
  start 1
  increment 1;

INSERT INTO Vendas (VendaID, VendedorID, ClienteID, Valor_Total,Tipo_pagamento, Data)
VALUES (nextval('inc_vendas'), 1, 1, 200.00, 'Cartão de crédito', '2023-08-15'),
       (nextval('inc_vendas'), 2, 2, 150.00, 'Boleto', '2023-08-16'),
       (nextval('inc_vendas'), 3, 3, 100.00, 'Dinheiro',  '2023-08-17'),
       (nextval('inc_vendas'), 4, 4, 120.00, 'Cartão de débito', '2023-08-18'),
       (nextval('inc_vendas'), 1, 5, 180.00, 'Pix', '2023-08-19'),
       (nextval('inc_vendas'), 2, 6,  90.00, 'Boleto', '2023-08-20'),
       (nextval('inc_vendas'), 4, 4, 210.00, 'Cartão de crédito', '2023-08-21'),
       (nextval('inc_vendas'), 1, 3,  95.00, 'Dinheiro', '2023-08-22'),
       (nextval('inc_vendas'), 1, 3, 160.00, 'Cartão de débito', '2023-08-23'),
       (nextval('inc_vendas'), 2, 10, 130.00, 'Pix', '2023-08-24'),
       (nextval('inc_vendas'), 4, 1, 170.00, 'Boleto', '2023-08-25'),
       (nextval('inc_vendas'), 3, 2, 105.00, 'Dinheiro', '2023-08-26'),
       (nextval('inc_vendas'), 4, 8, 175.00, 'Cartão de crédito', '2023-08-27'),
       (nextval('inc_vendas'), 3, 7, 200.00, 'Cartão de débito', '2023-08-28'),
       (nextval('inc_vendas'), 2, 4, 140.00, 'Pix', '2023-08-29'),
       (nextval('inc_vendas'), 1, 3, 120.00, 'Boleto','2023-08-30'),
       (nextval('inc_vendas'), 3, 6, 190.00, 'Dinheiro', '2023-08-31'),
       (nextval('inc_vendas'), 4, 10, 220.00, 'Cartão de crédito', '2023-09-01'),
       (nextval('inc_vendas'), 2, 3, 115.00, 'Cartão de débito', '2023-09-02'),
       (nextval('inc_vendas'), 1, 1, 125.00, 'Pix', '2023-09-03'),
       (nextval('inc_vendas'), 1, 1, 200.00, 'Cartão de crédito', '2023-08-15'),
       (nextval('inc_vendas'), 2, 2, 150.00, 'Boleto', '2023-08-16'),
       (nextval('inc_vendas'), 3, 3, 100.00, 'Dinheiro',  '2023-08-17'),
       (nextval('inc_vendas'), 4, 4, 120.00, 'Cartão de débito', '2023-08-18'),
       (nextval('inc_vendas'), 1, 5, 180.00, 'Pix', '2023-08-19'),
       (nextval('inc_vendas'), 2, 6,  90.00, 'Boleto', '2023-08-20');
	   
CREATE SEQUENCE inc_produto_vendido
  start 1
  increment 1;

INSERT INTO Produto_vendido (produto_vendido_id, VendaID, ProdutoID, Quantidade)
VALUES (nextval('inc_produto_vendido'), 18, 08, 2),
       (nextval('inc_produto_vendido'), 18, 08, 2),
       (nextval('inc_produto_vendido'), 19, 09, 3),
       (nextval('inc_produto_vendido'), 22, 10, 4),
       (nextval('inc_produto_vendido'), 01, 08, 5),
       (nextval('inc_produto_vendido'), 26, 11, 1),
       (nextval('inc_produto_vendido'), 21, 01, 6),
       (nextval('inc_produto_vendido'), 25, 17, 1),
       (nextval('inc_produto_vendido'), 24, 16, 4),
       (nextval('inc_produto_vendido'), 20, 15, 2);
