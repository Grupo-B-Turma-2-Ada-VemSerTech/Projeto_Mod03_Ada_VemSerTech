CREATE DATABASE loja_db;

CREATE TABLE loja_db.public.fornecedor(
  FornecedorID SERIAL PRIMARY KEY,
  Nome VARCHAR (80) NOT NULL,
  CNPJ CHAR(14) NOT NULL,
  Telefone SMALLINT,
  Rua VARCHAR(30),
  Num_predial SMALLINT,
  Bairro VARCHAR (20),
  Cidade VARCHAR (30),
  UF VARCHAR(2),

  CONSTRAINT unique_cnpj_fornecedor UNIQUE (CNPJ)
);

CREATE TABLE loja_db.public.produto(
  produtoid SERIAL PRIMARY KEY,
  fornecedorid SMALLINT,
  categoria VARCHAR (30),
  Preco DECIMAL(10, 2) NOT NULL,
  quantidade SMALLINT,

  FOREIGN KEY (fornecedorID) REFERENCES fornecedor(fornecedorID)
);

CREATE TABLE vendedor(
  vendedorID SERIAL PRIMARY KEY,
  Nome_vendedor varchar(30) NOT NULL
);

CREATE TABLE loja_db.public.cliente(
  clienteID SERIAL PRIMARY KEY,
  Nome_cliente varchar(40) NOT NULL,
  CPF char(11) not null,
  Genero VARCHAR(1) CHECK (Genero IN ('M', 'F')), -- Restrição M ou F
  Idade SMALLINT,
  Rua VARCHAR(30),
  "Nº residencial" SMALLINT,
  Bairro VARCHAR (20),
  Cidade VARCHAR (30),
  CEP INTEGER,
  UF VARCHAR(2),

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
