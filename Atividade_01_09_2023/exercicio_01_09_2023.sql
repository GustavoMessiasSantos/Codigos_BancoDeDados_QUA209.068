#B. Considere a seguinte tabela não normalizada chamada "Livros":
#Reescreva a tabela "Livros" na Primeira Forma Normal (1FN).

create database livraria;
use livraria;

create table Livros(
    id integer primary key auto_increment,
    Titulo varchar(50),
    Autores varchar(50) unique,
    AnoPublicacao int
);
#drop table Livros_C;
insert into Livros values(null, "Aventuras", "Autor1", 2005);
insert into Livros values(null, "Aventuras", "Autor2", 2005);
insert into Livros values(null, "Aventuras", "Autor3", 2005);
insert into Livros values(null, "Romance", "Autor4", 2010);
insert into Livros values(null, "Ficção Cientifica", "Autor5", 2015);

select * from Livros;

/*Suponha que você esteja projetando um banco de dados para uma biblioteca.
Crie uma tabela chamada "Livros" que esteja na 1FN. A tabela deve conter
informações sobre os livros, incluindo ID do livro, título, autor, ISBN e ano de
publicação.*/

create table Livros_C(
	 id integer primary key auto_increment,
     Titulo varchar(50),
     Autores varchar(50) unique,
     ISBN VARCHAR(25),
     Ano_Publicação int
);

insert into Livros_C values(null, "Feira da Parangaba", "Zé da Manga", "ISBN: 978-1234567890", 2024);
insert into Livros_C values(null, "O poderoso Hamburgão", "Gordão dali", "ISBN: 978-9876543210", 2015);
insert into Livros_C values(null, "A viagem", "Brisonho", "ISBN: 420-85589960", 2034);
insert into Livros_C values(null, "Planeta dos Mamacos", "Orangotango", "ISBN: 978-9998887776", 2016);

select * from Livros_C;

/*Você está projetando um banco de dados para um sistema de gerenciamento
de vendas de uma loja de eletrônicos. Crie uma tabela chamada "Produtos" na
Primeira Forma Normal (1FN) para armazenar informações sobre os produtos
que a loja vende. A tabela deve incluir pelo menos os seguintes campos: ID do
produto, nome do produto, categoria do produto, quantidade e preço.*/

create table Produtos(
	   id int primary key auto_increment,
       Nome_produto varchar(75),
       Categoria varchar(50),
       quantidade int,
       preco double(10, 2)
);

insert into Produtos values(null, "Mouse Gamer", "Hardware", 25, 59.99);
insert into Produtos values(null, "Teclado Gamer", "Hardware", 13, 398.99);
insert into Produtos values(null, "Monitor Dell", "Hardware", 5, 799.99);
insert into Produtos values(null, "Windows 15", "Software", 10, 1000);
insert into Produtos values(null, "Fone JBL bluetooth", "Hardware", 5, 200.75);

select * from Produtos;
