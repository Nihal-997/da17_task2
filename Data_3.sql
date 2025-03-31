create table books (
id int primary key,
name varchar not null,
price int not null,
author varchar ,
isActive boolean default true
)
select * from books

insert into books (id,name,price,author,isActive) values (14,'book1',5,'asd',true)

insert into books (id,name,price,author,isActive) values (15,'book2',50,'sdf',true)

insert into books (id,name,price,author,isActive) values (28,'book3',10,'dfg',true)
select * from books



create table borrower (
id serial primary key,
name varchar not null,
mob bigint default 0 ,
gender varchar not null,
books_id int,

CONSTRAINT fk_borrower_books FOREIGN key (books_id) REFERENCES books (id)
)

insert into borrower (id,name,mob,gender,books_id) values (1,'ramesh',1234567890,'male',14)
select*from borrower
insert into borrower (id,name,mob,gender,books_id) values (2,'suresh',456789098,'male',15)
insert into borrower (id,name,mob,gender,books_id) values (3,'ganesh',456982370,'male',28)

select*from borrower