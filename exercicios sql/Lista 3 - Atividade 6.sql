create database db_cursoDaMinhaVida;

use db_cursoDaMinhaVida;

-- Parte 1
CREATE TABLE tb_categoria (
    categoriaID INT(5),
    categoriaNOME VARCHAR(255) NOT NULL,
    descricao VARCHAR(255) NOT NULL,
    PRIMARY KEY (categoriaNOME)
);

-- Parte 2
CREATE TABLE tb_curso (
    nome VARCHAR(255) NOT NULL,
    tb_categoria VARCHAR(255) NOT NULL,
    descricao_p VARCHAR(255) NOT NULL,
    cargaHoraria INT NOT NULL,
    id INT NOT NULL,
    PRIMARY KEY (nome),
    FOREIGN KEY (tb_categoria)
        REFERENCES tb_categoria (categoriaNOME)
);

-- Parte 3
INSERT INTO tb_categoria (categoriaID,categoriaNOME,descricao) VALUES (1,"Ciência da computação","Elaboração de programas de informática.");
INSERT INTO tb_categoria (categoriaID,categoriaNOME,descricao) VALUES (2,"Engenharia civil","Gerenciar e executar obras e construções.");
INSERT INTO tb_categoria (categoriaID,categoriaNOME,descricao) VALUES (3,"Direito","Cuida da aplicação das leis vigentes de um país.");
INSERT INTO tb_categoria (categoriaID,categoriaNOME,descricao) VALUES (4,"Medicina","Pesquisar as doenças e suas causas para poder posteriormente combatê-las e curá-las.");
INSERT INTO tb_categoria (categoriaID,categoriaNOME,descricao) VALUES (5,"Oceanografia","Investiga as características dos oceanos.");

-- Parte 4
INSERT INTO tb_curso (nome, tb_categoria,descricao_p,cargaHoraria,id) VALUES ("Anatomia", "Medicina","Biológica",252,1);
INSERT INTO tb_curso (nome, tb_categoria,descricao_p,cargaHoraria,id) VALUES ("Java: Introdução", "Ciência da computação","Programação",32,2);
INSERT INTO tb_curso (nome, tb_categoria,descricao_p,cargaHoraria,id) VALUES ("Teoria das estruturas", "Engenharia civil","Exatas",67,3);
INSERT INTO tb_curso (nome, tb_categoria,descricao_p,cargaHoraria,id) VALUES ("Fundamentos do Direito civil", "Direito","Humanas",20,4);
INSERT INTO tb_curso (nome, tb_categoria,descricao_p,cargaHoraria,id) VALUES ("Oceanografia química", "Oceanografia","Exatas",30,5);
INSERT INTO tb_curso (nome, tb_categoria,descricao_p,cargaHoraria,id) VALUES ("Algoritmos e Programação", "Ciência da computação","Programação",10,6);
INSERT INTO tb_curso (nome, tb_categoria,descricao_p,cargaHoraria,id) VALUES ("Banco de Dados I", "Ciência da computação","Programação",24,7);
INSERT INTO tb_curso (nome, tb_categoria,descricao_p,cargaHoraria,id) VALUES ("Inteligência Artificial", "Ciência da computação","Programação",144,8);

-- Parte 5
SELECT 
    *
FROM
    tb_curso
WHERE
    cargaHoraria > 50; -- na atividade ta escrito preço, usei carga horaria

-- Parte 6
SELECT 
    *
FROM
    tb_curso
WHERE
    cargaHoraria >= 3 AND cargaHoraria <= 60;

-- Parte 7
SELECT 
    *
FROM
    tb_curso
WHERE
    nome LIKE 'J%';-- começa com a letra C

SELECT 
    *
FROM
    tb_curso
WHERE
    nome LIKE '%J%';-- possui a letra C

SELECT 
    nome, cargaHoraria, tb_categoria, descricao_p
FROM
    tb_curso
        INNER JOIN
    tb_categoria ON tb_categoria.categoriaNOME = tb_curso.tb_categoria;

-- Parte 9
SELECT 
    *
FROM
    tb_curso
WHERE
    tb_categoria = "Ciência da computação";