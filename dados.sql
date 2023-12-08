INSERT INTO Cliente (Nome_cliente, Cpf, Genero, Idade, Rua, "Nº residencial", Bairro, Cidade, Cep, Uf)
VALUES  ('Ana Silva', '12345678901', 'F', 30, 'Rua da Paz', '100', 'Centro', 'São Paulo', '01234567', 'SP'),
        ('Pedro Santos', '23456789012', 'M', 35, 'Avenida das Flores', '200', 'Jardim Botânico', 'Curitiba', '12345678', 'PR'),
        ('Julia Lima', '34567890123', 'F', 25, 'Rua das Árvores', '300', 'Jardim Europa', 'São Paulo', '23456789', 'SP'),
        ('Paulo Oliveira', '45678901234', 'M', 40, 'Avenida Principal', '400', 'Centro', 'Belo Horizonte', '34567890', 'MG'),
        ('Larissa Pereira', '56789012345', 'F', 28, 'Rua da Esperança', '500', 'Botafogo', 'Rio de Janeiro', '45678901', 'RJ'),
        ('Lucas Almeida', '67890123456', 'M', 33, 'Rua das Amoras', '600', 'Aclimação', 'São Paulo', '56789012', 'SP'),
        ('Cristina Souza', '78901234567', 'F', 29, 'Rua das Margaridas', '700', 'Jardim América', 'Goiânia', '67890123', 'GO'),
        ('Fernando Silva', '89012345678', 'M', 32, 'Avenida das Estrelas', '800', 'Centro', 'São Paulo', '78901234', 'SP'),
        ('Mariana Oliveira', '90123456789', 'F', 27, 'Rua da União', '900', 'Centro', 'Rio de Janeiro', '89012345', 'RJ'),
        ('Ricardo Santos', '01234567890', 'M', 31, 'Avenida das Palmeiras', '1000', 'Centro', 'São Paulo', '90123456', 'SP');
SELECT * FROM loja_db.public.Cliente;

INSERT INTO Fornecedor (Nome, Cnpj, Telefone, Rua, Num_predial, Bairro, Cidade, Uf)
VALUES	('Malharia ABC', '12345678701234', '(11) 5555-5555', 'Rua das Malhas', 123, 'Centro', 'Belo Horizonte', 'MG'),
        ('Ketal Calças', '23456789012345', '(22) 6666-6666', 'Avenida das Tuataras', 456, 'Igarapés', 'São José dos Campos', 'SP'),
        ('Estapari', '34567890123456', '(33) 7777-7777', 'Rua das Tulipas', 789, 'Bairros das Flores', 'Formosa','GO'),
        ('Loja da Moda', '12345678901234', '(11)1234-5678', 'Rua das Tendências', 123, 'Centro', 'São Paulo', 'SP'),
        ('Fashion Outlet', '23456789018345', '(22)3456-7890', 'Avenida das Roupas', 456, 'Bairro da Moda', 'Rio de Janeiro', 'RJ'),
        ('Chique Elegante', '34567840123456', '(33)5678-9012', 'Rua das Boutiques', 789, 'Centro', 'Belo Horizonte', 'MG'),
        ('Estilo Urbano', '45678901134567', '(44)8901-2345', 'Avenida das Tendências', 101, 'Bairro Fashion', 'Curitiba', 'PR');
SELECT * FROM loja_db.public.Fornecedor;

