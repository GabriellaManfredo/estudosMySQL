CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias (
	id bigint AUTO_INCREMENT PRIMARY KEY,
    categoria VARCHAR(255) NOT NULL,
    descricao VARCHAR(255) NOT NULL
);

CREATE TABLE tb_pizzas(
	id BIGINT AUTO_INCREMENT, 
    nome VARCHAR(255) NOT NULL,
    preco DECIMAL (3,2) NOT NULL,
    ingrediente_principal VARCHAR(255) NOT NULL,
    id_categoria BIGINT,
    PRIMARY KEY (id), 
    FOREIGN KEY (id_categoria) REFERENCES tb_categorias (id)
);

ALTER TABLE tb_pizzas MODIFY preco DECIMAL(6,2);

INSERT INTO tb_categorias (categoria, descricao) VALUES
("Salgadas", "Pizzas com ingredientes salgados."),
("Doces", "Pizzas com ingredientes doces."),
("Vegetarianas", "Pizzas sem carne."),
("Especiais", "Pizzas especiais da casa."),
("Clássicas", "Pizzas tradicionais.");

SELECT * FROM tb_categorias;

INSERT INTO tb_pizzas (nome, preco, ingrediente_principal, id_categoria) VALUES
("Margherita", 30.99, "Mozzarela e manjericão", 5),
("Pepperoni", 65.99, "Mozzarella e Pepperoni", 5),
("Quatro Queijos", 45.99, "Mozzarella, Parmesão, Provolone e Gorgonzola", 5),
("Calabresa", 30.99, "Mozzarella, Calabresa e Cebola", 5),
("Portuguesa", 60.99, "Mozzarella, Presunto, Ovo, Cebola e Azeitona", 5),
("Chocolate com Morango", 50.99, "Chocolate  e Morango", 2),
("Vegetariana", 42.99, "Mozzarella, Tomate, Pimentão, Cebola e Azeitona", 3),
("Frango com Catupiry", 45.99, "Mozzarella, Frango desfiado, Catupiry", 4);

SELECT nome, preco FROM tb_pizzas WHERE preco > 45.00;
SELECT nome, preco FROM tb_pizzas WHERE preco BETWEEN 50.00 AND 100;
SELECT * FROM tb_pizzas WHERE nome LIKE "m%";

SELECT nome, preco, ingrediente_principal, tb_categorias.categoria 
FROM tb_pizzas
INNER JOIN tb_categorias ON tb_pizzas.id_categoria = tb_categorias.id;

SELECT nome, preco, ingrediente_principal, tb_categorias.categoria 
FROM tb_pizzas
INNER JOIN tb_categorias 
ON tb_pizzas.id_categoria = tb_categorias.id
WHERE tb_categorias.categoria = "Doces";