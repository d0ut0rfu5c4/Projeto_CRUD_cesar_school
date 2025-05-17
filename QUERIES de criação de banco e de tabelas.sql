SET SQL_SAFE_UPDATES = 0;

CREATE DATABASE escola;

USE escola;


CREATE TABLE professor (
	id_professor INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    nome_professor VARCHAR(100),
    departamento VARCHAR(110),
    salario DECIMAL,
    ano_contratacao INT
);

CREATE TABLE curso (
	id_curso INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    nome_curso VARCHAR (100),
    duracao INT,
    coordenador INT,
    FOREIGN KEY (coordenador) REFERENCES professor(id_professor)
);

CREATE TABLE aluno (
	id_aluno INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    nome_aluno VARCHAR (150),
    ano_nascimento INT,
    ano_ingresso INT,
    id_curso INT,
    FOREIGN KEY (id_curso) REFERENCES curso(id_curso)
);

CREATE TABLE disciplina (
	id_disciplina INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    nome_disciplina VARCHAR(150),
    id_professor INT,
    FOREIGN KEY (id_professor) REFERENCES professor(id_professor),
    carga_horaria INT,
    id_curso INT,
    FOREIGN KEY (id_curso) REFERENCES curso(id_curso)
);
