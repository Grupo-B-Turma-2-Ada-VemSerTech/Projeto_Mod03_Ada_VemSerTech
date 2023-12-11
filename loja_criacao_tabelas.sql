-- Criação do banco de dados da loja 
CREATE DATABASE loja_db

-- Criação da tabela com informações dos clientes
CREATE TABLE loja_db.public.Cliente(
  ClienteID SERIAL PRIMARY KEY,
  Nome_cliente varchar(40) NOT NULL,
  Cpf char(11) not null,
  Genero VARCHAR(1) CHECK (Genero IN ('M', 'F')),
  Rua VARCHAR(30),
  "Nº residencial" SMALLINT,
  Bairro VARCHAR (20),
  Cidade VARCHAR (30),
  Cep VARCHAR (9),
  Uf VARCHAR(2),
  constraint unique_cpf_client unique(CPF)
);

-- Adição de nova coluna na tabela cliente para a data de nascimento
ALTER TABLE loja_db.public.Cliente
ADD COLUMN data_nascimento DATE;

-- Adição de nova coluna na tabela cliente para a idade
ALTER TABLE loja_db.public.Cliente
ADD COLUMN idade SMALLINT

-- Atualização da tabela com a idade calculada a partir da data de nascimento
UPDATE loja_db.public.Cliente
SET idade = EXTRACT(YEAR FROM AGE(CURRENT_DATE, data_nascimento));

-- Querie para vizualizar os dados da tabela cliente
SELECT * FROM loja_db.public.cliente;

-- Criação da tabela com informações dos fornecedores
CREATE TABLE loja_db.public.Fornecedor(
  FornecedorID SERIAL PRIMARY KEY,
  Nome VARCHAR (80) NOT NULL,
  Cnpj CHAR(14) NOT NULL,
  Telefone VARCHAR(20),
  Rua VARCHAR(30),
  Num_predial SMALLINT,
  Bairro VARCHAR (20),
  Cidade VARCHAR (30),
  Uf VARCHAR(2),
  CONSTRAINT unique_cnpj_fornecedor UNIQUE (CNPJ)
);

-- Querie para vizualizar os dados da tabela fornecedor
SELECT * FROM loja_db.public.fornecedor;

-- Criação da tabela com informações dos produtos
CREATE TABLE loja_db.public.Produto(
  ProdutoID SERIAL PRIMARY KEY,
  Nome_produto VARCHAR(80) NOT NULL,
  FornecedorID SMALLINT,
  Categoria VARCHAR (30),
  Cor VARCHAR (30),
  Tamanho VARCHAR (5),
  Preco DECIMAL(10, 2) NOT NULL,
  Quantidade_estoque SMALLINT,
  FOREIGN KEY (FornecedorID) REFERENCES Fornecedor(FornecedorID)
);

-- Querie para vizualizar os dados da tabela produto
SELECT * FROM loja_db.public.produto;

-- Criação da tabela com informações dos vendedores
CREATE TABLE loja_db.public.Vendedor(
  VendedorID SERIAL PRIMARY KEY,
  Nome_vendedor varchar(30) NOT NULL
);

-- Querie para vizualizar os dados da tabela vendedores
SELECT * FROM loja_db.public.vendedor;

-- Criação da tabela com informações por vendas
CREATE TABLE loja_db.public.Vendas(
  VendaID SERIAL PRIMARY KEY,
  VendedorID SMALLINT,
  ClienteID SMALLINT, 
  Tipo_Pagamento VARCHAR(30) NOT NULL,
  Data TIMESTAMP,
  FOREIGN KEY (VendedorID) REFERENCES Vendedor(VendedorID),
  FOREIGN KEY (ClienteID) REFERENCES loja_db.public.Cliente(ClienteID)
);

-- Querie para vizualizar os dados da tabela vendas
SELECT * FROM loja_db.public.vendas;

-- Criação da tabela com informações de cada produto vendido
CREATE TABLE loja_db.public.Produto_Vendido(
  Produto_Vendido_ID SERIAL PRIMARY KEY,
  VendaID SMALLINT,
  ProdutoID SMALLINT,
  Quantidade INT NOT NULL,
  FOREIGN KEY (VendaID) REFERENCES loja_db.public.Vendas(VendaID),
  FOREIGN KEY (ProdutoID) REFERENCES loja_db.public.Produto(ProdutoID)
);

-- Querie para vizualizar os dados da tabela Produto_vendido
SELECT * FROM loja_db.public.Produto_Vendido;
