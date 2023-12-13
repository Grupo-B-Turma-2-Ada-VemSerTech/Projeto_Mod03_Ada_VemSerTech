# Projeto_Mod03_Ada_VemSerTech

Repositório dedicado ao projeto final do módulo 3 - banco de dados - do programa **#vemsertech**. 
Organizado por *Adatech e Ifood*

***Professor da Disciplina:***
- <i class="fa fa-star"></i> :star:
 **Matheus Andrade**
 
**Participantes:** 
- <i class="fa fa-lightbulb"></i> :bulb:
**Adriely**
- <i class="fa fa-lightbulb"></i> :bulb:
**Amanda**
- <i class="fa fa-lightbulb"></i> :bulb:
**Daniel**
- <i class="fa fa-lightbulb"></i> :bulb:
**Leticia**
- <i class="fa fa-lightbulb"></i> :bulb:
 **Lorrany**
- <i class="fa fa-lightbulb"></i> :bulb:
**Ricardo**
- <i class="fa fa-lightbulb"></i> :bulb:
**Thiago**

## Projeto: Desenvolvimento de Sistema de Banco de Dados Personalizado para Diferentes Segmentos de Negócios.



### Descrição:
Escolha um tipo de negócio do interesse do grupo para desenvolver um sistema de gerenciamento completo, desde a modelagem inicial até a implementação funcional do banco de dados.

### Instruções:

1. <i class="fa fa-check"></i> :heavy_check_mark:
 **Escolha do Tipo de Negócio:**
   - Cada grupo deve escolher um tipo de negócio para o qual desenvolverá o sistema de gerenciamento. Pode ser um comércio varejista, restaurante, empresa de serviços, entre outros.

2. <i class="fa fa-check"></i> :heavy_check_mark:
 **Modelagem Conceitual:**
   - Elabore um Modelo Entidade Relacionamento (MER) para o sistema do tipo de negócio escolhido. Identifique entidades, relacionamentos, tipos de atributos e cardinalidades. Garanta a integridade de entidade e referencial no modelo conceitual.

3. <i class="fa fa-check"></i> :heavy_check_mark:
 **Mapeamento para o Modelo Lógico:**
   - Transforme o MER em um modelo relacional. Defina tabelas, esquemas, tuplas e atributos. Estabeleça chaves primárias e estrangeiras.

4. <i class="fa fa-check"></i> :heavy_check_mark:
 **Normalização do Banco de Dados:**
   - Aplique técnicas de normalização para garantir eficiência e integridade. Documente as vantagens e desvantagens do processo de normalização.

5. <i class="fa fa-check"></i> :heavy_check_mark:
 **Implementação do Banco de Dados:**
   - Utilize o PostgreSQL para criar o banco de dados conforme o modelo lógico. Insira dados iniciais representativos no banco. Os dados podem ser fictícios ou de alguma fonte disponível na internet.

6. <i class="fa fa-check"></i> :heavy_check_mark:
 **Criação de Views:**
   - Identifique cenários onde a criação de views pode ser benéfica.
   - Desenvolva views relevantes para consultas específicas no contexto do sistema do tipo de negócio escolhido. Utilize as operações aprendidas em aulas, como agregações, junções, entre outras.

<i class="fa fa-star"></i> :star: <i class="fa fa-star"></i> :star: <i class="fa fa-star"></i> :star: <i class="fa fa-star"></i> :star:<i class="fa fa-star"></i> :star: <i class="fa fa-star"></i> :star: <i class="fa fa-star"></i> :star: <i class="fa fa-star"></i> :star: <i class="fa fa-star"></i> :star:<i class="fa fa-star"></i> :star: <i class="fa fa-star"></i> :star: <i class="fa fa-star"></i> :star: <i class="fa fa-star"></i> :star: <i class="fa fa-star"></i> :star:<i class="fa fa-star"></i> :star: <i class="fa fa-star"></i> :star: <i class="fa fa-star"></i> :star: <i class="fa fa-star"></i> :star: <i class="fa fa-star"></i> :star:<i class="fa fa-star"></i> :star:<i class="fa fa-star"></i> :star: <i class="fa fa-star"></i> :star: <i class="fa fa-star"></i> :star: <i class="fa fa-star"></i> :star:<i class="fa fa-star"></i> :star: <i class="fa fa-star"></i> :star: <i class="fa fa-star"></i> :star: <i class="fa fa-star"></i> :star: <i class="fa fa-star"></i> :star:<i class="fa fa-star"></i> :star: <i class="fa fa-star"></i> :star: <i class="fa fa-star"></i> :star: <i class="fa fa-star"></i> :star: <i class="fa fa-star"></i> :star:<i class="fa fa-star"></i> :star: <i class="fa fa-star"></i> :star: <i class="fa fa-star"></i> :star: <i class="fa fa-star"></i> :star: 

