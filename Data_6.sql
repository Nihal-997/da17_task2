create table books_1 (
id int primary key,
name varchar not null,
price int not null,
author varchar ,
isActive boolean default true
)
select * from books_1

insert into books_1 (id,name,price,author,isActive) values (14,'book1',5,'asd',true)

insert into books_1 (id,name,price,author,isActive) values (15,'book2',50,'sdf',true)

insert into books_1 (id,name,price,author,isActive) values (28,'book3',10,'dfg',true)
select * from books_1

create table author (
id serial primary key,
name varchar not null,
books_1_id int,

CONSTRAINT fk_author_books_1 FOREIGN key (books_1_id) REFERENCES books_1 (id)
)

insert into author (id,name,books_1_id) values (11,'aqwe',14)
insert into author (id,name,books_1_id) values (22,'gtra',15)
insert into author (id,name,books_1_id) values (33,'frat',28)
select * from author


create table borrower_1 (
id serial primary key,
name varchar not null,
mob bigint default 0 ,
gender varchar not null,
books_1_id int,
author_id int,

CONSTRAINT fk_borrower_1_author_books_1 FOREIGN KEY (books_1_id) REFERENCES books_1 (id),
CONSTRAINT fk_borrower_1_author_books_2 FOREIGN KEY (author_id) REFERENCES author (id)
)

insert into borrower_1 (id,name,mob,gender,author_id,books_1_id) values (1,'ramesh',1234567890,'male',11,14)
select*from borrower_1
insert into borrower_1 (id,name,mob,gender,author_id,books_1_id) values (2,'suresh',456789098,'male',22,15)
insert into borrower_1 (id,name,mob,gender,author_id,books_1_id) values (3,'ganesh',456982370,'male',33,28)

select*from borrower_1