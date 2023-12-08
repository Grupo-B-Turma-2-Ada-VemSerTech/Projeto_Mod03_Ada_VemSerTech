CREATE TABLE loja_db.public.Cliente(
  ClienteID SERIAL PRIMARY KEY,
  Nome_cliente varchar(40) NOT NULL,
  Cpf char(11) not null,
  Genero VARCHAR(1) CHECK (Genero IN ('M', 'F')),
  Idade SMALLINT,
  Rua VARCHAR(30),
  "Nº residencial" SMALLINT,
  Bairro VARCHAR (20),
  Cidade VARCHAR (30),
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
  Nome_produto VARCHAR(80) NOT NULL,
  FornecedorID SMALLINT,
  Categoria VARCHAR (30),
  Cor VARCHAR (30),
  Tamanho VARCHAR (5),
  Preco DECIMAL(10, 2) NOT NULL,
  Quantidade_estoque SMALLINT,
  FOREIGN KEY (FornecedorID) REFERENCES Fornecedor(FornecedorID)
);

CREATE TABLE Vendedor(
  VendedorID SERIAL PRIMARY KEY,
  Nome_vendedor varchar(30) NOT NULL
);

CREATE TABLE loja_db.public.Vendas(
  VendaID SERIAL PRIMARY KEY,
  VendedorID SMALLINT,
  ClienteID SMALLINT,
  Valor_Total DECIMAL(10, 2) NOT NULL, 
  Tipo_Pagamento VARCHAR(30) NOT NULL,
  Data TIMESTAMP,
  FOREIGN KEY (VendedorID) REFERENCES Vendedor(VendedorID),
  FOREIGN KEY (ClienteID) REFERENCES loja_db.public.Cliente(ClienteID)
);

CREATE TABLE loja_db.public.Produto_Vendido(
  Produto_Vendido_ID SERIAL PRIMARY KEY,
  VendaID SMALLINT,
  ProdutoID SMALLINT,
  Quantidade INT NOT NULL,
  FOREIGN KEY (VendaID) REFERENCES loja_db.public.Vendas(VendaID),
  FOREIGN KEY (ProdutoID) REFERENCES loja_db.public.Produto(ProdutoID)
);

SELECT * FROM loja_db.public.vendedor;
