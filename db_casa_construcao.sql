CREATE DATABASE db_casa_de_tintas_construcao;
USE db_casa_de_tintas_construcao;

CREATE TABLE tb_categorias (
id BIGINT AUTO_INCREMENT,
tipo VARCHAR(50),
descricao VARCHAR (100),
Primary key(id)
);


INSERT INTO tb_categorias (tipo, descricao)
VALUES ("Acabamento", "Interno"),
("Acabamento", "Externo"),
("Hidráulica", "Canos e materiais em geral"),
("Elétrica", "Materiais em geral"),
("Acessórios", "utilidades");


CREATE TABLE tb_produtos (
id BIGINT AUTO_INCREMENT,
Nome VARCHAR(255) not null,
Descricao VARCHAR(400),
Valor DECIMAL (6,2) not null,
Quantidade INT,
Aceita_troca BOOLEAN,
primary key(id)
);


SELECT * FROM tb_categorias;
ALTER TABLE tb_produtos ADD categoriaid BIGINT;
ALTER TABLE tb_produtos ADD CONSTRAINT fk_produtos_categorias 
FOREIGN KEY (categoriaid) REFERENCES tb_categorias (id);

SELECT * FROM tb_produtos WHERE valor > 100.00;
SELECT * FROM tb_produtos WHERE valor BETWEEN 70.00 AND 150.00;
SELECT * FROM tb_produtos WHERE nome LIKE "%c%";
SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.categoriaid = tb_categorias.id;
SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.categoriaid = tb_categorias.id WHERE tb_categorias.id = 4;

INSERT INTO tb_produtos (Nome, Descricao, Valor, Quantidade, Aceita_troca, categoriaid)
VALUES ('Tinta Acrílica Suvinil Branco Neve', 'Tinta acrílica para acabamento interno, proporciona acabamento fosco e resistente.', 189.90, 100, TRUE, 1),
('Piso Porcelanato Bianco 60x60cm', 'Porcelanato para acabamento externo, resistente a intempéries e de fácil limpeza.', 129.99, 1000, TRUE, 2),
('Torneira Monocomando Deca Slim', 'Torneira monocomando para uso em sistemas de hidráulica, design moderno e economia de água.', 179.50, 50, TRUE, 3),
('Conjunto de Tubos PVC 25mm', 'Conjunto de tubos de PVC para uso em sistemas hidráulicos, resistente e de fácil instalação.', 45.00, 70, TRUE, 3),
('Disjuntor Schneider 40A', 'Disjuntor para uso em instalações elétricas, protege contra sobrecargas e curtos-circuitos.', 39.90, 150, TRUE, 4),
('Fio Flexível 2,5mm rolo 50m', 'Fio flexível para uso em instalações elétricas, adequado para diversos tipos de aplicações.', 79.99, 8, TRUE, 4),
('Jogo de Chaves de Fenda e Philips', 'Jogo de chaves para uso geral em montagens e instalações, com pontas variadas.', 179.99, 25, TRUE, 5),
('Kit Buchas e Parafusos 6mm', 'Kit com buchas e parafusos para fixação de acessórios em paredes diversas.', 12.50, 50, TRUE, 5);