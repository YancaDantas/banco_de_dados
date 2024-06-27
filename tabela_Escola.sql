CREATE DATABASE db_escola;
USE db_escola;
CREATE TABLE tb_estudantes (
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255) not null,
datanascimento DATE,
RegistroMatricula INT not null,
Ano_serie VARCHAR(50) not null,
notaMedia DECIMAL (6,2),
primary key(id)
);

SELECT * FROM tb_estudantes;
SELECT * FROM tb_estudantes WHERE notaMedia > 7.0;
SELECT * FROM tb_estudantes WHERE notaMedia < 7.0;

INSERT INTO tb_estudantes (nome, datanascimento, RegistroMatricula, Ano_Serie, notaMedia)
VALUES
("João", '1995-03-15', '12345', '9º ano', 8.5),
('Maria', '1998-07-22', '54321', '9º ano', 9.2),
('Pedro', '1997-11-10', '98765', '8º ano', 6.8),
('Ana Beatriz', '1996-02-28', '24680', '7º ano', 8.9),
('Carlos', '1999-09-05', '13579', '6º ano', 7.0),
('Sofia', '1994-12-03', '86420', '6º ano', 9.5),
('Lucas Miguel', '2000-04-17', '97531', '9º ano', 6.5),
('Beatriz', '1993-08-20', '46802', '8º ano', 8.2),
('Ramon', '1992-05-12', '35791', '7º ano', 7.3),
('Maria Antonia', '1991-10-25', '80246', '6º ano', 9.8);

