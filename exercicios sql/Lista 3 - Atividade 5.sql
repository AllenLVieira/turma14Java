create database db_construindo_a_nossa_vida;

use db_construindo_a_nossa_vida;

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
INSERT INTO tb_categoria (categoriaID,categoriaNOME,descricao) VALUES (1,"Piso e revestimento","Materiais para piso e revestimento.");
INSERT INTO tb_categoria (categoriaID,categoriaNOME,descricao) VALUES (2,"Material hidraúlico","Materiais hidráulicos.");
INSERT INTO tb_categoria (categoriaID,categoriaNOME,descricao) VALUES (3,"Iluminação","Materiais para iluminação");
INSERT INTO tb_categoria (categoriaID,categoriaNOME,descricao) VALUES (4,"Materiais elétricos","Materiais para eletricidade");
INSERT INTO tb_categoria (categoriaID,categoriaNOME,descricao) VALUES (5,"Tinta e acessórios","Materiais de pintura e diversos");

-- Parte 4
INSERT INTO tb_produto (nome, tb_categoria,descricao_p,preco,estoque) VALUES ("Piso laminado", "Piso e revestimento","Piso",44,10);
INSERT INTO tb_produto (nome, tb_categoria,descricao_p,preco,estoque) VALUES ("Kit instalação de vaso sanitário", "Material hidraúlico","Kit",38,10);
INSERT INTO tb_produto (nome, tb_categoria,descricao_p,preco,estoque) VALUES ("Abajur", "Iluminação","Iluminação para casa",150,10);
INSERT INTO tb_produto (nome, tb_categoria,descricao_p,preco,estoque) VALUES ("Fio elétrico", "Materiais elétricos","Fio",100,10);
INSERT INTO tb_produto (nome, tb_categoria,descricao_p,preco,estoque) VALUES ("Pincél", "Tinta e acessórios","Utensílio",4,10);
INSERT INTO tb_produto (nome, tb_categoria,descricao_p,preco,estoque) VALUES ("Chuveiro elétrico", "Material hidraúlico","Chuveiro",56,10);
INSERT INTO tb_produto (nome, tb_categoria,descricao_p,preco,estoque) VALUES ("Aquecedor de água", "Material hidraúlico","Aquecedor a gás",444,10);
INSERT INTO tb_produto (nome, tb_categoria,descricao_p,preco,estoque) VALUES ("Conexão hidráulica", "Material hidraúlico","Conexão",46,10);

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
    tb_categoria = "Material hidraúlico";