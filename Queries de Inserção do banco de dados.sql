USE escola;

/*
inserindo dados na tabela professor:
*/


INSERT INTO professor (id_professor, nome_professor, departamento, salario, ano_contratacao) VALUES (1, "Gabriel Ferraz", "Exatas", 10.000, 2025);

INSERT INTO professor (id_professor, nome_professor, departamento, salario, ano_contratacao) VALUES (2, "Karina Varela", "Biologia", 25.000, 2015);

INSERT INTO professor (id_professor, nome_professor, departamento, salario, ano_contratacao) VALUES (3, "Adson Coelho", "Geografia", 15.000, 2017);

/*
inserindo dados na tabela curso:
*/

INSERT INTO curso (id_curso, nome_curso, duracao, coordenador) VALUES (1, "Engenharia da Computação", 5, 1);

INSERT INTO curso (id_curso, nome_curso, duracao, coordenador) VALUES (2, "Ciências Biológicas", 4, 2);

INSERT INTO curso (id_curso, nome_curso, duracao, coordenador) VALUES (3, "Licenciatura em geografia", 3, 3);

/*
inserindo dados na tabela aluno:
*/

INSERT INTO aluno (id_aluno, nome_aluno, ano_nascimento, ano_ingresso, id_curso) VALUES (1, "Taylor Swift da Silva", 2004, 2020, 2);

INSERT INTO aluno (id_aluno, nome_aluno, ano_nascimento, ano_ingresso, id_curso) VALUES (2, "João Manuel Melo Borba", 2002, 2019, 1);

INSERT INTO aluno (id_aluno, nome_aluno, ano_nascimento, ano_ingresso, id_curso) VALUES (3, "Bruno Velozo", 2000, 2017, 3);

/*
inserindo dadosna tabela disciplina:
*/

INSERT INTO disciplina (id_disciplina, nome_disciplina, id_professor, carga_horaria, id_curso) VALUES (1, "Sistemas Embarcados", 1, 48, 1);

INSERT INTO disciplina (id_disciplina, nome_disciplina, id_professor, carga_horaria, id_curso) VALUES (2, "Genética Mendeliana", 2, 60, 2);

INSERT INTO disciplina (id_disciplina, nome_disciplina, id_professor, carga_horaria, id_curso) VALUES (3, "Cartografia sistemática", 3, 30,3);