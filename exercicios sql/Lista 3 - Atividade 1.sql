create database db_generation_game_online;

use db_generation_game_online;

-- Parte 1
CREATE TABLE tb_classe (
    especialidade VARCHAR(255) NOT NULL,
    cargo VARCHAR(255) NOT NULL,
    descricao VARCHAR(255) NOT NULL,
    PRIMARY KEY (cargo)
);

-- Parte 2
CREATE TABLE tb_personagem (
    nome VARCHAR(255) NOT NULL,
    tb_cargo VARCHAR(255) NOT NULL,
    ataque INT(5) NOT NULL,
    defesa INT(5) NOT NULL,
    vida INT(5) NOT NULL,
    PRIMARY KEY (Nome),
    FOREIGN KEY (tb_cargo)
        REFERENCES tb_classe (cargo)
);

-- Parte 3
INSERT INTO tb_classe (especialidade,cargo,descricao) VALUES ("Suporte", "Cura","Classe que cura ou potencializa outros.");
INSERT INTO tb_classe (especialidade,cargo,descricao) VALUES ("Suporte", "Tanque","Classe que consegue suportar mais dano.");
INSERT INTO tb_classe (especialidade,cargo,descricao) VALUES ("Atirador", "DPS","Classe que consegue dar muito dano em pouco tempo.");
INSERT INTO tb_classe (especialidade,cargo,descricao) VALUES ("Lutador", "Assassino","Classe com grande mobilidade e dano em único alvo.");
INSERT INTO tb_classe (especialidade,cargo,descricao) VALUES ("Mago", "Controle","Classe com magias que conseguem controlar uma área.");

-- Parte 4
INSERT INTO tb_personagem (nome,tb_cargo,ataque,defesa,vida) VALUES ("Soraka", "Cura",1000,5000,5000);
INSERT INTO tb_personagem (nome,tb_cargo,ataque,defesa,vida) VALUES ("Alistar", "Tanque",8000,9000,8000);
INSERT INTO tb_personagem (nome,tb_cargo,ataque,defesa,vida) VALUES ("Vayne", "DPS",10000,1500,5000);
INSERT INTO tb_personagem (nome,tb_cargo,ataque,defesa,vida) VALUES ("Caitlyn", "DPS",8000,1000,5000);
INSERT INTO tb_personagem (nome,tb_cargo,ataque,defesa,vida) VALUES ("Zed", "Assassino",9000,1950,7000);
INSERT INTO tb_personagem (nome,tb_cargo,ataque,defesa,vida) VALUES ("Khazix", "Assassino",8500,1600,6000);
INSERT INTO tb_personagem (nome,tb_cargo,ataque,defesa,vida) VALUES ("Veigar", "Controle",9500,1200,4000);
INSERT INTO tb_personagem (nome,tb_cargo,ataque,defesa,vida) VALUES ("Zoe", "Controle",7000,1050,4000);

-- Parte 5
SELECT * FROM tb_personagem WHERE ataque > 2000;

-- Parte 6
SELECT * FROM tb_personagem WHERE defesa >= 1000 AND defesa <= 2000;

-- Parte 7
SELECT * FROM tb_personagem WHERE nome LIKE 'C%'; -- começa com a letra C

SELECT * FROM tb_personagem WHERE nome LIKE '%C%'; -- possui a letra C

-- Parte 8
SELECT nome, tb_cargo, especialidade, descricao FROM tb_personagem inner join tb_classe on tb_personagem.tb_cargo = tb_classe.cargo;

-- Parte 9
SELECT * FROM tb_personagem WHERE tb_cargo = "DPS";	