create database db_pizzaria_legal;
-- pizzaria onde as pizzas tem nome de artistas
use db_pizzaria_legal;

-- Parte 1
CREATE TABLE tb_categorias (
    categoriaID INT(5),
    categoriaNOME VARCHAR(255) NOT NULL,
    descricao VARCHAR(255) NOT NULL,
    PRIMARY KEY (categoriaNOME)
);

-- Parte 2
CREATE TABLE tb_pizza (
    nome VARCHAR(255) NOT NULL,
    tb_categoria VARCHAR(255) NOT NULL,
    descricao_p VARCHAR(255) NOT NULL,
    preco INT NOT NULL,
    bordaRecheada BOOLEAN NOT NULL,
    PRIMARY KEY (nome),
    FOREIGN KEY (tb_categoria)
        REFERENCES tb_categorias (categoriaNOME)
);

-- Parte 3
INSERT INTO tb_categorias (categoriaID,categoriaNOME,descricao) VALUES (2,"Pizza doce","Pizzas com sabores doces.");
INSERT INTO tb_categorias (categoriaID,categoriaNOME,descricao) VALUES (1,"Pizza salgada","Pizzas com sabor salgado.");
INSERT INTO tb_categorias (categoriaID,categoriaNOME,descricao) VALUES (3,"Bebidas","Bebidas alcoólicas e não alcoólicas.");
INSERT INTO tb_categorias (categoriaID,categoriaNOME,descricao) VALUES (5,"Esfiha doce","Esfihas com sabores doces.");
INSERT INTO tb_categorias (categoriaID,categoriaNOME,descricao) VALUES (4,"Esfiha salgada","Esfihas com sabor salgado.");

-- Parte 4
INSERT INTO tb_pizza (nome, tb_categoria,descricao_p,preco,bordaRecheada) VALUES ("Walter Casagrande", "Esfiha salgada","Manjericão e queijo",30,false);
INSERT INTO tb_pizza (nome, tb_categoria,descricao_p,preco,bordaRecheada) VALUES ("Lulu Santos", "Pizza doce","M&M",40,false);
INSERT INTO tb_pizza (nome, tb_categoria,descricao_p,preco,bordaRecheada) VALUES ("Antônio Fagundes", "Pizza salgada","Mussarela com bacon",120,true);
INSERT INTO tb_pizza (nome, tb_categoria,descricao_p,preco,bordaRecheada) VALUES ("Cláudia Raia", "Esfiha doce","Romeu e Julieta",45,true);
INSERT INTO tb_pizza (nome, tb_categoria,descricao_p,preco,bordaRecheada) VALUES ("Miguel Falabella", "Pizza doce","Paçoca",35,false);
INSERT INTO tb_pizza (nome, tb_categoria,descricao_p,preco,bordaRecheada) VALUES ("Eric Clapton", "Bebidas","Johnnie Walker Black Label",500,false);
INSERT INTO tb_pizza (nome, tb_categoria,descricao_p,preco,bordaRecheada) VALUES ("Anthony Hopkins", "Pizza salgada","Frango com catupiry",50,true);
INSERT INTO tb_pizza (nome, tb_categoria,descricao_p,preco,bordaRecheada) VALUES ("Manu Gavassi", "Bebidas","Tubaína",12,false);

-- Parte 5
SELECT 
    *
FROM
    tb_pizza
WHERE
    preco > 45;

-- Parte 6
SELECT 
    *
FROM
    tb_pizza
WHERE
    preco >= 29 AND preco <= 60;

-- Parte 7
SELECT 
    *
FROM
    tb_pizza
WHERE
    nome LIKE 'C%';-- começa com a letra C

SELECT 
    *
FROM
    tb_pizza
WHERE
    nome LIKE '%C%';-- possui a letra C

SELECT 
    nome, preco, tb_categoria, descricao_p
FROM
    tb_pizza
        INNER JOIN
    tb_categorias ON tb_categorias.categoriaNOME = tb_pizza.tb_categoria;

-- Parte 9
SELECT 
    *
FROM
    tb_pizza
WHERE
    tb_categoria = 'Pizza salgada';