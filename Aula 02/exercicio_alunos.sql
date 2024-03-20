CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_alunos (
	matricula BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL, 
	datanascimento DATE,
    responsavel VARCHAR(255) NOT NULL, 
    endereco VARCHAR(255) NOT NULL, 
    media DECIMAL (2,1),
    PRIMARY KEY(matricula)
);

INSERT INTO tb_alunos(nome, datanascimento, responsavel, endereco, media)
VALUES ("Alice", "2005-05-13", "Gisele", "Rua da Alegria, 50", 8.6),
("Marcos", "2008-01-06", "Maria", "Rua da Empatia, 80", 5.6),
("Fabiola", "2007-12-17", "José", "Rua da Orientação aos Detalhes, 276", 4.2),
("Otavio", "2008-10-30", "Roberto", "Rua da Comunicação Não Violenta, 77", 9.5),
("Marisa", "2006-04-01", "Ana", "Rua do Trabalho em Equipe, 490", 8.6),
("Giovane", "2006-11-24", "Julia", "Rua da Proatividade, 523", 9.0),
("Taina", "2009-02-09", "Igor", "Rua da Persistência, 123", 7.9),
("Caio", "2006-09-23", "Vinicius", "Rua da Orientação ao Futuro, 193", 7.2);

SELECT media, nome  FROM tb_alunos WHERE media > 7;
SELECT media, nome  FROM tb_alunos WHERE media < 7;

ALTER TABLE tb_alunos MODIFY media DECIMAL;

UPDATE tb_alunos SET media = 5.0 WHERE matricula = 19;
UPDATE tb_alunos SET media = 6.0 WHERE matricula = 22;

SELECT * FROM tb_alunos;