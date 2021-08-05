create table departamento(
cod_depto SERIAL primary key,
nome_depto varchar(25) not null
);

create table funcionario(
cod_func serial primary key,
nome_func varchar (50) not null,
salario money not null,
cod_depto int references departamento(cod_depto) not null
);

create table projeto(
cod_projeto serial primary key,
nome_projeto varchar(30) not null,
duracao int not null
);

create table func_proj(
cod_func_proj serial primary key,
horas_trab int not null,
cod_func int references funcionario(cod_func) not null,
cod_projeto int references projeto(cod_projeto) not null
);



insert into departamento (nome_depto) values ('Programação');
insert into departamento (nome_depto) values ('RH');
insert into departamento (nome_depto) values ('Administrativo');
insert into departamento (nome_depto) values ('Produção');
insert into departamento (nome_depto) values ('Marketing');
insert into departamento (nome_depto) values ('Pesquisa');
insert into departamento (nome_depto) values ('Vendas');

--select * from departamento d 

insert into funcionario (nome_func, salario, cod_depto) values ('Darth Vader', 3500, 6);
insert into funcionario (nome_func, salario, cod_depto) values ('Megazord', 20000, 1);
insert into funcionario (nome_func, salario, cod_depto) values ('Jiraya', 5000, 5);
insert into funcionario (nome_func, salario, cod_depto) values ('Jaspion', 1200, 2);
insert into funcionario (nome_func, salario, cod_depto) values ('Doctor Rey', 3000, 7);

--select * from funcionario f 


insert into projeto (nome_projeto, duracao) values('Construção da Estrela da Morte', 48);
insert into projeto (nome_projeto, duracao) values('Projeto Superzord', 6);
insert into projeto (nome_projeto, duracao) values('Reconstrução Facial D. Vader', 2);
insert into projeto (nome_projeto, duracao) values('Dominar o mundo', 12);
insert into projeto (nome_projeto, duracao) values('Projeto Togakur', 50);

--select * from projeto p 

insert into func_proj (horas_trab, cod_func, cod_projeto) values (8000, 1, 1);
--

insert into func_proj (horas_trab, cod_func, cod_projeto) values (1000, 2, 2);

insert into func_proj (horas_trab, cod_func, cod_projeto) values (36500, 3, 5);

insert into func_proj (horas_trab, cod_func, cod_projeto) values (2000, 4, 4);

insert into func_proj (horas_trab, cod_func, cod_projeto) values (20, 5, 3);


select * from func_proj fp 



-- inner join -- -- obtenha o nome de cada funcionario e o nome do departamento que cada um pertence --

select f.nome_func, d.nome_depto
from funcionario f inner join departamento d 
on f.cod_depto = d.cod_depto;



-- LEFT JOIN -- Obtenha o nome de todos os departamentos da empresa e quantos funcionarios fazem parte de cada um deles


select d.nome_depto,
count(f.cod_func) as total_empregados
from departamento d left join funcionario f 
on d.cod_depto = f.cod_depto
group by d.nome_depto;


-- mesmo resultado com RIGHT JOIN --

select d.nome_depto, count(f.cod_func) as total_empregados
from funcionario f right join departamento d
on d.cod_depto = f.cod_depto
group by d.nome_depto;
