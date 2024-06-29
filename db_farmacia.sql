CREATE DATABASE db_farmacia_bem_estar;
USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias (
id BIGINT AUTO_INCREMENT,
tipo VARCHAR(50),
descricao VARCHAR (100),
Primary key(id)
);

INSERT INTO tb_categorias (tipo, descricao)
VALUES ("Remédios", "Medicamentos com receita"),
("Cosméticos", "Perfume, maquiagem, cremes corporais..."),
("Higiene", "Produtos para higiene pessoal"),
("Infantil", "Produtos para bebês e crianças"),
("Alimentos", "Alimentos não perecíveis"),
("Bebidas", "bebidas sem alcool"); 

CREATE TABLE tb_produtos (
id BIGINT AUTO_INCREMENT,
nome VARCHAR(200) not null,
funcao VARCHAR(400),
quantidade INT,
preco DECIMAL(6,2),
primary key (id)
);

SELECT * FROM tb_categorias;
ALTER TABLE tb_produtos ADD categoriaid BIGINT;
ALTER TABLE tb_produtos ADD CONSTRAINT fk_produtos_categorias 
FOREIGN KEY (categoriaid) REFERENCES tb_categorias (id);

SELECT * FROM tb_produtos WHERE preco > 50.00;
SELECT * FROM tb_produtos WHERE preco BETWEEN 5.00 AND 60.00;
SELECT * FROM tb_produtos WHERE nome LIKE "%c%";
SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.categoriaid = tb_categorias.id;
SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.categoriaid = tb_categorias.id WHERE tb_categorias.id = 2;

INSERT INTO tb_produtos (nome, funcao, quantidade, preco, categoriaid)
VALUES  ('Amoxicilina 500mg', 'Antibiótico de amplo espectro', 50, 28.90, 1),
('Loratadina 10mg', 'Antialérgico não sedativo', 100, 12.99, 1),
('Hidratante Corporal Nivea Soft', 'Hidratação intensa para pele seca', 60, 19.90, 2),
('Batom Matte Revlon ColorStay', 'Maquiagem de longa duração', 6, 12.99, 2),
('Creme Dental Oral-B Pro-Saúde', 'Proteção completa para os dentes', 90, 4.50, 3),
('Desodorante Antitranspirante Rexona Clinical', 'Proteção intensiva contra o suor', 50, 19.90, 3),
('Leite em Pó Nan Supreme 1', 'Fórmula infantil para lactentes', 100, 39.90, 4),
('Colônia Sem Álcool Johnson''s Baby', 'Fragrância suave para bebês', 90, 29.90, 4),
('Barras de Cereal Nutry Frutas Vermelhas', 'Lanche saudável e prático', 200, 6.49, 5),
('Aveia em Flocos Finos Quaker', 'Fonte de fibras para alimentação saudável', 500, 4.79, 5),
('Água Mineral Natural Sanitária', 'Hidratação diária', 1500, 2.25, 6),
('Chá de Matte de Limão Lipton', 'Infusão calmante', 50, 7.99, 6);