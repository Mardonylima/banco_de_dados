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
	
SELECT matricula, nome, cpf FROM aluno 
/*aqui eu to puxando a coluna matricula, nome e cpf da tabela alunos*/
WHERE matricula = "20230006"
/*aqui eu to puxando a tabela matricula saber de um aluno */	
SELECT * FROM curso WHERE sigla = "JDI" 
/*  O * é pra puxar todas as tabelas */
SELECT * FROM curso WHERE sigla = "JDI" OR sigla = "CCO"
/*o 'OR' vai servir para chamar dois ou mais cursos*/	
SELECT * FROM curso, aluno WHERE cpf = "11111111-11" AND sigla = "CCO"
/*aqui é pra ligar um aluno a um curso*/
SELECT * FROM aluno_curso, aluno WHERE matricula = "20230001"
/*jeito errado de fazer uma ligação */
SELECT * FROM aluno_curso
INNER JOIN aluno ON aluno = matricula
/*maneira correta para fazer a ligação de uma tabela pra outra*/
SELECT * FROM aluno_curso
INNER JOIN aluno ON aluno = matricula
WHERE matricula ="20230001"
/**/
SELECT nome_curso, sigla, matricula, nome, cpf FROM aluno_curso
INNER JOIN aluno ON aluno = matricula
INNER JOIN curso ON curso = cod_curso
WHERE matricula ="20230001"
/*aqui eu to puxando duas tabelas com o mesmos nomes nas colunas, 'alunos', 
o ponto (" . ") serve para nao ter ambiguidade entre elas */
SELECT nome, matricula, nome_curso, nome_disciplina, turno FROM aluno
INNER JOIN aluno_curso ON matricula = aluno_curso.aluno 
INNER JOIN curso ON curso = cod_curso
INNER JOIN aluno_turma ON aluno_turma.aluno = matricula
INNER JOIN turma ON turma = cod_turma  
INNER JOIN disciplina ON disciplina = cod_disciplina
WHERE matricula = "20230001"
/*adcionei mais dois cursos*/
INSERT INTO curso (cod_curso, nome_curso,sigla)
VALUES 
	(6, 'engenaria da computaçao', 'EC'),
	(7, 'tecnologia em redes de computadores', 'TRC');
/*no insert anterior eu adcionei mais dois curso e aqui vou mudar o nome de um campo que esta errado*/	
UPDATE curso SET nome_curso = 'redes de computadosres'
/*nao esquecer o WHERE por favor, sem o where eu mudaria todos os nomes de cursos da tabela inserida */
WHERE cod_curso = 7 
/*aaui eu apaguei o curso 7 da tabela curso */
DELETE FROM curso 
WHERE cod_curso = 7
/*aqui é pra apagar uma chave primaria*/
SET FOREIGN_KEY_checkes = 0  
