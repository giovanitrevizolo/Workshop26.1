CREATE SCHEMA Workshop;
USE Workshop;

CREATE TABLE funcionarios (
id_funcionario INT AUTO_INCREMENT,
nome VARCHAR(60) NOT NULL,
telefone VARCHAR(15) NULL,
funcao VARCHAR(30) NOT NULL,
salario DECIMAL(10,2) NOT NULL,
PRIMARY KEY (id_funcionario)
);

CREATE TABLE professores (
id_professor INT AUTO_INCREMENT,
nome VARCHAR(60) NOT NULL,
telefone VARCHAR(15) NULL,
disciplina VARCHAR(45) NOT NULL,
PRIMARY KEY (id_professor)
);

INSERT INTO professores (nome, telefone, disciplina)
VALUES 
('João', '981234567', 'Calculo III'),
('Carla', '992345678', 'Calculo II'),
('Luiz', '973456789', 'Calculo I'),
('Cassandra', '984567890', 'Fisica Geral'),
('Joyce', '995678901', 'Series e EDO'),
('Clare', '976789012', 'Quimica Analitica'),
('Teresa', '987890123', 'Quimica Experimental'),
('Miria', '998901234', 'Fisica Experimental'),
('Helen', '979012345', 'Quimica Organica'),
('Deneve', '980123456', 'Biotecnologia');
    
    
INSERT INTO funcionarios (nome, telefone, funcao, salario)
VALUES 
('João', '981234567', 'professor', 1500.00),
('Carla', '992345678', 'professor', 2000.00),
('Artur', '912345678', 'diretor', 5000.00),
('Claudia', '923456789', 'coordenador', 3500.00),
('Caio', '934567890', 'zelador', 1500.00),
('Ana', '945678901', 'contador', 2000.00),
('Julio', '956789012', 'porteiro', 1000.00),
('Maria', '967890123', 'coordenador', 3000.00),
('Luiz', '973456789', 'professor', 3000.00),
('Luiza', '989012345', 'zelador', 2000.00);

UPDATE funcionarios
SET função = 'professor'
WHERE id_funcionario = 10;

SELECT * FROM funcionarios
WHERE salario BETWEEN 0 AND 2000
ORDER BY salario ASC;

SELECT nome,max(salario)
FROM funcionarios;

SELECT nome,min(salario)
FROM funcionarios;

SELECT avg(salario)
FROM funcionarios;

SELECT salario, COUNT(*)
FROM funcionarios
GROUP BY salario;

SELECT salario, COUNT(*)
FROM funcionarios
GROUP BY salario
HAVING salario > 2000;

SELECT funcionarios.nome, salario FROM funcionarios
INNER JOIN professores 
ON funcionarios.nome = professores.nome;