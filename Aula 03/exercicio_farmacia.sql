CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias(
	id bigint AUTO_INCREMENT PRIMARY KEY,
    categoria VARCHAR(255) NOT NULL,
    tipo VARCHAR(255) NOT NULL
);

CREATE TABLE tb_produtos(
	id BIGINT AUTO_INCREMENT, 
    nome VARCHAR(255) NOT NULL,
    preco DECIMAL (3,2) NOT NULL,
    quantidade VARCHAR(255) NOT NULL,
    id_categoria BIGINT,
    PRIMARY KEY (id), 
    FOREIGN KEY (id_categoria) REFERENCES tb_categorias (id)
);

ALTER TABLE tb_produtos MODIFY preco DECIMAL (6,2);

INSERT INTO tb_categorias (categoria, tipo) VALUES 
('Medicamentos', 'Fármacos'),
('Higiene Pessoal', 'Higiene'),
('Cosméticos', 'Beleza'),
('Produtos Naturais', 'Saúde'),
('Dermocosméticos', 'Beleza');

INSERT INTO tb_produtos (nome, preco, quantidade, id_categoria) VALUES 
('Paracetamol', 10.50, '10 comprimidos', 1),
('Dipirona', 15.75, '5 comprimidos', 2),
('Creme Facial Hidratante', 25.99, '50g', 5),
('Colágeno', 125.30, '500g', 4),
('Protetor Solar FPS 50', 60.00, '120ml', 5),
('Vitamina C', 18.50, '30 cápsulas', 4),
('Creme Dental Branqueador', 8.99, '150g', 2),
('Sabonete Líquido Corporal', 9.25, '250ml', 2);

UPDATE tb_produtos SET id_categoria = 1 WHERE id = 1;

SELECT * FROM tb_produtos WHERE preco > 50;
SELECT * FROM tb_produtos WHERE preco BETWEEN 5 AND 60;
SELECT * FROM tb_produtos WHERE nome LIKE "%C%";

SELECT tb_produtos.*, tb_categorias.categoria, tb_categorias.tipo 
FROM tb_produtos 
INNER JOIN tb_categorias ON tb_produtos.id_categoria = tb_categorias.id;

SELECT tb_produtos.*, tb_categorias.categoria, tb_categorias.tipo 
FROM tb_produtos
INNER JOIN tb_categorias ON tb_produtos.id_categoria = tb_categorias.id
WHERE tb_categorias.categoria = 'Cosméticos';