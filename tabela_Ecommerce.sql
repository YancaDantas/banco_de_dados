CREATE DATABASE db_ecommerce;
USE db_ecommerce;
CREATE TABLE tb_produtos(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255) not null,
categoria VARCHAR(255),
cor VARCHAR(100),
quantidade INT,
preco DECIMAL (6,2) not null,
primary key(id)
);

SELECT * FROM tb_produtos;
SELECT * FROM tb_produtos WHERE preco > 500.00;
SELECT * FROM tb_produtos WHERE preco < 500.00;
INSERT INTO tb_produtos (nome, categoria, cor, quantidade, preco)
VALUES 
("calça Moletom", "Comfort", "Preto", 200, 89.90),
("calça Moletom", "Comfort", "Marrom", 100, 89.90),
("calça Cargo", "Style", "Bege", 120, 119.90),
("calça Jeans", "Skinny", "Azul Claro", 200, 129.90),
("calça Jeans", "Mom", "Azul Escuro", 150, 149.90),
("calça Legging", "Ginastica", "Preto", 200, 99.90),
("calça Legging Reforçada", "Ginastica", "Preto", 150, 129.90),
("calça Social", "Alfaiataria", "Bege Clara", 150, 199.90);

INSERT INTO tb_produtos (nome, categoria, cor, quantidade, preco)
VALUES ("Camiseta Básica", "Casual", "Branco", 300, 29.90),
    ("Camiseta Estampada", "Casual", "Azul", 150, 39.90),
    ("Camiseta Polo", "Esportiva", "Verde", 100, 49.90),
    ("Camiseta Manga Longa", "Casual", "Cinza", 120, 59.90),
    ("Camiseta Regata", "Esportiva", "Preto", 200, 19.90);



