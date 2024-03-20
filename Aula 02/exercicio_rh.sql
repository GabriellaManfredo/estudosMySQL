CREATE DATABASE db_rh;

USE db_rh;

CREATE TABLE tb_funcionarios (
    matricula BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    datacontratacao DATE,
    datanascimento DATE,
    funcao VARCHAR(255) NOT NULL,
    salario DECIMAL(6,2) NOT NULL,
    PRIMARY KEY (matricula)
);

INSERT INTO tb_funcionarios(nome, datacontratacao, datanascimento, funcao, salario)
VALUE ("Roberta", "2023-05-15", "1980-03-01", "Estagiário de Marketing", 1863.40 );
INSERT INTO tb_funcionarios(nome, datacontratacao, datanascimento, funcao, salario)
VALUE ("Francisco", "2023-05-16", "1979-04-30", "Financeiro", 5030.60);
INSERT INTO tb_funcionarios(nome, datacontratacao, datanascimento, funcao, salario)
VALUE ("Juliana", "2023-05-20", "1999-05-31", "TI", 7904.98);
INSERT INTO tb_funcionarios(nome, datacontratacao, datanascimento, funcao, salario)
VALUE ("Mario", "2023-04-30", "1989-09-18", "RH", 4800.65);
INSERT INTO tb_funcionarios(nome, datacontratacao, datanascimento, funcao, salario)
VALUE ("Ana", "2024-05-20", "2000-07-1", "Assessor de Vendas", 1900.00);

SELECT nome, funcao, salario FROM tb_funcionarios WHERE salario > 2000.00;
SELECT nome, funcao, salario FROM tb_funcionarios WHERE salario < 2000.00;

UPDATE tb_funcionarios SET salario = 2100.60 WHERE matricula = 1;

SELECT * FROM tb_funcionarios