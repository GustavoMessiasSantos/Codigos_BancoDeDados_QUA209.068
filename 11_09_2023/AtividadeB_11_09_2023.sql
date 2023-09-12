create database exercicioB_11_09_2023;

use exercicioB_11_09_2023;

create table Departamentos (
    ID_Departamento INT PRIMARY KEY,
    Nome_Departamento VARCHAR(255)
);

CREATE TABLE Funcionarios (
    ID_Funcionario INT PRIMARY KEY,
    Nome_Funcionario VARCHAR(255),
    ID_Departamento INT,
    FOREIGN KEY (ID_Departamento) REFERENCES Departamentos(ID_Departamento)
);

INSERT INTO Departamentos (ID_Departamento, Nome_Departamento)
VALUES
    (1, 'RH'),
    (2, 'Vendas'),
    (3, 'TI'),
    (4, 'Marketing'),
    (5, 'Finanças');

INSERT INTO Funcionarios (ID_Funcionario, Nome_Funcionario, ID_Departamento)
VALUES
    (101, 'Alice', 1),
    (102, 'Bob', 2),
    (103, 'Carol', 1),
    (104, 'David', NULL),
    (105, 'Eva', 3),
    (106, 'Frank', 4),
    (107, 'Grace', NULL);
    
SELECT Funcionarios.ID_Funcionario, Funcionarios.Nome_Funcionario, Departamentos.Nome_Departamento
FROM Funcionarios
LEFT JOIN Departamentos ON Funcionarios.ID_Departamento = Departamentos.ID_Departamento;