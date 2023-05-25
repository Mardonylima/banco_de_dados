CREATE DATABASE projetoa3;

CREATE TABLE login (
nome VARCHAR(200),
login VARCHAR(300),
senha VARCHAR (300),
PRIMARY KEY (login)
);

INSERT INTO login (nome, login, senha)
VALUES 
	("administrador", "admin", "admin123");

