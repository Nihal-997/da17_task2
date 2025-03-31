create table Product (
id int primary key,
name varchar not null,
price int not null,
specs varchar, 
isActive boolean default true
)
select * from Product

insert into Product (id,name,price,specs,isActive) values (125,'NUTS',500,'B',true)

insert into Product (id,name,price,specs,isActive) values (545,'CASHEW',1000,'A',true)

insert into Product (id,name,price,specs,isActive) values (841,'PISTA',2000,'A',true)
select * from Product


create table stock (
id serial primary key,
quantity int,
Product_id int,

CONSTRAINT fk_stock_Product FOREIGN key (Product_id) REFERENCES Product (id)
)

insert into stock (id, quantity,Product_id) values (1,5000,125)

insert into stock (id, quantity,Product_id) values (2,1000,545)

insert into stock (id, quantity,Product_id) values (3,500,841)


select*from stock