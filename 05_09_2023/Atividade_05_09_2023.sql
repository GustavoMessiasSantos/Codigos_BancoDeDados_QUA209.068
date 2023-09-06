/*1.Suponha uma tabela "Funcionários" com os atributos: ID do Funcionário (chave
primária), Nome do Funcionário, Departamento e Localização do Departamento
(cidade e estado). Determine se esta tabela está em 3FN e explique sua
resposta.*/

/*A tabela "Funcionarios" não atende aos requisitos da 3FN pois o atributo
"Localização do departamento(cidade e estado) depende do atributo Departamento e não do
atributo de chave primária ID do funcionário."
/*******************************************************************************************/

/*2.Você tem uma tabela "Encomendas" com os seguintes atributos: Número da
Encomenda (chave primária), ID do Cliente, Nome do Cliente, e Cidade de
Entrega. Avalie se esta tabela está em 3FN ou não e explique seu raciocínio.

/* A tabela "Encomendas" não está em 3ª Forma Normal (3FN), pois O atributo "Cidade de Entrega" 
depende do "ID do Cliente", e não exatamente do número da encomenda. 
/*********************************************************************************************/

/*3.Considere uma tabela "Produtos" com os atributos: ID do Produto (chave
primária), Nome do Produto, Categoria do Produto e Nome do Fornecedor. Analise
se esta tabela está em 3FN ou não e justifique sua resposta.*/

/*A tabela "Produtos" está em 3ª Forma Normal (3FN) porque não há dependencias transitivas e suas
dependências parciais e atingiram grau de nulidade.*/

/***********************************************************************************************/
/*4.Dada uma tabela "Escolas" com os atributos: ID da Escola (chave primária),
Nome da Escola, Nome do Diretor e Endereço do Diretor. Determine se esta tabela
está em 3FN ou não, e forneça uma explicação.*/

/*A tabela "Escolas" não está em (3FN), pois o atributo "Endereço do Diretor" depende do "Nome do Diretor"
fazendo com que ele não seja uma chave candidata.*/
/********************************************************************************************************/

/*5.Suponha uma tabela "Pedidos" com os atributos: Número do Pedido (chave
primária), Produto, ID do Cliente, Nome do Cliente e Estado do Cliente. Avalie
se esta tabela está em 3FN ou não e explique por quê.*/

/*A tabela "Pedidos" não está em 3ª Forma Normal (3FN) porque
o atributo "Estado do Cliente" depende do "ID do Cliente" e não diretamente do "Número do Pedido"*/

/*6.Você possui uma tabela "Projetos" com os seguintes atributos: ID do
Projeto (chave primária), Nome do Projeto, ID do Gerente do Projeto, Nome do
Gerente e Departamento do Gerente. Determine se esta tabela está em 3FN e
justifique sua resposta.*/

/*A tabela "Projetos" não está em (3FN) porque O atributo "Departamento do Gerente" depende do 
"ID do Gerente do Projeto", ou seja ele não é uma chave candidata.*/


