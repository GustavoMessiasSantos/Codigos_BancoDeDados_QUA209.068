create database exercicioC_11_09_2023;

use exercicioC_11_09_2023;

create table Produtos(
   ID_produto int primary key,
   Produto varchar(100)
);
#drop table Produtos;
create table Vendas(
     ID_vendas int primary key,
     status_vendas varchar(100),
     quantidade_produto int,
     ID_produto int,
     foreign key (ID_produto) references Produtos(ID_produto)
);

insert into Produtos (ID_produto, Produto) values
(1, "Sabonete"),
(2, "Shampoo"),
(3, "Condicionador");

insert into Vendas(ID_vendas, status_vendas, quantidade_produto, ID_produto) values
(1, "Em Estoque", 10, 1),
(2, "Em Estoque", 5, 2),
(3, "Esgotou", 0, 3);

Select Produtos.ID_Produto, Produtos.Produto, Vendas.status_vendas, Vendas.quantidade_produto 
from Produtos right join Vendas on Produtos.ID_produto = Vendas.ID_vendas;