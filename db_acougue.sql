CREATE DATABASE db_cidade_das_carnes;
USE db_cidade_das_carnes;

CREATE TABLE tb_categorias (
id BIGINT AUTO_INCREMENT,
tipo VARCHAR(50),
descricao VARCHAR (100),
Primary key(id)
);

INSERT INTO tb_categorias (tipo, descricao)
VALUES ("Bovino", "Cortes de boi"),
("Aves", "Cortes de Frango, Peru, Galeto"),
("Suíno", "Cortes de porco"),
("Defumados", "carnes defumadas"),
("Peixes e Frutos do Mar", "Cortes de peixe e frutos do mar");

CREATE TABLE tb_produtos (
id BIGINT AUTO_INCREMENT,
corte_carne VARCHAR(200) not null,
data_validade DATE not null,
quantidade INT not null,
preco DECIMAL(6,2) not null,
primary key (id)
);

SELECT * FROM tb_categorias;
ALTER TABLE tb_produtos ADD categoriaid BIGINT;
ALTER TABLE tb_produtos ADD CONSTRAINT fk_produtos_categorias 
FOREIGN KEY (categoriaid) REFERENCES tb_categorias (id);

SELECT * FROM tb_produtos WHERE preco > 50.00;
SELECT * FROM tb_produtos WHERE preco BETWEEN 50.00 AND 150.00;
SELECT * FROM tb_produtos WHERE nome LIKE "%c%";
SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.categoriaid = tb_categorias.id;
SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.categoriaid = tb_categorias.id WHERE tb_categorias.id = 5;

ALTER TABLE tb_produtos
CHANGE COLUMN quantidade quantidadekg INT;

INSERT INTO tb_produtos (corte_carne, data_validade, quantidadekg, preco, categoriaid)
VALUES ("Bife Ancho", "2025-06-28", 100, 49.90, 1),
("Picanha", "2025-07-03", 150, 89.90, 1),
("File de Frango", "2025-09-24", 200, 19.90, 2),
("Coxa e Sobrecoxa Desossada", "2025-04-29", 100, 16.90, 2),
("Bisteca Suína", "2025-03-20", 150, 14.90, 3),
("Panceta para Churrasco", "2025-08-12", 200, 18.90, 3),
("Bacon", "2026-09-30", 300, 39.90, 4),
("Calabresa Defumada", "2026-10-04", 300, 31.90, 4),
("Filé de Tilápia", "2025-05-21", 200, 49.90, 5),
("Filé de Merluza", "2025-02-19", 200, 39.90, 5),
("Camarão Cinza", "2025-04-06", 200, 89.90, 5);

