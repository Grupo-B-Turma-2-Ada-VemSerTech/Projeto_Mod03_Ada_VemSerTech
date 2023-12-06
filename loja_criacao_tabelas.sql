CREATE DATABASE loja_db;

CREATE TABLE loja_db.public.Cliente(
  ClienteID SERIAL PRIMARY KEY,
  Nome_cliente varchar(40) NOT NULL,
  Cpf char(11) not null,
  Genero VARCHAR(1) CHECK (Genero IN ('M', 'F')), -- Restrição M ou F
  Idade SMALLINT,
  Rua VARCHAR(30),
  "Nº residencial" SMALLINT,
  Bairro VARCHAR (20),
  Bidade VARCHAR (30),
  Cep INTEGER,
  Uf VARCHAR(2),

  constraint unique_cpf_client unique(CPF)
);
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

CREATE TABLE loja_db.public.Produto(
  ProdutoID SERIAL PRIMARY KEY,
  Nome VARCHAR(150),
  FornecedorID SMALLINT,
  Categoria VARCHAR (30),
  Preco DECIMAL(10, 2) NOT NULL,
  Quantidade SMALLINT,

  FOREIGN KEY (FornecedorID) REFERENCES Fornecedor(FornecedorID)
);

CREATE TABLE loja_db.public.Vendas(
  VendaID SERIAL PRIMARY KEY,
  ProdutoID SMALLINT,
  ClienteID SMALLINT,
  VendaID DOUBLE PRECISION NOT NULL,
  Tipo_Pagamento VARCHAR(30) NOT NULL,
  Cidade_venda VARCHAR(50) NOT NULL,
  data TIMESTAMP,
  
  FOREIGN KEY (ProdutoID) REFERENCES Croduto(ProdutoID),
  FOREIGN KEY (ClienteID) REFERENCES Cliente(ClienteID)
);

CREATE TABLE Vendedor(
  VendedorID SERIAL PRIMARY KEY,
  Nome_vendedor varchar(30) NOT NULL
);
