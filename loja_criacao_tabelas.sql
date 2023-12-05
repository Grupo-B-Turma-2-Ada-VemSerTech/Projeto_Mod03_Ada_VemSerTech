CREATE DATABASE loja_db;

CREATE TABLE loja_db.public.fornecedor(
  FornecedorID SERIAL SMALLINT PRIMARY KEY,
  Nome VARCHAR (80) NOT NULL,
  CNPJ CHAR(14) NOT NULL,
  Telefone SMALLINT,
  Rua VARCHAR(30),
  Num_predial SMALLINT,
  Bairro VARCHAR (20),
  Cidade VARCHAR (30),
  Uf VARCHAR(2)

  constraint unique_cnpj_fornecedor unique(CNPJ)
);

CREATE TABLE loja_db.public.produto(
  produtoid SERIAL SMALLINT PRIMARY KEY,
  fornecedorid SMALLINT,
  categoria VARCHAR (30),
  Preco DECIMAL(10, 2) NOT NULL,
  quantidade SMALLINT

  FOREIGN KEY (fornecedorID) REFERENCES fornecedor(fornecedorID),
);

CREATE TABLE vendedor(
  vendedorID SERIAL SMALLINT PRIMARY KEY,
  Fname varchar(10) NOT NULL,
  Minit char(3),
  Lname varchar(10)
);

CREATE TABLE loja.db.public.cliente(
  clienteID SERIAL SMALLINT PRIMARY KEY,
  Fname varchar(10) NOT NULL, -- first name
  Minit char(3), -- middle initial
  Lname varchar(10), -- last name
  CPF char(11) not null,
  Genero - VARCHAR(1) CHECK (Genero IN ('M', 'F')), -- Restrição M ou F
  Idade - SMALLINT,
  Rua- VARCHAR(30),
  "Nº residencial" SMALLINT,,
  Bairro - VARCHAR (20),
  Cidade - VARCHAR (30),
  CEP - INTEGER,
  UF - VARCHAR(2),

  constraint unique_cpf_client unique(CPF)
);


CREATE TABLE loja_db.public.vendas(
  vendaid SERIAL INTEGER PRIMARY KEY,
  produtoid SMALLINT,
  clienteid SMALLINT,
  valor DOUBLE PRECISION NOT NULL,
  tipo_Pagamento VARCHAR(30) NOT NULL,
  cidade_venda VARCHAR(50) NOT NULL,
  data TIMESTAMP
  
  FOREIGN KEY (produtoID) REFERENCES produto(produtoID),
  FOREIGN KEY (clienteID) REFERENCES cliente(clienteID),
);