##                                  Execução do Projeto:

-  <i class="fa fa-check"></i> :heavy_check_mark: O Tipo de Negócio escolhido foi uma Loja de Roupas, onde as vendas são realizadas de forma presencial. Com isso elencamos os Produtos, Fornecedores, Clientes, Vendas, Vendedores e Tipo de Produto vendido como *Tabelas*, cada um com suas respectivas *Colunas*. Abaixo, é possível ter a visão desse Modelo através do Modelo MER.

  *Modelo MER*
       ![Modelo MER](https://github.com/Grupo-B-Turma-2-Ada-VemSerTech/Projeto_Mod03_Ada_VemSerTech/blob/e15f012d2b8ef83834df903243659d3db817f0a1/Grupo_B-MER.jpg)

-  <i class="fa fa-check"></i> :heavy_check_mark: Tendo criado o tipo do negócio iniciamos a criação do modelo DER, onde pudemos inserir as Entidades e Relacionamentos com seus respectivos formatos, trabalhando assim con Chaves Primárias e Chaves Estrangeiras, mostrando as conexões entre si.

  *Modelo DER*
      ![Modelo DER](https://github.com/Grupo-B-Turma-2-Ada-VemSerTech/Projeto_Mod03_Ada_VemSerTech/blob/0afa457f41c323e0ea599ccc577a09502ea27fae/Grupo_B-DER%20.jpg)

-  <i class="fa fa-check"></i> :heavy_check_mark: Separamos o Projeto em Files, que estão aqui, inseridos em códigos no VsCode, porém, sugerimos que siga a ordem das descrições na Ferramenta Postgree, afim de criar e executar todos os códigos
* [Link para loja_criacao_tabelas.sql](https://github.com/Grupo-B-Turma-2-Ada-VemSerTech/Projeto_Mod03_Ada_VemSerTech/blob/96bc2126d0627e93d4d8944325216f59f83d6d2f/loja_criacao_tabelas.sql) :link:
Aqui temos os comandos para criação do Banco de Dados, nomeado como loja_db, e a criação das tabelas:

Cliente

Produto

Vendedor

Vendas

Produto_Vendido

Cada uma dessas tabelas possuem suas respectivas colunas, já com o formato de cada Dado e também o comando FOREIGN KEY onde inserimos as chaves estrangeiras para conexão entre as colunas.
Nesse mesmo File também colocamos comandos de adição de uma nova coluna com seus respectivos dados, afim de mostrar como funcionam os comandos: ALTER TABLE, ALTER TABLE, UPDATE e SET.

Após a execução dos comandos dessa Query,  teremos o banco de dados e as respectivas tabelas devidamente criadas;

* [Link para dados.sql](https://github.com/Grupo-B-Turma-2-Ada-VemSerTech/Projeto_Mod03_Ada_VemSerTech/blob/96bc2126d0627e93d4d8944325216f59f83d6d2f/dados.sql) :link:
Nesse file, inserimos os dados do nosso Banco, optamos em não usar um arquivo .csv, e fizemos toda a ciração, formatação e edição dos dados.
No decorrer do projeto, usando apenas o comando SERIAL PRIMARY KEY, verificamos que conforme nossos ids eram criados, seguia-se uma sequência por inserção de dados, e queríamos que o id de cada tabela iniciasse em 1, para melhor organizar o BD, então optamos na inserção dos valores usar o comando: 
CREATE SEQUENCE inc_cliente
  start 1
  increment 1;
Com isso deixamos nosso Banco de Dados mais eficiente e com um visual mais clean.
Dessa forma, na Query constam todos os dados que populam o Banco de Dados loja_db


* [Link para querries.sql](https://github.com/Grupo-B-Turma-2-Ada-VemSerTech/Projeto_Mod03_Ada_VemSerTech/blob/96bc2126d0627e93d4d8944325216f59f83d6d2f/querries.sql) :link:
Aqui temos a criaçao de algumas VIEWs, usando os comandos CREATE VIEW, JOIN, ORDER BY, dentre outros aprendidos em aula. 

<i class="fa fa-cloud"></i> :cloud: Primeira View: calcula o preço do Produto;

<i class="fa fa-cloud"></i> :cloud: Segunda View:  calcula o total por compra;

<i class="fa fa-cloud"></i> :cloud: Terceira View: calcula o total de venda calculada usando a tabela vendas como base;

<i class="fa fa-cloud"></i> :cloud: Quarta View: onde visualizamos o nome do Vendedor, Cliente, Id da Venda e Valor total

<i class="fa fa-cloud"></i> :cloud: Quinta,Sexta e Sétima View: compõe a Unidade de Negócio chamda Balanço das Vendas, onde é o possível ter uma visualização importante para tomadas de decisões.

<i class="fa fa-cloud"></i> :cloud: A última view, é um relatório de cliente que exibe o valor total gasto por cada cliente. 
Permitindo a visualização dos clientes que mais gastam em ordem decrescente. 
A agregação do valor total por cliente é realizada utilizando uma coluna que foi criada em outra view. Essa abordagem permite tratar a view como se fosse uma tabela. Além disso, na mesma view, adicionamos uma coluna de idade calculada a partir da data de nascimento presente na tabela do cliente. 
Optamos por criar uma view não materializada para garantir que a idade seja recalculada sempre que um novo registro for adicionado. 
Utilizamos o LEFT JOIN para assegurar que todos os clientes sejam incluídos no relatório, mesmo aqueles que não possuem vendas associadas.


<i class="fa fa-cloud"></i> :cloud:Criamos também um SELECT de quantidade de itens por categoria






* [Link para querries de Novas Compras.sql](https://github.com/Grupo-B-Turma-2-Ada-VemSerTech/Projeto_Mod03_Ada_VemSerTech/blob/e15f012d2b8ef83834df903243659d3db817f0a1/nova_compra.sql) :link:
Para fechar o Projeto, foi pensada numa view que pudesse ser capaz de encontrar um cliente por CPF e com isso acessar várias dimensões do Banco de Dados criado, como por exemplo: itens comprados com o seu respectivo id, tipo de pagamento utilizado e o total gasto numa compra por quantidade de produto agregado na venda.

<i class="fa fa-star"></i> :star: <i class="fa fa-star"></i> :star: <i class="fa fa-star"></i> :star: <i class="fa fa-star"></i> :star:<i class="fa fa-star"></i> :star: <i class="fa fa-star"></i> :star: <i class="fa fa-star"></i> :star: <i class="fa fa-star"></i> :star: <i class="fa fa-star"></i> :star:<i class="fa fa-star"></i> :star: <i class="fa fa-star"></i> :star: <i class="fa fa-star"></i> :star: <i class="fa fa-star"></i> :star: <i class="fa fa-star"></i> :star:<i class="fa fa-star"></i> :star: <i class="fa fa-star"></i> :star: <i class="fa fa-star"></i> :star: <i class="fa fa-star"></i> :star: <i class="fa fa-star"></i> :star:<i class="fa fa-star"></i> :star:<i class="fa fa-star"></i> :star: <i class="fa fa-star"></i> :star: <i class="fa fa-star"></i> :star: <i class="fa fa-star"></i> :star:<i class="fa fa-star"></i> :star: <i class="fa fa-star"></i> :star: <i class="fa fa-star"></i> :star: <i class="fa fa-star"></i> :star: <i class="fa fa-star"></i> :star:<i class="fa fa-star"></i> :star: <i class="fa fa-star"></i> :star: <i class="fa fa-star"></i> :star: <i class="fa fa-star"></i> :star: <i class="fa fa-star"></i> :star:<i class="fa fa-star"></i> :star: <i class="fa fa-star"></i> :star: <i class="fa fa-star"></i> :star: <i class="fa fa-star"></i> :star: 

Agradecemos a Oportunidade de aprendizadom por meio da *@Adatech* em parceiria com o *@Ifood*! 
E também as excelentes instruções feitas pelo Porfessor Matheus Andrade.
Muito obrigado!