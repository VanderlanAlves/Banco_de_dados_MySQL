create database db_ecommerce;
use db_ecommerce;

create table produtos (
	id int not null auto_increment,
    codigo int,
    nome varchar(45),
    marca varchar(20),
	valor float,
    cor varchar(25),
	primary key(id)
);

insert into produtos values
(default, '465855', 'Galaxy S9', 'Samsung', '2499.90', 'preto'),
(default, '365854', 'Rack Retrô', 'Bartira', '299.90', 'bege'),
(default, '565853', 'Notebook Warrior', 'Multilaser', '1499', 'cinza'),
(default, '665852', 'Mouse M170', 'Logitech', '49.90', 'vermelho'),
(default, '865851', 'Teclado M170', 'Logitech', '139.99', 'vermelho'),
(default, '505850', 'Garrafa RGB 2L', 'Tupperware', '149.99', 'laranja'),
(default, '425859', 'Televisão 32 polegadas 8k', 'LG', '4999.90', 'preta'),
(default, '265858', 'Caneta esferográfica especial', 'BIC', '1.99', 'azul');

select id, nome, valor from produtos
where valor>500;

select id, nome, valor from produtos
where valor<500;

update produtos
set valor=3199.90
where id=1;

select * from produtos;


