create database exercicio_11_09_2023;

use exercicio_11_09_2023;

create table Clientes(
      Id_Cliente int primary key auto_increment,
      Nome_Cliente varchar(100),
      Endereco_Cliente varchar(255)
);

create table Pedidos(
     Id_Pedido int primary key,
	 Id_Cliente int,
     Numero_Pedido varchar(255),
     Data_Pedido date,
     Status_Pedido varchar(100),
     foreign key (Id_Cliente) references Clientes(Id_Cliente)
);
#drop table Clientes;
INSERT INTO Clientes (Id_Cliente, Nome_Cliente, Endereco_Cliente)
VALUES
    (1, 'João', 'Rua A, 123'),
    (2, 'Maria', 'Avenida B, 456'),
    (3, 'Carlos', 'Travessa C, 789');

INSERT INTO Pedidos (Id_Pedido, Id_Cliente, Numero_Pedido, Data_Pedido, Status_Pedido)
VALUES
    (101, 1, 'Pedido 1', '2023-09-01', 'Em andamento'),
    (102, 2, 'Pedido 2', '2023-09-02', 'Concluído'),
    (103, 2, 'Pedido 3', '2023-09-03', 'Em andamento'),
    (104, 3, 'Pedido 4', '2023-09-04', 'Concluído');
 
 
SELECT Pedidos.Id_Pedido, Clientes.Nome_Cliente, Clientes.Endereco_Cliente, Pedidos.Numero_Pedido, Pedidos.Data_Pedido, Pedidos.Status_Pedido
FROM Pedidos
INNER JOIN Clientes ON Pedidos.Id_Cliente = Clientes.Id_Cliente;
