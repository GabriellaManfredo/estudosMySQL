CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_produtos (
	id BIGINT AUTO_INCREMENT, 
    nome VARCHAR(255) NOT NULL, 
	marca VARCHAR(255) NOT NULL, 
    categoria VARCHAR(255) NOT NULL, 
    quantidade INT,
    preco DECIMAL (6,2) NOT NULL,
    PRIMARY KEY(id)
);

INSERT INTO tb_produtos(nome, marca, categoria, quantidade, preco)
VALUE("S23", "Samsung", "Smartphone", 3, 4199.30);
INSERT INTO tb_produtos(nome, marca, categoria, quantidade, preco)
VALUE("Iphone 15", "Apple", "Smartphone", 6, 5500.99);
INSERT INTO tb_produtos(nome, marca, categoria, quantidade, preco)
VALUE("Vivobook", "ASUS", "Laptop", 8, 2474.10);
INSERT INTO tb_produtos(nome, marca, categoria, quantidade, preco)
VALUE("Inspiron 15", "Dell", "Laptop", 7, 2199.00);
INSERT INTO tb_produtos(nome, marca, categoria, quantidade, preco)
VALUE("Wave buds TWS", "JBL", "Acessórios", 3, 236.00);
INSERT INTO tb_produtos(nome, marca, categoria, quantidade, preco)
VALUE("Headphone Sport Bluetooth", "Philips", "Acessórios", 6, 273.80);
INSERT INTO tb_produtos(nome, marca, categoria, quantidade, preco)
VALUE("Xiaomiro", "Xiome", "Tablet", 1, 799.99);
INSERT INTO tb_produtos(nome, marca, categoria, quantidade, preco)
VALUE("Teclado sem fio Pebble Keys 2", "Logitech", "Acessórios", 3, 228.78);

SELECT nome, preco FROM tb_produtos WHERE preco > 500;
SELECT nome, preco FROM tb_produtos WHERE preco < 500;

UPDATE tb_produtos SET preco = 5000.89 WHERE id = 2;

SELECT * FROM tb_produtos;