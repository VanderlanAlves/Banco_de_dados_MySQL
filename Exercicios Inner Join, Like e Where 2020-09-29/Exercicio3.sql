create database db_farmacia_do_bem;
use db_farmacia_do_bem;

create table tb_categoria  (
	id_categoria int not null auto_increment,
	marca_produto varchar(30),
    sala_estoque int,
    primary key(id_categoria)
    );

create table tb_produtos (
	id_categoria int not null,
    categoria enum ('cosmético', 'medicinal', 'alimentício'),
    nome varchar(30),
    valor double,
    valor_lucro double,
    constraint fk_categoria foreign key(id_categoria) references tb_categoria(id_Categoria)
    );


insert into tb_categoria values
(default, 'bareMinerals', 2),
(default, 'MAC', 2),
(default, 'Bayer', 3),
(default, 'Nivea', 2),
(default, 'Growth', 2);

insert into tb_produtos values
(1, 'cosmético', 'Base HD invisible', 53.90, 9.50),
(2, 'cosmético', 'Batom Ruby', 7.00, 3.10),
(3, 'medicinal', 'Iboprufeno', 30.00, 7.50),
(3, 'medicinal', 'Loratadina', 12.90, 2.20),
(5, 'alimentício', 'Barra Cereal Uva', 5.00, 1.30),
(5, 'alimentício', 'Barra Cereal Castanha', 5.00, 1.30),
(5, 'alimentício', 'Barra Cereal Amendoim', 5.00, 1.30),
(5, 'alimentício', 'Barra Cereal Ameixa', 5.00, 1.30);


select nome, valor, valor_lucro from tb_produtos
where valor>50;

select nome, valor, valor_lucro from tb_produtos
where valor>=3 and valor<=60;

select nome, valor, valor_lucro from tb_produtos
where nome like 'b%';

select * from tb_categoria inner join tb_produtos
on tb_categoria.id_categoria=tb_produtos.id_categoria;

select * from tb_produtos
where categoria='cosmético';



