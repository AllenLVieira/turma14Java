create database db_escola;

use db_escola;

create table tb_alunos(
id bigint(5) auto_increment,
nome varchar(255) not null,
idade int not null,
jogaTimeEscola boolean not null,
turma varchar(255) not null,
nota float not null,
primary key(id)
);

insert into tb_alunos (nome,idade,jogaTimeEscola,turma,nota) values ("Allen", 24, true, "7º B",9);
insert into tb_alunos (nome,idade,jogaTimeEscola,turma,nota) values ("Rafa", 26, true, "7ª A",9.5);
insert into tb_alunos (nome,idade,jogaTimeEscola,turma,nota) values ("Bia", 24, true, "7º B",8);
insert into tb_alunos (nome,idade,jogaTimeEscola,turma,nota) values ("Luiz Felipe", 26, true, "7º B",8);
insert into tb_alunos (nome,idade,jogaTimeEscola,turma,nota) values ("Danilo Mendes", 26, true, "7ª A",7.5);

select * from tb_alunos where nota > 7;

select * from tb_alunos where nota < 7;

UPDATE tb_alunos SET jogaTimeEscola = false WHERE id = 1;