CREATE DATABASE db_rh;
USE db_rh;
CREATE TABLE tb_colaboradores (
id bigint AUTO_INCREMENT,
nome VARCHAR(255) not null,
telefone VARCHAR(20),
cargo VARCHAR(255) not null,
setor VARCHAR(255),
dataadmissao date not null,
salario DECIMAL (6,2) not null,
primary key(id)
);

select *from tb_colaboradores; 
SELECT * FROM tb_colaboradores WHERE salario > 2000.00;
SELECT * FROM tb_colaboradores WHERE salario < 2000.00;

INSERT INTO tb_colaboradores (nome, telefone, cargo, setor, dataadmissao, salario)
VALUES  ("Ana Silva",'11 987654321', "Gerente de RH", "Recursos Humanos", "2020-03-15", 8000.00),
("João Santos", '11 91234-5678', "Analista de TI", "Tecnologia da Informação", "2018-08-10", 6000.00),
("Maria Oliveira", '11 92345-6789', "Coordenadora de Vendas", "Vendas", "2017-06-20", 5500.00),
("Pedro Santos",'11 93456-7890', "Assistente de Marketing", "Marketing", "2021-01-05", 2800.00),
("Carla Pereira", '11 94567-8901', "Especialista Financeiro", "Finanças", "2019-10-30", 7500.00);

INSERT INTO tb_colaboradores (nome, telefone, cargo, setor, dataadmissao, salario)
VALUES  ("Maria de Lourdes",'11 98345-4671', "Atendente", "Recepção", "2023-04-18", 1800.00);

update tb_colaboradores set salario = 1980.00 where id = 4
