create database atividade_04_09_2023;
use atividade_04_09_2023;

/*1.Considere
uma tabela de banco de dados chamada "Pedidos" com os seguintes
atributos: ID do Pedido (chave primária), Nome do Cliente, Endereço do Cliente
e Produto do Pedido. Explique
se esta tabela está em 2FN ou não, e justifique sua resposta.*/

create table Pedidos(
    idpedido int primary key auto_increment,
    nome_cliente varchar(255),
    endereco_cliente varchar(255),
    produto varchar(255)
);
/* Para fazer parte da 2FN precisa-se saber se alguns dos atributos fazem ou não
parte da chave primaria. Se o "Nome do Cliente", o "Endereço do Cliente" ou o "Produto do Pedido" 
dependessem apenas de uma parte da chave primária isso indicaria uma dependência parcial e a 
tabela não estaria em 2FN. Se todos esses atributos dependem da chave primária completa então a tabela estaria em 2FN
se não seriam necessárias algumas mudanças para que se atenda os critérios da 2FN.*/
/************************************************************************************************************************/
/*2.Você
possui uma tabela "Livros" com os seguintes atributos: ISBN (chave
primária), Título do Livro, Autor e Editora. Analise
se esta tabela está em 2FN ou não, e explique seu raciocínio.*/
create table Livros(
    ISBN varchar(14) primary key,
    Titulo_Livro varchar(255),
    Autor varchar(255),
    Editora varchar(255)
);
/* A tabela atende aos requisitos da 2FN pois, primeiramente atende aos requisitos da 1FN e como os atributos
que não são chaves são conectados a chave primária então ela atende aos requisitos da 2FN.*/
/*****************************************************************************************************************/
/*3.Dada
uma tabela "Funcionários" com os atributos: ID do Funcionário (chave
primária), Nome do Funcionário, Departamento e Endereço do Departamento,
determine se a tabela está em 2FN ou não, e forneça uma explicação.*/

create table Funcionarios(
	idfuncionario int primary key auto_increment,
    nome_funcionario varchar(255),
    departamento varchar(75),
    Endereco_Departamento varchar(255)
);
/* Para que esteja em conformidade com a 2FN é preciso dividir essa tabela em 2 uma para departamento e endereco
do departamento e uma para id do funcionario e seu nome com o departamento referindo-se a uma chave estrangeira 
que se relaciona com a tabela de departamentos.*/

/********************************************************************************************************************/
/*4.Suponha uma tabela "Cursos" com os seguintes atributos: Código do Curso (chave
primária), Nome do Curso, Professor e Departamento do Professor. Avalie se esta
tabela está em 2FN ou não e explique sua conclusão.*/
create table Cursos(
	Codigo_curso int primary key auto_increment,
	Nome_curso varchar(255),
    Professor varchar(255),
    Departamento_Professor varchar(255)
);
/* A tabela Cursos não está em 2FN, pois Departamento_Professor depende de Professor e não da chave primária
e para estar em 2FN todos os atributos devem depender da chave primária.
/****************************************************************************************************************/

/*5.Considere
uma tabela "Pedidos" com os atributos: Número do Pedido (chave
primária), Produto, Nome do Cliente e Cidade do Cliente. Determine se esta
tabela está em 2FN ou não, e dê razões para sua resposta.*/

create table Pedidos2(
	Numero_pedido int primary key auto_increment,
    produto varchar(255),
    nome_cliente varchar(255),
    cidade_cliente varchar(255)
);
/* A tabela Pedidos2 está em 2FN, pois os atributos secundários são dependendentes
da chave primária.*/
/*****************************************************************************************/

/*6.Você
tem uma tabela "Vendas" com os seguintes atributos: Número da Venda
(chave primária), Produto Vendido, Nome do Vendedor, Departamento do Vendedor e
Cidade do Cliente. Avalie se esta tabela está em 2FN ou não e explique por quê.*/

create table Vendas(
   numero_venda int primary key auto_increment,
   produto_vendido varchar(255),
   nome_vendedor varchar(255),
   departamento_vendedor varchar(255),
   cidade_cliente varchar(255)
);
/* Não atende aos requisitos da 2FN porque o departamento_vendedor depende apenas de nome_vendedor
e não da chave primaria, e para estar em 2FN é preciso que todos os atributos que não são chave dependam
da chave primária.
