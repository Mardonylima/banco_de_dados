CREATE DATABASE viva_fpb;

USE viva_fpb;

CREATE TABLE empresa (
cod_empresa INTEGER,
endereco VARCHAR (500),
cidade VARCHAR (200),
telefone VARCHAR (15),
PRIMARY KEY (cod_empresa)
);

CREATE TABLE setor (
cod_setor INTEGER,
nome_setor VARCHAR (200),
PRIMARY KEY (cod_setor)
);

CREATE TABLE cargo (
cod_cargo INTEGER,
nome_cargo VARCHAR (100),
PRIMARY KEY (cod_cargo)
);

CREATE TABLE funcionario (
matricula VARCHAR(15),
nome VARCHAR(500),
telefone VARCHAR(15),
cargo INTEGER,
setor INTEGER,
filial INTEGER,
PRIMARY KEY (matricula),
CONSTRAINT fk_cargo FOREIGN KEY (cargo)
REFERENCES cargo (cod_cargo),
CONSTRAINT fk_setor FOREIGN KEY (setor)
REFERENCES setor (cod_setor),
CONSTRAINT fk_empresa FOREIGN KEY (filial)
REFERENCES empresa (cod_empresa)
);

INSERT INTO empresa (cod_empresa, endereco, cidade, telefone)
VALUES 
	(1, 'Rua João da Mata', 'João Pessoa', '8332333333'),
	(2, 'Av João Machado', 'João Pessoa', '8332562121'),
	(3, 'Av Agamenom Magalhães', 'Recife', '8132879654');

INSERT INTO setor (cod_setor, nome_setor)
VALUES
	(1, 'Administrativo'),
	(2, 'Financeiro'),
	(3, 'Estoque');
	
INSERT INTO cargo (cod_cargo, nome_cargo)
VALUES
	(1, 'Gerente'),
	(2, 'Contador'),	
	(3, 'Estoquista'),
	(4, 'Atendente'),
	(5, 'Vendedor');
	
INSERT INTO funcionario (matricula, nome, telefone, cargo, setor, filial)
VALUES
	('20230001', 'Demetrius de Castro', '83987730383', 1, 1, 1);
	
INSERT INTO funcionario (matricula, nome, telefone, cargo, setor, filial)
VALUES 
	('20230002', 'Mardony lima de sousa', '00000000000', 2, 2, 2);

#aqui eu puxei dados de duas tablas diferentes para saber a matricula, nome, telefone, filial, o nome do cargo e o nome do setor
SELECT matricula, nome, telefone, nome_cargo, nome_setor, filial FROM funcionario 
INNER JOIN cargo ON cod_cargo = cargo
INNER JOIN setor ON cod_setor = setor

#aqui eu puxei todos os dados do fucionario aonda a matricula é '20230002'
SELECT * FROM funcionario 
WHERE matricula = 20230002

# aqui dei um update para atualizar o felefone 
UPDATE funcionario SET telefone = 11111111111
WHERE matricula = 20230002 

# aqui deletei um fucionario 
DELETE FROM funcionario 
WHERE matricula= 20230002