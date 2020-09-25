create database db_generation_game_online;
use db_generation_game_online;

create table tb_classe (
	id int not null auto_increment,
    nome varchar(30),
    arma enum ('rifle', 'pistola', 'machado', 'faca', 'sem arma', 'violino', 'voz'),
    funcao enum ('ataque', 'defesa', 'transporte'),
    primary key(id)
);

create table tb_personagem (
	ataque double,
    defesa double,
    jogabilidade enum ('fácil', 'médio', 'difícil'),
    classe enum ('pistoleiro', 'sniper', 'cargueiro'),
    habilidade enum ('voo', 'invisibilidade', 'supervelocidade', 'sem poder')
    ##constraint fk_personagem foreign key(id_classe) references tb_classe(id_classe)
);

insert into tb_classe values
(default, 'Claus', 'pistola', 'ataque'),
(default, 'Diego', 'faca', 'ataque'),
(default, 'Alisson', 'voz', 'ataque'),
(default, 'Vanya', 'violino', 'ataque'),
(default, 'Luther', 'sem arma', 'defesa');

insert into tb_personagem values
('2564', '125', 'médio', 'pistoleiro', 'voo'),
('4000', '15', 'difícil', 'sniper', 'invisibilidade'),
('2001', '2', 'médio', 'pistoleiro', 'voo'),
('1254', '256', 'fácil', 'pistoleiro', 'voo'),
('510', '525', 'fácil', 'sniper', 'supervelocidade'),
('25', '1658', 'médio', 'pistoleiro', 'supervelocidade'),
('541', '4000', 'difícil', 'pistoleiro', 'supervelocidade'),
('2', '7', 'fácil', 'cargueiro', 'sem poder');


select * from tb_personagem
where ataque>2000;

select * from tb_personagem
where defesa>=1000 and defesa<=2000;

select * from tb_classe
where nome like 'c%';








