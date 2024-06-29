CREATE DATABASE db_generation_game_online;
USE db_generation_game_online;
CREATE TABLE tb_personagens (
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255),
habilidade VARCHAR(255),
poder_de_defesa INT,
poder_de_ataque INT,
agilidade VARCHAR(255),
inteligencia INT,
primary key (id)
);

CREATE TABLE tb_classes (
id BIGINT AUTO_INCREMENT,
tipo VARCHAR(400),
descricao VARCHAR(400),
primary key (id)
);

INSERT INTO tb_classes (tipo, descricao)
VALUES ("Guerreiro", "Capacidade de suportar danos e resistir a efeitos adversos prolongados."),
("Mago", "Habilidades mágicas, pode manipular e lançar feitiços."),
("Assassino", "Sangue frio. Capacidade de se mover silenciosamente e evitar detecção."),
("Arqueiro", "Habilidade de acertar alvos específicos com precisão excepcional."),
("Druida", "Conexão com a natureza, comunica-se com animais e influencia o ambiente natural."),
("Ladrão", "Habilidade manual excepcional para abrir fechaduras, desarmar armadilhas e realizar furtos.");

ALTER TABLE tb_personagens ADD categoriaid BIGINT;
ALTER TABLE tb_personagens ADD CONSTRAINT fk_personagens_classes 
FOREIGN KEY (categoriaid) REFERENCES tb_classes (id);

SELECT * FROM tb_personagens;
SELECT * FROM tb_classes;
SELECT * FROM tb_personagens WHERE poder_de_ataque > 2000;
SELECT * FROM tb_personagens WHERE poder_de_defesa BETWEEN 1000 AND 2000;
SELECT * FROM tb_personagens WHERE nome LIKE "%c%";

SELECT * FROM tb_personagens INNER JOIN tb_classes ON tb_personagens.categoriaid = tb_classes.id;
SELECT * FROM tb_personagens INNER JOIN tb_classes ON tb_personagens.categoriaid = tb_classes.id WHERE tb_classes.id = 2;


INSERT INTO tb_personagens (nome, habilidade, poder_de_defesa, poder_de_ataque, agilidade, inteligencia, categoriaid)
VALUES 
('Tharok, o Destemido', 'Golpe Furioso', 2000, 4000 , 'Moderada', 4, '1'),
('Lyra, a Feiticeira', 'Bola de Fogo', 2200, 1800, 'Baixa', 10, '2'),
('Kael, o Arco', 'Disparo Preciso', 1800, 3000, 'Alta', 5, '4'),
('Grom, o Temido', 'Fúria Berserk', 2000, 3000, 'Moderada', 3, '3'),
('Sera, a Sombra', 'Golpe Silencioso', 2500, 4000, 'Alta', 7, '3'),
('Alistair, o Curandeiro', 'Cura Divina', 4000, 1500, 'Moderada', 8, '2'),
('Peter, o Justo', 'Fúria da Natureza', 2000, 2000, 'Moderada', 6, '5'),
('Mia, a Ladina', 'Furtividade', 1500, 2200, 'Alta', 7, '6'),
('Xanath, o Mestre das Sombras', 'Invocação de Esqueletos', 1800, 1900, 'Moderada', 9, '2'),
('Elara, a Guardiã da Natureza', 'Transformação em Lobo', 2500, 3000, 'Alta', 8, '5');
