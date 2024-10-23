DROP DATABASE IF EXISTS dblojatec;
CREATE DATABASE dblojatec;
USE dblojatec;

CREATE TABLE usuarios (
iduser INT PRIMARY KEY AUTO_INCREMENT,
usuario VARCHAR(50) NOT NULL,
fone VARCHAR(15),
login VARCHAR(15) NOT NULL UNIQUE,
senha VARCHAR(15) NOT NULL
);
INSERT INTO usuarios (usuario, fone, login, senha) VALUES
('Alice Silva', '123456789', 'alice123', 'senha123'),
('Bruno Costa', '987654321', 'bruno456', 'senha456'),
('Carla Santos', '555555555', 'carla789', 'senha789'),
('Daniel Oliveira', '111223344', 'daniel159', 'senha159'),
('Eduarda Lima', '222334455', 'eduarda258', 'senha258'),
('Felipe Almeida', '333445566', 'felipe369', 'senha369'),
('Gabriela Rocha', '444556677', 'gabriela741', 'senha741'),
('Hugo Martins', '555667788', 'hugo852', 'senha852'),
('Isabella Ferreira', '666778899', 'isabella963', 'senha963'),
('João Pereira', '777889900', 'joao159', 'senha159');

SELECT * FROM usuarios;
SHOW TABLES;

CREATE TABLE clientes(
idcli INT PRIMARY KEY AUTO_INCREMENT,
nomecli VARCHAR(50) NOT NULL,
endcli VARCHAR(100),
fonecli VARCHAR(15) NOT NULL,
emailcli VARCHAR(50)
);
INSERT INTO clientes (nomecli, endcli, fonecli, emailcli) VALUES
('Ana Souza', 'Rua A, 123', '123456789', 'ana.souza@example.com'),
('Carlos Silva', 'Avenida B, 456', '987654321', 'carlos.silva@example.com'),
('Fernanda Lima', 'Travessa C, 789', '555123456', 'fernanda.lima@example.com'),
('Gabriel Santos', 'Rua D, 321', '444987654', 'gabriel.santos@example.com'),
('Juliana Costa', 'Rua E, 654', '333555123', 'juliana.costa@example.com'),
('Ricardo Almeida', 'Avenida F, 987', '222444567', 'ricardo.almeida@example.com'),
('Mariana Rocha', 'Rua G, 159', '111222345', 'mariana.rocha@example.com'),
('Roberto Martins', 'Travessa H, 753', '666333789', 'roberto.martins@example.com'),
('Patrícia Ferreira', 'Rua I, 258', '777888900', 'patricia.ferreira@example.com'),
('Tiago Oliveira', 'Avenida J, 159', '888999111', 'tiago.oliveira@example.com');

SELECT * FROM clientes;
SHOW TABLES;

CREATE TABLE ordem_servico(
os INT PRIMARY KEY AUTO_INCREMENT,
data_os TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
equipamento VARCHAR(150) NOT NULL,
defeito VARCHAR(150) NOT NULL,
servico VARCHAR(150),
tecnico VARCHAR(30),
valor DECIMAL(10,2),
idcli INT NOT NULL,
FOREIGN KEY(idcli) REFERENCES clientes(idcli)
);
INSERT INTO ordem_servico (equipamento, defeito, servico, tecnico, valor, idcli) VALUES
('Computador', 'Não liga', 'Reparo na fonte', 'José', 150.00, 1),
('Impressora', 'Papel preso', 'Limpeza', 'Maria', 75.00, 2),
('Notebook', 'Bateria descarregando rápido', 'Substituição da bateria', 'Carlos', 200.00, 3),
('Celular', 'Tela quebrada', 'Substituição da tela', 'Fernanda', 300.00, 4),
('Monitor', 'Sem sinal', 'Verificação de cabos', 'Roberto', 50.00, 5),
('Televisor', 'Imagem distorcida', 'Ajuste de configuração', 'Tiago', 100.00, 6),
('Câmera', 'Não grava', 'Reparo interno', 'Patrícia', 250.00, 7),
('Console', 'Não conecta à internet', 'Reinstalação de software', 'Mariana', 90.00, 8),
('Tablet', 'Desempenho lento', 'Otimização do sistema', 'Juliana', 120.00, 9),
('Router', 'Intermitente', 'Substituição de peça', 'Ricardo', 80.00, 10);

SELECT * FROM ordem_servico;
SHOW TABLES;


