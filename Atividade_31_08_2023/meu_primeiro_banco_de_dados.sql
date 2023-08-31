#Cria um banco de dados
CREATE DATABASE primeiro_banco_de_dados;

#Usa um banco de dados
USE primeiro_banco_de_dados;

#Cria uma tabela
CREATE TABLE pessoa(
     nome varchar(50),
     idade int,
     altura double,
     genero varchar(1)
);

#Vizualizar as tabelas
SHOW TABLES;

DESC pessoa;

#Exemplos de valores do banco
INSERT INTO pessoa VALUES("Gustavo", 24, 1.80, "M");
INSERT INTO pessoa(nome, idade) VALUES("Maria", 89);
INSERT INTO pessoa VALUES("Jose", 69, 1.55, "M"),
("Vanessa", 32, 1.85, "F");

#Mostra todos os dados da tabela
SELECT * FROM pessoa;

#Varchar = caracteres variantes
#Char = tamanho fixo
#binary = numeros binarios
#bloob = salvar imagens
#longtext = textos longos a partir de 255 caracteres
# 4,294,967,295 numero maximo de caracteres
#enum = dados pre-definidos

CREATE TABLE pedido(
      nome_produto varchar(50),
      quantidade integer,
      preco double(6,2),
      pedido_status enum("preparando", "a caminho", "entregue", "cancelado")
);

INSERT INTO pedido(nome_produto, quantidade, preco, pedido_status) VALUES("Coxinha", 100, 1.99, "a caminho");
INSERT INTO pedido(nome_produto, quantidade, preco, pedido_status) VALUES("Bolinha de Queijo", 100, 1.99, "a caminho");
INSERT INTO pedido(nome_produto, quantidade, preco, pedido_status) VALUES("Kibe", 100, 1.99, "a caminho");
INSERT INTO pedido(nome_produto, quantidade, preco, pedido_status) VALUES("Refrigerante", 1, 6.99 , "a caminho");
INSERT INTO pedido(nome_produto, quantidade, preco, pedido_status) VALUES("Esfiha", 5, 3.9999, 3);

SELECT * FROM pedido;

#Apaga os dados da tabela
#DROP TABLE pedido;

#retornar os dados de pessoa
select nome, idade from pessoa;

#select = projete
select(3 * 2);

select nome, idade from pessoa where genero = "M";
select idade from pessoa where nome = "Gustavo";

insert into pessoa values ("Roberto de Souza Lima", 32, 1.90, "M");

select idade from pessoa where nome = "Roberto";
select nome, idade from pessoa where nome like "%Roberto%";

#inserir 10 dados na tabela de cliente
#nome, idade, cpf, endereço, telefone;

CREATE table cliente(
         nome varchar(50),
         idade integer,
         cpf varchar(16),
         endereco varchar(75),
         telefone varchar(15)
);
#drop table cliente;
insert into cliente values ("Igor Dias Oliveira", 19, "923.685.287-41", "Rua Goiânia, 963 Canoas-RS 92340-280", "(51) 5264-6203");
insert into cliente values ("Nicolas Fernandes Dias", 48, "417.039.589-18", "Rua Dom Pedro, 489 Itaguaí-RJ 23826-460", "(21) 9924-9310");
insert into cliente values ("Davi Castro Goncalves", 71, "651.858.905-17", "Rua Antônio Diogo, 1705 Fortaleza-CE 60182-310", "(85) 6338-3800");
insert into cliente values ("Renan Carvalho Gomes", 68, "696.037.616-56", "Rua Jorge Elias Alfim, 193 Barbacena-MG 36201-034", "(32) 8325-6463");
insert into cliente values ("Gabrielle Fernandes Almeida", 21, "796.179.553-77", "Rua Sebastião Monteiro dos Santos, 161 Limeira-SP 13484-329", "(19) 7706-4527");
insert into cliente values ("Alice Oliveira Alves", 54, "482.406.407-45", "Avenida Coelho, 706 Salvador-BA 40470-300", "(71) 6099-7060");
insert into cliente values ("Paulo Carvalho Martins", 83, "491.019.018-00", "Rua Izolino Gonçalves Coelho, 935 Juiz de Fora-MG 36038-210", "(32) 4162-6311");
insert into cliente values ("André Ferreira Castro", 63, "616.572.599-60", "Rua Garaúma, 772 Guarulhos-SP 07054-100", "(11) 5389-8336");
insert into cliente values ("Giovanna Correia Costa", 20, "560.322.377-45", "Rua Oito, 1148 Suzano-SP 08655-765", "(11) 9853-5698");
insert into cliente values ("Gabriel Araujo Oliveira", 59, "340.911.929-98", "Rua Cinqüenta e Oito, 465 Governador Valadares-MG 35012-360", "(33) 9636-4419");

#desc cliente;
select nome, telefone from cliente where idade > 30 and cpf like "%123%";
select nome, telefone from cliente where idade > 30 or cpf like "%123%";

#as = alias, mostre o dado como 
select count(*) as "contador de cadastros" from cliente;

select count(telefone), nome from cliente group by nome order by nome;

select nome from cliente where cpf is null;

insert into cliente values("João Kleber", null, "123.456.789-00", "Rua A, 123", "(00) 0000-0000"),
("Roberto Sousa", 25, null, "Rua B, 2534", "(69) 6969-0024");

update cliente set cpf = "253.418.670-00";

update cliente set cpf = "253.418.670-00" where nome = "Roberto Sousa";
update cliente set idade = 32 where nome = "João Kleber";

set sql_safe_updates = 0;

create table errada(
    nome varchar(50),
    autura double,
    pezo double
);

alter table errada add cpf varchar(20);

select * from errada;

desc errada;

alter table errada drop column autura;

alter table errada rename column pezo to peso;

alter table errada modify column peso double not null;

insert into errada values("luan", 100.50, "12345678910");

alter table errada modify column peso double not null first;
alter table errada modify column peso double not null after nome;

select concat(nome , " pesa ", peso, " e seu cpf é: ", cpf) as "informação" from errada;

delete from cliente where nome = "Renan Carvalho Gomes";
