create database db_RH;
use db_RH;

create table FuncionariosRH (
	id int not null auto_increment,
    nome varchar(30),
    nascimento date,
    sexo enum('M', 'F'),
    salario float,
    sala int,
    primary key(id)
);

insert into FuncionariosRH values
(default, 'Roberta Silva Pereira', '1984-05-19', 'F', '2356.35','3'),
(default, 'Luís Almeida Alcântara', '1975-06-25', 'M', '2624.71','1'),
(default, 'Geyza Melo Ribeiro', '2001-01-17', 'F', '1248.85','2'),
(default, 'Geovanna Ferreira', '1999-01-29', 'F', '1400.54','5'),
(default, 'Júlio Costa Santos', '2000-11-25', 'M', '1045.90','4');


select id, nome, salario from FuncionariosRH
where salario>2000;

select id, nome, salario from FuncionariosRH
where salario<2000;

update FuncionariosRH
set salario=1474.14
where id=3;

select * from FuncionariosRH;