INSERT INTO Produto (Nome_produto, Fornecedorid, Categoria, Cor, Tamanho, Preco, Quantidade_estoque)
VALUES	('Camiseta básica', 10, 'Roupas', 'Verde', 'P', 25.00, 100),
        ('Calça jeans', 12, 'Roupas', 'Azul', 'G',45.00, 80),
        ('Vestido estampado', 13, 'Roupas', 'Branco', 'M',60.00, 65),
        ('Blusa de tricô', 14, 'Roupas', 'Rosa', 'M',35.00, 90),
        ('Jaqueta de couro', 8, 'Roupas', 'Verde', 'G', 80.00, 50),
        ('Calça social', 9, 'Roupas', 'Preto', 'GG', 55.00, 75),
        ('Sapato social', 11, 'Calçados', 'Preto', '38', 70.00, 60),
        ('Tênis esportivo', 12, 'Calçados', 'Lilás','40',40.00, 85),
        ('Sandália rasteira', 13, 'Calçados', 'Amarelo', '36',30.00, 95),
        ('Bota de inverno', 14, 'Calçados', 'Amarelo', '37',90.00, 40),
        ('Sapatilha elegante', 8, 'Calçados', 'Lilás', '33', 50.00, 70),
        ('Chinelo confortável', 9, 'Calçados', 'Azul', '40',20.00, 100),
        ('Bolsa de couro', 10, 'Acessórios','Preto', 'P', 60.00, 50),
        ('Óculos de sol', 12, 'Acessórios', 'Rosa', 'P',35.00, 75),
        ('Cinto de couro', 13, 'Acessórios', 'Prata', 'G',25.00, 90),
        ('Relógio de luxo', 14, 'Acessórios', 'Prata', 'P',100.00, 30),
        ('Lenço elegante', 11, 'Acessórios', 'Pink', 'P',30.00, 85);

SELECT * FROM loja_db.public.Produto;

INSERT INTO Vendedor (Nome_vendedor)
VALUES	('Lucas Fernandes'),
        ('Fernanda Oliveira'),
        ('Rafael Santos'),
        ('Isabela Pereira');


INSERT INTO Vendas (VendaID, VendedorID, ClienteID, Valor_Total,Tipo_pagamento, Data)
VALUES (30, 1, 11, 200.00, 'Cartão de crédito', '2023-08-15'),
       (20, 2, 12, 150.00, 'Boleto', '2023-08-16'),
       (27, 3, 13,100.00, 'Dinheiro',  '2023-08-17'),
       (32, 4, 14, 120.00, 'Cartão de débito', '2023-08-18'),
       (22, 1, 15,180.00, 'Pix', '2023-08-19'),
       (18, 2, 16, 90.00, 'Boleto', '2023-08-20'),
       (33, 4, 14,210.00, 'Cartão de crédito', '2023-08-21'),
       (38, 1, 13, 95.00, 'Dinheiro', '2023-08-22'),
       (26, 1, 13, 160.00, 'Cartão de débito', '2023-08-23'),
       (25, 2, 20, 130.00, 'Pix', '2023-08-24'),
       (34, 4, 11, 170.00, 'Boleto', '2023-08-25'),
       (21, 3, 12, 105.00, 'Dinheiro', '2023-08-26'),
       (23, 4, 18, 175.00, 'Cartão de crédito', '2023-08-27'),
       (36, 3, 17, 200.00, 'Cartão de débito', '2023-08-28'),
       (40, 2, 14, 140.00, 'Pix', '2023-08-29'),
       (41, 1, 13, 120.00, 'Boleto','2023-08-30'),
       (19, 3, 16, 190.00, 'Dinheiro', '2023-08-31'),
       (28, 4, 20, 220.00, 'Cartão de crédito', '2023-09-01'),
       (42, 2, 13, 115.00, 'Cartão de débito', '2023-09-02'),
       (43, 1, 20, 125.00, 'Pix', '2023-09-03');
       (24, 1, 11, 200.00, 'Cartão de crédito', '2023-08-15'),
       (29, 2, 12, 150.00, 'Boleto', '2023-08-16'),
       (31, 3, 13,100.00, 'Dinheiro',  '2023-08-17'),
       (35, 4, 14, 120.00, 'Cartão de débito', '2023-08-18'),
       (37, 1, 15,180.00, 'Pix', '2023-08-19'),
       (39, 2, 16, 90.00, 'Boleto', '2023-08-20');
	   

INSERT INTO Produto_vendido (Produto_vendido_ID, VendaID, ProdutoID, Quantidade)
VALUES (50, 18, 18, 2),
(51, 18, 18, 2),
(52, 19, 19, 3),
(53, 22, 20, 4),
(54, 33, 28, 5),
(55, 40, 21, 1),
(56, 21, 31, 6),
(57, 38, 29, 1),
(58, 37, 22, 4),
(59, 29, 25, 2);