-- criar um banco de dados
create database db_servico_rh;
-- acesso ao db
use db_servico_rh;

-- cria uma tabela
create table tb_funcionario(
id bigint(5) auto_increment,
nome varchar(255) not null,
salario float not null,
idade int not null,
cargo varchar(255) not null,
primary key(id)
);
 
 -- Populando tabela
insert into tb_funcionario (nome,salario,idade,funcao) values ("Allen",10000, 24, "Dev Team");
insert into tb_funcionario (nome,salario,idade,funcao) values ("Rafa",15000, 26,"Product Owner");
insert into tb_funcionario (nome,salario,idade,funcao) values ("Bia",10000, 24, "Dev Team");
insert into tb_funcionario (nome,salario,idade,funcao) values ("Luiz Felipe",10000, 26, "Dev Team");
insert into tb_funcionario (nome,salario,idade,funcao) values ("Danilo Mendes",12000, 26, "Scrum Master");
 
 -- busca da tabela funcionario com salario menor que 2000
select * from tb_funcionario where salario < 2000;

 -- busca da tabela funcionario com salario maior que 2000
select * from tb_funcionario where salario > 2000;

-- atualizar um dado da tabela
UPDATE tb_funcionario SET funcao = "Rainha do Nilo",salario =  9999 WHERE id = 2;