create database db_ecommerce;

use db_ecommerce;

create table tb_produtos(
id bigint(5) auto_increment,
descricao varchar(255) not null,
preco float not null,
categoria varchar(255) not null,
marca varchar(255) not null,
primary key(id)
);

 
insert into tb_produtos (descricao,preco,categoria,marca) values ("Samsung S10 Plus",3000, "Smartphone", "Samsung");
insert into tb_produtos (descricao,preco,categoria,marca) values ("iPhone 11 Pro",8000, "Smartphone", "Apple");
insert into tb_produtos (descricao,preco,categoria,marca) values ("Smart TV LED 65\" UHD 8K LG 65NANO96",12500, "Televisão", "LG");
insert into tb_produtos (descricao,preco,categoria,marca) values ("Smart TV QLED 75\" 8K Samsung 75Q950T",50000, "Televisão", "Samsung");
insert into tb_produtos (descricao,preco,categoria,marca) values ("Console Playstation 5 825GB",4700, "Videogames", "Sony");
insert into tb_produtos (descricao,preco,categoria,marca) values ("Xbox One S",2600, "Videogames", "Microsoft");
insert into tb_produtos (descricao,preco,categoria,marca) values ("Air Fryer Family NAF-03I 4L",380, "Eletroportáteis", "Mondial");
insert into tb_produtos (descricao,preco,categoria,marca) values ("Liquidificador PH900",151.90, "Eletroportáteis", "Philco");

select * from tb_produtos where preco > 500;

select * from tb_produtos where preco < 500;

UPDATE tb_produtos SET preco = 7500 WHERE id = 2;