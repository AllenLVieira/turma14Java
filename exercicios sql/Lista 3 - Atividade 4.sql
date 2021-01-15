create database db_cidade_das_carnes;

use db_cidade_das_carnes;

-- Parte 1
CREATE TABLE tb_categoria (
    categoriaID INT(5),
    categoriaNOME VARCHAR(255) NOT NULL,
    descricao VARCHAR(255) NOT NULL,
    PRIMARY KEY (categoriaNOME)
);

-- Parte 2
CREATE TABLE tb_produto (
    nome VARCHAR(255) NOT NULL,
    tb_categoria VARCHAR(255) NOT NULL,
    descricao_p VARCHAR(255) NOT NULL,
    preco INT NOT NULL,
    estoque INT NOT NULL,
    PRIMARY KEY (nome),
    FOREIGN KEY (tb_categoria)
        REFERENCES tb_categoria (categoriaNOME)
);

-- Parte 3
INSERT INTO tb_categoria (categoriaID,categoriaNOME,descricao) VALUES (1,"Boi","Carne de boi.");
INSERT INTO tb_categoria (categoriaID,categoriaNOME,descricao) VALUES (2,"Porco","Carne de porco.");
INSERT INTO tb_categoria (categoriaID,categoriaNOME,descricao) VALUES (3,"Ave","Carne de ave.");
INSERT INTO tb_categoria (categoriaID,categoriaNOME,descricao) VALUES (4,"Cordeiro","Carne de cordeiro.");
INSERT INTO tb_categoria (categoriaID,categoriaNOME,descricao) VALUES (5,"Peixe","Carne de peixe.");

-- Parte 4
INSERT INTO tb_produto (nome, tb_categoria,descricao_p,preco,estoque) VALUES ("Picanha", "Boi","Corte de carne de boi",80,10);
INSERT INTO tb_produto (nome, tb_categoria,descricao_p,preco,estoque) VALUES ("Bacon", "Porco","Corte de carne de porco",30,10);
INSERT INTO tb_produto (nome, tb_categoria,descricao_p,preco,estoque) VALUES ("Coxa de frango", "Ave","Corte de carne de galinha",11,10);
INSERT INTO tb_produto (nome, tb_categoria,descricao_p,preco,estoque) VALUES ("Lombo de cordeiro", "Cordeiro","Corte de carne de cordeiro",68,10);
INSERT INTO tb_produto (nome, tb_categoria,descricao_p,preco,estoque) VALUES ("Filé de tilápia", "Peixe","Corte de carne de peixe",12,10);
INSERT INTO tb_produto (nome, tb_categoria,descricao_p,preco,estoque) VALUES ("Alcatra", "Boi","Corte de carne de boi",78,10);
INSERT INTO tb_produto (nome, tb_categoria,descricao_p,preco,estoque) VALUES ("Fraldinha", "Boi","Corte de carne de boi",11,10);
INSERT INTO tb_produto (nome, tb_categoria,descricao_p,preco,estoque) VALUES ("Filé mignon", "Boi","Corte de carne de boi",79,10);

-- Parte 5
SELECT 
    *
FROM
    tb_produto
WHERE
    preco > 50;

-- Parte 6
SELECT 
    *
FROM
    tb_produto
WHERE
    preco >= 3 AND preco <= 60;

-- Parte 7
SELECT 
    *
FROM
    tb_produto
WHERE
    nome LIKE 'C%';-- começa com a letra C

SELECT 
    *
FROM
    tb_produto
WHERE
    nome LIKE '%C%';-- possui a letra C

SELECT 
    nome, preco, tb_categoria, descricao_p
FROM
    tb_produto
        INNER JOIN
    tb_categoria ON tb_categoria.categoriaNOME = tb_produto.tb_categoria;

-- Parte 9
SELECT 
    *
FROM
    tb_produto
WHERE
    tb_categoria = "Boi";