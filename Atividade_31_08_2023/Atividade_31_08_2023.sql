create database agenda;

use agenda;

create table agenda(
		nome varchar(50),
		endereco varchar(75),
        telefone varchar(15)
);
#drop table agenda;
insert into agenda values ("Igor Dias Oliveira", "Rua Goiânia, 963 Canoas-RS 92340-280", "(51) 5264-6203");
insert into agenda values ("Nicolas Fernandes Dias", "Rua Dom Pedro, 489 Itaguaí-RJ 23826-460", "(21) 9924-9310");
insert into agenda values ("Davi Castro Goncalves", "Rua Antônio Diogo, 1705 Fortaleza-CE 60182-310", "(85) 6338-3800");
insert into agenda values ("Renan Carvalho Gomes", "Rua Jorge Elias Alfim, 193 Barbacena-MG 36201-034", "(32) 8325-6463");
insert into agenda values ("Gabrielle Fernandes Almeida", "Rua Sebastião Monteiro dos Santos, 161 Limeira-SP 13484-329", "(19) 7706-4527");
insert into agenda values ("Alice Oliveira Alves", "Avenida Coelho, 706 Salvador-BA 40470-300", "(71) 6099-7060");
insert into agenda values ("Paulo Carvalho Martins", "Rua Izolino Gonçalves Coelho, 935 Juiz de Fora-MG 36038-210", "(32) 4162-6311");
insert into agenda values ("André Ferreira Castro", "Rua Garaúma, 772 Guarulhos-SP 07054-100", "(11) 5389-8336");
insert into agenda values ("Giovanna Correia Costa", "Rua Oito, 1148 Suzano-SP 08655-765", "(11) 9853-5698");
insert into agenda values ("Gabriel Araujo Oliveira", "Rua Cinqüenta e Oito, 465 Governador Valadares-MG 35012-360", "(33) 9636-4419");

select * from agenda;
select count(*) as "Numero de registros" from agenda;
select concat(nome, " morador de ", endereco, " telefone: ", telefone) as "informação" from agenda;

create database cliente;

create table cliente(
        nome varchar(50),
         idade integer,
         cpf varchar(16),
         endereco varchar(75),
         email varchar(50),
         telefone varchar(15)
);

insert into cliente values("Thiago Castro Correia", 49, "345.995.238-52", "Rua Bartolomeu Bueno da Silva, 565 Jundiaí-SP 13201-102", "ThiagoCastroCorreia@teleworm.us", "(11) 8086-3503");
insert into cliente values("Miguel Azevedo Carvalho", 44, "600.573.715-55", "Quadra Quadra 508 Conjunto 13, 711 Recanto das Emas-DF 72660-065", "MiguelAzevedoCarvalho@teleworm.us", "(61) 6099-4893");
insert into cliente values("Bianca Lima Gomes", 71, "566.731.338-30", "Rua Palestina, 487 Jandira-SP 06622-230", "BiancaLimaGomes@teleworm.us", "(11) 4984-3788");
insert into cliente values("Isabella Martins Alves", 80, "377.780.387-14", "Rua Pensilvânia, 664 Camaragibe-PE 54768-302", "IsabellaMartinsAlves@teleworm.us", "(81) 4456-9358");
insert into cliente values("Thiago Melo Barbosa", 19, "589.605.918-31", "Rua Martinésia, 327 São Paulo-SP 05322-030", "ThiagoMeloBarbosa@jourrapide.com", "(11) 4645-3621");
insert into cliente values("Lucas Castro Pereira", 43, "808.382.589-13", "Rua Padre Custódio, 1755 Cruz Alta-RS 98030-050", "LucasCastroPereira@jourrapide.com", "(55) 9909-8575");
insert into cliente values("Erick Cardoso Oliveira", 53, "474.179.417-29", "Rua Salvador Filardi, 1050 Bauru-SP 17051-110", "ErickCardosoOliveira@rhyta.com", "(14) 5180-8245");
insert into cliente values("Giovana Carvalho Gomes", 57, "205.816.978-63", "Rua Coronel Luiz Carlos de Moraes, 1234 Porto Alegre-RS 90040-220", "GiovanaCarvalhoGomes@jourrapide.com", "(51) 5347-6670");
insert into cliente values("Raissa Alves Rodrigues", 44, "385.983.122-40", "Rua Onze, 373 Pelotas-RS 96090-490", "RaissaAlvesRodrigues@dayrep.com", "(53) 7157-4109");
insert into cliente values("Ana Alves Fernandes", 51, "746.938.917-20", "Rua Vinte e Um de Abril, 450 Redenção-PA 68550-390", null, "(94) 4742-6128");
insert into cliente values("João Castro Silva", 42, "869.446.430-65", "Rua Correia de Sá, 1681 Jaboticabal-SP 14883-408", null, "(16) 8475-3296");
insert into cliente values("Nicole Barbosa Santos", 56, "391.951.624-96", "Rua L, 1991 Cacoal-RO 78975-180", "NicoleBarbosaSantos@teleworm.us", null);
insert into cliente values("Melissa Costa Dias", 36, "391.306.943-70", "2ª Travessa da Paz, 1522 Salvador-BA 40323-805", "MelissaCostaDias@teleworm.us", "(71) 3782-6262");
insert into cliente values("Ryan Barbosa Souza", 59, "445.361.507-81", "Rua São Silvestre, 704 São Paulo-SP 04255-080", null, "(11) 2208-9583");
insert into cliente values("Vinicius Oliveira Melo", 36, "252.967.683-61", "Rua Cariacica, 1144 Vila Velha-ES 29122-510", "ViniciusOliveiraMelo@armyspy.com", null);

select * from cliente;
select * from cliente where telefone is null;
select * from cliente where email is null;

select nome from cliente where (telefone or  email) is null;
