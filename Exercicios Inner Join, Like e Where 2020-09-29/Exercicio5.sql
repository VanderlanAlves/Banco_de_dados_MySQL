create database db_construindo_a_nossa_vida;
use db_construindo_a_nossa_vida;

create table tb_categoria 
(
	id_produtos int not null auto_increment,
	sala_estoque int,
	fornecedores enum('Cimecan', 'MJR', 'Granstock'),
    primary key(id_produtos)
);

create table tb_produtos 
(
	id_produtos int,
	nome varchar(30),
	data_compra date,
    validade date,
    valor double,
    constraint fk_produtos foreign key (id_produtos) references tb_categoria (id_produtos)
);

insert into tb_categoria values
(default, 1, 'Cimecan'),
(default, 2, 'MJR'),
(default, 3, 'Granstock'),
(default, 4, 'Granstock'),
(default, 5, 'Granstock');

insert into tb_produtos values
(1, 'Cimento', '2020-09-30', '2060-05-30', 62.90),
(1, 'Cal', '2020-09-05', '2070-04-30', 53.55),
(1, 'Areia', '2020-10-25', '2040-06-30', 20.80),
(2, 'Tijolo', '2020-03-14', '2025-09-30', 15.30),
(3, 'Tinta', '2020-02-04', '2085-11-06', 9.99),
(4, 'Viga_ferro', '2020-03-12', '2055-12-17', 11.99),
(4, 'Viga_madeira', '2019-09-30', '2084-12-30', 2.99),
(5, 'Lixa_parede', '2018-03-04', '2089-04-08', 1.99),
(5, 'Lixa_Madeira', '2018-03-04', '2089-04-08', 1.99);

select * from tb_produtos 
where valor>50;

select * from tb_produtos 
where valor>3 and valor<60;

select * from tb_produtos 
where nome like 'c%';

select * from tb_categoria inner join tb_produtos
on tb_categoria.id_produtos=tb_produtos.id_produtos;

select * from tb_categoria inner join tb_produtos
on tb_categoria.id_produtos=tb_produtos.id_produtos
where fornecedores='Cimecan';



