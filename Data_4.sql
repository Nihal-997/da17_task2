create table courses (
id int primary key,
name varchar not null,
price int not null,
duration int, 
isActive boolean default true
)
select * from courses

insert into courses (id,name,price,duration,isActive) values (1258,'JEE',500,1,true)

insert into courses (id,name,price,duration,isActive) values (5475,'NEET',1000,5,true)

insert into courses (id,name,price,duration,isActive) values (8741,'MBA',2000,2,true)
select * from courses


create table enrollment (
id serial primary key,
name varchar not null,
mob bigint default 0 ,
gender varchar not null,
courses_id int,

CONSTRAINT fk_enrollment_courses FOREIGN key (courses_id) REFERENCES courses (id)
)

insert into enrollment (id,name,mob,gender,courses_id) values (1,'sita',85027419630,'female',1258)
select*from enrollment
insert into enrollment (id,name,mob,gender,courses_id) values (2,'gita',7418529630,'female',5475)
insert into enrollment (id,name,mob,gender,courses_id) values (3,'ganesh',8529637410,'male',8741)

select*from enrollment