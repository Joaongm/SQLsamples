create table Albums (
id SERIAL primary key,
Nome varchar(30) not null,
ano_lancamento date not null,
img_url varchar(200) not null
);

create table bandas(
id SERIAL primary key,
nome varchar(50) not null,
vertente varchar(20) not null,
best_seller_id int references albums(id)
);

insert into Albums(Nome,ano_lancamento, img_url) values ('1995', '1995-06-13','https://upload.wikimedia.org/wikipedia/en/thumb/e/e7/1995_album_cover.jpg/220px-1995_album_cover.jpg');
insert into bandas(nome,vertente,best_seller_id) values ('Screaming Headless Torsos', 'Jazz', 1);
insert into Albums(Nome,ano_lancamento, img_url) values ('Dookie', '1994-02-01', 'https://upload.wikimedia.org/wikipedia/pt/thumb/b/b2/Green_Day_-_Dookie.jpg/220px-Green_Day_-_Dookie.jpg');
insert into bandas(nome,vertente,best_seller_id) values ('Green Day', 'Punk Rock', 2);
insert into Albums(Nome,ano_lancamento, img_url) values ('Californication', '1999-06-08', 'https://upload.wikimedia.org/wikipedia/pt/7/78/Red_Hot_Chili_Peppers_-_Californication.jpg');
insert into bandas(nome,vertente,best_seller_id) values	('Red Hot Chilli Peppers', 'Funk Rock', 3);
insert into Albums(Nome,ano_lancamento, img_url) values ('Solve Coagula', '2015-09-25', 'https://img.discogs.com/lHHEId6VKUE9YMlmQM9YBeEFtfQ=/fit-in/600x524/filters:strip_icc():format(jpeg):mode_rgb():quality(90)/discogs-images/R-8297315-1537102104-3452.jpeg.jpg');
insert into bandas(nome,vertente,best_seller_id) values ('Baphomet Engine', 'Dark Psytrance', 4);
insert into Albums(Nome,ano_lancamento, img_url) values ('Cure for Pain', '1993-01-01', 'https://upload.wikimedia.org/wikipedia/pt/e/e1/Morphine-Cure_for_Pain_%28album_cover%29.jpg');
insert into bandas(nome,vertente,best_seller_id) values ('Morphine', 'Blues Rock', 5);
insert into Albums(Nome,ano_lancamento, img_url) values ('Thriller', '1982-11-30', 'https://upload.wikimedia.org/wikipedia/pt/3/30/Michael_Jackson_-_Thriller.jpg');
insert into bandas(nome,vertente,best_seller_id) values ('Michael Jackson', 'Pop', 6);

alter table Albums 
alter column img_url set data type varchar(300);

select * from albums

select * from bandas 


--selecionando bandas de subgeneros do Rock --
select nome, vertente from bandas where vertente like '%Rock';

-- selecionando albums do período entre 1990 e 2000 --

select nome, ano_lancamento, img_url from albums where ano_lancamento between '1990-01-01' and '2000-01-01';



-- inner joins--

select b.id, b.nome, b.vertente, a.nome, a.ano_lancamento, a.img_url
from bandas b inner join albums a 
on b.best_seller_id = a.id;

select b.id, b.nome as Banda, b.vertente, a.nome as Album_Best_seller, a.ano_lancamento, a.img_url
from bandas b inner join albums a 
on b.best_seller_id = a.id;

select b.id, b.nome as Banda, a.nome as Album_Best_seller, a.img_url
from bandas b inner join albums a 
on b.best_seller_id = a.id;

select * from bandas b 
full outer join albums a 
on a.id = b.best_seller_id ;


-- right join --

select b.id, b.nome as banda, a.nome as Album 
from bandas b right join  albums a 
on b.best_seller_id = a.id;

select b.id, b.nome as banda, a.nome as Album, a.ano_lancamento, a.img_url 
from bandas b right join  albums a 
on b.best_seller_id = a.id;

-- Albums subvertentes de rock --

select b.id, b.nome as banda, a.nome as Album, a.ano_lancamento, a.img_url 
from bandas b right join  albums a 
on b.best_seller_id = a.id where vertente like '%Rock';

--bandas com nome plural--

select b.id, b.nome as banda, a.nome as Album, a.ano_lancamento, a.img_url 
from bandas b right join  albums a 
on b.best_seller_id = a.id where b.nome like '%s';

--left join--

select b.id, a.nome as Album, b.vertente,  b.nome as banda
from  albums a left join bandas b 
on a.id = b.best_seller_id;

select b.id, a.nome as Album, a.ano_lancamento, b.nome as banda, a.img_url 
from albums a left join  bandas b 
on b.best_seller_id = a.id;


-- Albums entre 90 e 00 --
select b.id, a.nome as Album, a.ano_lancamento, b.nome as banda, a.img_url 
from albums a left join  bandas b 
on b.best_seller_id = a.id where ano_lancamento between '1990-01-01' and '2000-01-01';
-- Albums antes de 90 e depois de 00 --
select b.id, a.nome as Album, a.ano_lancamento, b.nome as banda, a.img_url 
from albums a left join  bandas b 
on b.best_seller_id = a.id where ano_lancamento not between '1990-01-01' and '2000-01-01';

