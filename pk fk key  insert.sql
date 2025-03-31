create table college1 (
id int primary key,
name varchar not null,
address varchar not null,
grade varchar default 'D' ,
isActive boolean default true
)


select * from college1

insert into college1 (id,name,address,grade,isActive) values (1,'col1','add1','A',true)

insert into college1 (id,name,address,grade,isActive) values (1,'col2','add2','B',true)

insert into college1 (id,name,address,grade,isActive) values (2,'col1','add1','A',true)

select * from college1

insert into college1 (id,address,grade,isActive) values (3,'add3','A',true)

insert into college1 (id,grade,isActive) values (3,'A',true)

insert into college1 (id,name,address,isActive) values (3,'col3','add3',true)

select * from college1

insert into college1 (id,name,address) values (4,'col4','add4')

select * from college1

insert into college1  values (5,'col5','add5','H',false)
select * from college1

insert into college1  values (6,'col6','add6','A')

select * from college1
insert into college1  values ('col7','add7','A',7)

insert into college1 (name,address,grade,isActive,id) values ('col7','add7','A',true,7)


create table student1 (
id serial primary key,
name varchar not null,
mob bigint default 0 ,
gender varchar not null,
col_id int,
CONSTRAINT fk_student1_college FOREIGN key (col_id) REFERENCES college1 (id)
)
insert into student1(id,name,mob,gender,col_id) values (1,'stud1',1234567890,'male',2)
select*from student1



 