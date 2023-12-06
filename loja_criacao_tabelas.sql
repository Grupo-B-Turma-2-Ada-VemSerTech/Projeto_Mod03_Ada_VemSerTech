CREATE DATABASE loja_db;

CREATE TABLE loja_db.public.fornecedor(
  FornecedorID SERIAL PRIMARY KEY,
  Nome VARCHAR (80) NOT NULL,
  cnpj CHAR(14) NOT NULL,
  telefone VARCHAR(20),
  rua VARCHAR(30),
  num_predial SMALLINT,
  bairro VARCHAR (20),
  cidade VARCHAR (30),
  uf VARCHAR(2),

  CONSTRAINT unique_cnpj_fornecedor UNIQUE (CNPJ)
);

CREATE TABLE loja_db.public.produto(
  produtoid SERIAL PRIMARY KEY,
  nome VARCHAR(150),
  fornecedorid SMALLINT,
  categoria VARCHAR (30),
  preco DECIMAL(10, 2) NOT NULL,
  quantidade SMALLINT,

  FOREIGN KEY (fornecedorID) REFERENCES fornecedor(fornecedorID)
);

CREATE TABLE vendedor(
  vendedorID SERIAL PRIMARY KEY,
  nome_vendedor varchar(30) NOT NULL
);

CREATE TABLE loja_db.public.cliente(
  clienteID SERIAL PRIMARY KEY,
  nome_cliente varchar(40) NOT NULL,
  cpf char(11) not null,
  genero VARCHAR(1) CHECK (Genero IN ('M', 'F')), -- Restrição M ou F
  idade SMALLINT,
  rua VARCHAR(30),
  "Nº residencial" SMALLINT,
  bairro VARCHAR (20),
  cidade VARCHAR (30),
  cep INTEGER,
  uf VARCHAR(2),

  constraint unique_cpf_client unique(CPF)
);


CREATE TABLE loja_db.public.vendas(
  vendaid SERIAL PRIMARY KEY,
  produtoid SMALLINT,
  clienteid SMALLINT,
  valor DOUBLE PRECISION NOT NULL,
  tipo_Pagamento VARCHAR(30) NOT NULL,
  cidade_venda VARCHAR(50) NOT NULL,
  data TIMESTAMP,
  
  FOREIGN KEY (produtoID) REFERENCES produto(produtoID),
  FOREIGN KEY (clienteID) REFERENCES cliente(clienteID)
);
