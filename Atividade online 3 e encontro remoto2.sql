--Encontro remoto 2
CREATE DATABASE uc13;

USE uc13;

CREATE TABLE Usuarios(
UsuarioId INT PRIMARY KEY IDENTITY,
Usuario VARCHAR(150) UNIQUE NOT NULL,
Senha VARCHAR(300) NOT NULL
);

CREATE TABLE Classes(
ClasseId INT PRIMARY KEY IDENTITY,
NomeClasse VARCHAR(150) UNIQUE NOT NULL,
DescricaoClasse VARCHAR(500)
);

CREATE TABLE Habilidades(
HabilidadeId INT PRIMARY KEY IDENTITY,
Nome VARCHAR(150) UNIQUE NOT NULL
);

--Tabela que faz referencia com outras duas tabelas
CREATE TABLE Personagens(
PersonagemId INT PRIMARY KEY IDENTITY,
NomePersonagem VARCHAR(15) UNIQUE NOT NULL,
UsuarioId INT FOREIGN KEY REFERENCES Usuarios(UsuarioId),
ClasseId INT FOREIGN KEY REFERENCES Classes(ClasseId)
);

CREATE TABLE ClassesHabilidades(
ClasseId INT FOREIGN KEY REFERENCES Classes(ClasseId),
HabilidadeId INT FOREIGN KEY REFERENCES Habilidades(HabilidadeId)
);


--Atividade online 3
INSERT INTO Usuarios VALUES ('WillTurner', 'Padaria123');
INSERT INTO Classes VALUES ('Monge', 'Monge lutador');
INSERT INTO Habilidades VALUES ('Quebrador de ossos');
INSERT INTO Personagens VALUES ('TouroSentado', 2, 2);
INSERT INTO ClassesHabilidades VALUES (2, 2), (2, 3);

INSERT INTO Usuarios VALUES ('Danox', 'lutador123');
INSERT INTO Classes VALUES ('Barbaro', 'Barbaro lutador');
INSERT INTO Habilidades VALUES ('Nadador'), ('Escudo Supremo');
INSERT INTO Personagens VALUES ('DeuBug', 1, 1);


-- Atividade online 4

-- Criar login de Aluno
CREATE LOGIN aluno
WITH PASSWORD = 'eu1234'

-- Criar perfil do aluno e atribuido ao usuario aluno
CREATE USER aluno FOR LOGIN aluno;

--Acesso concedido
GRANT SELECT TO aluno;