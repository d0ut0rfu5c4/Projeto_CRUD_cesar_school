/*
fazendo os SELECTS para listar

1) todos os cursos:
*/

USE escola;

-- listar todos os cursos:

SELECT * FROM curso;

-- 2) Listar todos os alunos:

SELECT * FROM aluno;

-- 3) Listar todas as disciplinas:

SELECT * FROM disciplina;

-- 4) Listar todos os professores:

SELECT * FROM professor;

-- BÔNUS: (EXTRA)

-- 1)    Calcular o número total de alunos em cada curso;

SELECT 
    nome_curso,
    (
        SELECT COUNT(*) 
        FROM aluno 
        WHERE aluno.id_curso = curso.id_curso
    ) AS "Total de Alunos"
FROM 
    curso;


-- 2) Listar todos os cursos oferecidos na escola, com sua duração e o nome do coordenador;

SELECT 
    curso.nome_curso, 
    curso.duracao, 
    professor.nome_professor
FROM 
    curso
JOIN 
    professor ON curso.coordenador = professor.id_professor;
    
/*
3) Obter a lista de alunos matriculados em um curso específico 
(o aluno poderá escolher um curso da base de dados de forma aleatória 
usando comparação de strings);
*/

SELECT 
    nome_aluno
FROM 
    aluno
WHERE 
    id_curso = (
        SELECT id_curso 
        FROM curso 
        WHERE nome_curso = "Ciências Biológicas"
    );
    
-- 4) Obter a média salarial dos professores por departamento;

SELECT 
    departamento,
    AVG(salario) AS media_salarial
FROM 
    professor
GROUP BY 
    departamento;



