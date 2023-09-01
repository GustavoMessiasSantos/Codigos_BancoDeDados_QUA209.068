create database banco_primeira_forma;
use banco_primeira_forma;

create table pessoa(
    id integer primary key auto_increment,
    cpf varchar(14) unique,
    telefone varchar(20),
    logradouro varchar(100),
    estado varchar(2),
    numero_casa varchar(10),
    bairro varchar(50),
    cep varchar(10)
);

insert into pessoa values(null, "000.000.000-00", "69 99669-6969", "Lote", "PR", "666", "Bairro Área Rural de Rolândia, Rolândia", "86600-000");
insert into pessoa values(null, "000.000.000-00", "69 99669-6969", "Lote", "PR", "666", "Bairro Área Rural de Rolândia, Rolândia", "86600-000");
#insert into pessoa values(null, "123.456.789-10", "66 666852-7325", "Area comercial", "PI", "89", "Bairro da Chica Beba, Butecao da dona Selma", "78980-660");