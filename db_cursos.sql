CREATE DATABASE db_curso_ead;
USE db_curso_ead;

CREATE TABLE tb_categorias (
id BIGINT AUTO_INCREMENT,
tipo VARCHAR(50),
duracao VARCHAR (100),
Primary key(id)
);

INSERT INTO tb_categorias (tipo, duracao)
VALUES ("Graduação", "4 anos"),
("Tecnólogo", "2 anos"),
("Pós-graduação", "2 anos"),
("Mestrado", "2 anos"),
("Doutorado", "5 anos");

CREATE TABLE tb_cursos (
id BIGINT AUTO_INCREMENT,
Nome VARCHAR(255) not null,
Area VARCHAR(255),
Descricao VARCHAR(400),
Valor DECIMAL (6,2) not null,
Requisitos VARCHAR(400),
Modalidade VARCHAR(255) not null,
Periodo VARCHAR(100),
Certificado BOOLEAN,
primary key(id)
);


SELECT * FROM tb_categorias;
ALTER TABLE tb_cursos ADD categoriaid BIGINT;
ALTER TABLE tb_cursos ADD CONSTRAINT fk_cursos_categorias 
FOREIGN KEY (categoriaid) REFERENCES tb_categorias (id);

SELECT * FROM tb_cursos WHERE valor > 500.00;
SELECT * FROM tb_cursos WHERE valor BETWEEN 800.00 AND 3000.00;
SELECT * FROM tb_cursos WHERE nome LIKE "%j%";
SELECT * FROM tb_cursos INNER JOIN tb_categorias ON tb_cursos.categoriaid = tb_categorias.id;
SELECT * FROM tb_cursos INNER JOIN tb_categorias ON tb_cursos.categoriaid = tb_categorias.id WHERE tb_categorias.id = 5;


INSERT INTO tb_cursos (Nome, Area, Descricao, Valor, Requisitos, Modalidade, Periodo, Certificado, categoriaid)
VALUES
('Engenharia Civil', 'Engenharia', 'Curso de graduação em engenharia civil abordando projetos de infraestrutura e construção.', 4500.00, 'Ensino médio completo.', 'Presencial ou EAD', 'Integral', TRUE, 1),    ('Análise e Desenvolvimento de Sistemas', 'Tecnologia da Informação', 'Curso tecnólogo focado no desenvolvimento de software e análise de sistemas.', 1200.00, 'Conhecimentos básicos em programação.', 'Online', 'Noturno', TRUE, 2),
('Gestão Estratégica de Negócios', 'Administração', 'Pós-graduação voltada para a gestão estratégica de empresas e negócios.', 1200.00, 'Graduação completa em qualquer área.', 'Online', 'Flexível', TRUE, 3),
('Especialização em Ciências Biológicas', 'Ciências Biológicas', 'Programa de mestrado com foco em pesquisa e estudos avançados em biologia.', 3000.00, 'Graduação em biologia ou áreas relacionadas.', 'Presencial', 'Integral', TRUE, 4),
('Doutorado em Economia', 'Economia', 'Programa de doutorado que explora teorias econômicas avançadas e pesquisa aplicada.', 2000.00, 'Mestrado em economia ou áreas afins.', 'Presencial', 'Integral', TRUE, 5),
(' Técnico em Enfermagem', 'Saúde', 'Curso focado na assistência de enfermagem e cuidados básicos de saúde.', 1500.00, 'Ensino médio completo.', 'Presencial', 'Noturno', TRUE, 2),
('Arquitetura e Urbanismo', 'Arquitetura', 'Curso de graduação em arquitetura e urbanismo focado em projetos de construção e urbanização.', 3500.00, 'Ensino médio completo.', 'Presencial', 'Integral', TRUE, 1),
('Especialização em Direito Penal', 'Direito', 'Curso de especialização em direito penal com ênfase em prática forense.', 4000.00, 'Graduação em direito.', 'Presencial', 'Vespertino', TRUE, 3),
('Mestrado em Marketing', 'Marketing', 'Programa de mestrado em marketing com ênfase em estratégias avançadas de mercado e comportamento do consumidor.', 3000.00, 'Graduação em administração, marketing ou áreas relacionadas.', 'Presencial', 'Integral', TRUE, 5),
('Curso de Design Gráfico', 'Design', 'Curso básico de design gráfico abordando princípios e ferramentas de design.', 1800.00, 'Ensino médio completo.', 'Online', 'Noturno', TRUE, 2),
('Curso de Empreendedorismo Digital', 'Empreendedorismo', 'Curso que ensina estratégias para empreender online e gerenciar negócios digitais.', 2000.00, 'Conhecimentos básicos em negócios e graduação completa.', 'Online', 'Flexível', TRUE, 3);