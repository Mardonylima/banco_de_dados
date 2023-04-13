CREATE DATABASE uc_programacao;
USE uc_programacao;

CREATE TABLE curso(
cod_curso INTEGER,
nome_curso VARCHAR(100),
sigla VARCHAR(10),
PRIMARY KEY (cod_curso)
);

CREATE TABLE disciplina(
cod_disciplina INTEGER,
nome_disciplina VARCHAR(100),
PRIMARY KEY (cod_disciplina)
);

CREATE TABLE turma(
cod_turma INTEGER,
turno VARCHAR(20),
disciplina INTEGER,
PRIMARY KEY (cod_turma),
CONSTRAINT fk_disciplina_turma FOREIGN KEY (disciplina)
REFERENCES disciplina (cod_disciplina)
);

CREATE TABLE aluno(
matricula VARCHAR(20),
nome VARCHAR(200),
cpf VARCHAR(15),
PRIMARY KEY (matricula)
);

CREATE TABLE aluno_curso(
cod_aluno_curso INTEGER,
aluno VARCHAR(20),
curso INTEGER,
PRIMARY KEY (cod_aluno_curso),
CONSTRAINT fk_aluno FOREIGN KEY (aluno)
REFERENCES aluno (matricula),
CONSTRAINT fk_curso FOREIGN KEY (curso)
REFERENCES curso (cod_curso)
);

CREATE TABLE aluno_turma(
cod_aluno_turma INTEGER,
aluno VARCHAR(20),
turma INTEGER,
PRIMARY KEY (cod_aluno_turma),
CONSTRAINT fk_aluno_turma FOREIGN KEY (aluno)
REFERENCES aluno (matricula),
CONSTRAINT fk_turma FOREIGN KEY (turma)
REFERENCES turma (cod_turma)
);

CREATE TABLE curso_disciplina(
cod_curso_disciplina INTEGER,
curso INTEGER,
disciplina INTEGER,
PRIMARY KEY (cod_curso_disciplina),
CONSTRAINT fk_curso_disciplina FOREIGN KEY (curso)
REFERENCES curso (cod_curso),
CONSTRAINT fk_disciplina_curso FOREIGN KEY (disciplina)
REFERENCES disciplina (cod_disciplina) 
);

INSERT INTO curso (cod_curso, nome_curso, sigla)
VALUES 
	(1, "ciências da computação", "CCO"),
	(2, "análise e desenvolvimento de sistemas", "ADS"),
	(3, "jogos digitais ", "JDI"),
	(4, "gestão de tecnologia da informação", "GTI"),
	(5, "sistemas de informação", "STI");

INSERT INTO disciplina (cod_disciplina, nome_disciplina)
VALUES 
	(1, "Banco de Dados"),
	(2, "Programação"),
	(3, "Engenharia De Softwares"),
	(4, "Lógica Booleana"),
	(5, "Computação Grafica"),
	(6, "Redes De Computadores");

INSERT INTO aluno (matricula, nome, cpf)
VALUES 
	("20230001", "Bruce Wayne", "11111111-11"),
	("20230002", "Clark Kent", "2222222-22"),
	("20230003", "Athur Curry", "333333333-33"),
	("20230004", "Barry Allen", "444444444-44"),
	("20230005", "Diana Price", "555555555-55"),
	("20230006", "Steve Rogers", "666666666-66"),
	("20230007", "Antony Starks", "777777777-77"),
	("20230008", "Peter Parker", "888888888-88"),
	("20230009", "Bruce Banner", "999999999-99");
	
INSERT INTO turma (cod_turma, turno, disciplina)
VALUES 
	(1, "Manhã", 1),
	(2, "Manhã", 2),
	(3, "Manhã", 3),
	(4, "Manhã", 4),
	(5, "Manhã", 5),
	(6, "Manhã", 6),
	(7, "Noite", 1),
	(8, "Noite", 2),
	(9, "Noite", 3),
	(10, "Noite", 4),
	(11, "Noite", 5),
	(12, "Noite", 6);
	
