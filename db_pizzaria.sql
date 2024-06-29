CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;

CREATE TABLE tb_categorias (
id BIGINT AUTO_INCREMENT,
tipo VARCHAR(50),
descricao VARCHAR (100),
Primary key(id)
);

INSERT INTO tb_categorias (tipo, descricao)
VALUES ('Vegetariana', 'Pode conter ovos, queijo e/leite'),
('Leve',' Gluten Free'),
('Lac Free', 'Pizza zero lactose'),
('Vegan', 'Pizza vegana'),
('Tradicional','Massa tradicional de pizza');

SELECT * FROM tb_categorias;
ALTER TABLE tb_pizzas ADD categoriaid BIGINT;
ALTER TABLE tb_pizzas ADD CONSTRAINT fk_pizzas_categorias 
FOREIGN KEY (categoriaid) REFERENCES tb_categorias (id);

SELECT * FROM tb_pizzas WHERE preco > 45.00;
SELECT * FROM tb_pizzas WHERE preco BETWEEN 50.00 AND 100.00;
SELECT * FROM tb_pizzas WHERE nome LIKE "%m%";
SELECT * FROM tb_pizzas INNER JOIN tb_categorias ON tb_pizzas.categoriaid = tb_categorias.id;
SELECT * FROM tb_pizzas INNER JOIN tb_categorias ON tb_pizzas.categoriaid = tb_categorias.id WHERE tb_categorias.id = 3;

CREATE TABLE tb_pizzas (
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255) not null,
descricao VARCHAR(255),
borda_requeijao BOOLEAN not null,
tamanho VARCHAR(255),
preco DECIMAL (6,2) not null,
primary key(id)
);

INSERT INTO tb_pizzas (nome, descricao, borda_requeijao, tamanho, preco, categoriaid)
VALUES ('Marguerita Vegetariana', 'Deliciosa combinação de molho de tomate, queijo mussarela, tomate em rodelas e manjericão fresco.', TRUE, 'Médio', 44.00, 1),
('Pizza de Berinjela Grelhada', 'Berinjela grelhada, pimentões coloridos, queijo mussarela, parmesão e manjericão, sobre molho de tomate.', FALSE, 'Grande', 50.00, 1),
('Vegana de Legumes Assados', 'Escarola, Tofu, cebola roxa e tomate cereja assados, sobre molho de tomate vegano.', FALSE, 'Médio', 42.00, 4),
('Pizza de Cogumelos Selvagens', 'Mix de cogumelos selvagens, espinafre e tomate seco sobre molho de tomate vegano.', TRUE, 'Pequeno', 50.00, 4),
('Marguerita Gluten Free', 'Pizza clássica com massa sem glúten, molho de tomate, queijo mussarela e manjericão.', FALSE, 'Médio', 55.00, 2),
('Pizza de Frango com Cream Cheese (GF)', 'Frango desfiado, cream cheese sem glúten, cogumelos e rúcula sobre massa sem glúten.', TRUE, 'Grande', 75.00, 2),
('Pizza de Vegetais Assados Sem Lactose', 'Abobrinha, alho e tomate assados sobre molho de tomate sem lactose.', FALSE, 'Médio', 44.00, 3),
('Quatro Queijos Zero Lactose', 'Variedade de queijos sem lactose sobre molho de tomate, com azeite de oliva e orégano.', TRUE, 'Grande', 72.00, 3),
('Pepperoni Tradicional', 'Fatias de pepperoni sobre molho de tomate e queijo mussarela derretido.', TRUE, 'Grande', 70.00, 5),
('Calabresa Tradicional', 'Calabresa fatiada, cebola e azeitonas sobre molho de tomate e queijo mussarela.', FALSE, 'Médio', 50.00, 5); 

