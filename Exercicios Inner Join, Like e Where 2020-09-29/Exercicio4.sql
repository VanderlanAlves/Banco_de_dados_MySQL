create database db_cidade_das_carnes;
use db_cidade_das_carnes;

create table tb_categoria 
(
	id_produto int not null auto_increment,
	tipo_carne enum('bovina', 'suína', 'de frango'),
	fornecedores enum('Friboi', 'Bordon', 'Kitut'),
    primary key(id_produto)
);

create table tb_produtos 
(
	id_produto int,
	nome varchar(30),
	validade date,
	data_compra date,
    valor_por_quilo double,
    constraint fk_prod foreign key (id_produto) references tb_categoria (id_produto)
);

insert into tb_categoria values
(default, 'bovina', 'Friboi'),
(default, 'bovina', 'Kitut'),
(default, 'bovina', 'Bordon'),
(default, 'suína', 'Friboi'),
(default, 'de frango', 'Kitut');

insert into tb_produtos values
(1, 'Picanha', '2020-09-30', '2020-05-30', 62.90),
(1, 'Alcatra', '2020-09-05', '2020-04-30', 53.55),
(3, 'Acém', '2020-10-25', '2020-06-30', 20.80),
(2, 'Coxão duro', '2020-03-14', '2020-09-30', 15.30),
(5, 'Coxinha da asa', '2020-02-04', '2020-11-06', 9.99),
(5, 'Peito', '2020-03-12', '2020-12-17', 11.99),
(4, 'Linguiça', '2019-09-30', '2020-12-30', 2.99),
(4, 'Bacon', '2018-03-04', '2021-04-08', 1.99);

select * from tb_produtos 
where valor_por_quilo>50;

select * from tb_produtos 
where valor_por_quilo>3 and valor_por_quilo<60;

select * from tb_produtos 
where nome like 'c%';

select * from tb_categoria inner join tb_produtos
on tb_categoria.id_produto=tb_produtos.id_produto;

select * from tb_categoria inner join tb_produtos
on tb_categoria.id_produto=tb_produtos.id_produto 
where tipo_carne='bovina';


