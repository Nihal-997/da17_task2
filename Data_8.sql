create table courses_1 (
id int primary key,
name varchar not null,
price int not null,
duration int, 
isActive boolean default true
)
select * from courses_1

insert into courses_1 (id,name,price,duration,isActive) values (1258,'JEE',500,1,true)

insert into courses_1 (id,name,price,duration,isActive) values (5475,'NEET',1000,5,true)

insert into courses_1 (id,name,price,duration,isActive) values (8741,'MBA',2000,2,true)
select * from courses_1

create table teacher (
id serial primary key,
name varchar not null,
courses_1_id int,

CONSTRAINT fk_teacher_courses_1 FOREIGN key (courses_1_id) REFERENCES courses_1 (id)
)

insert into teacher (id,name,courses_1_id) values (421,'jki',1258)
insert into teacher (id,name,courses_1_id) values (321,'hgy',5475)
insert into teacher (id,name,courses_1_id) values (541,'frt',8741)

select * from teacher


create table enrollment_1 (
id serial primary key,
name varchar not null,
mob bigint default 0 ,
gender varchar not null,
courses_1_id int,
teacher_id int,

CONSTRAINT fk_enrollment_1_courses_1 FOREIGN key (courses_1_id) REFERENCES courses_1 (id),
CONSTRAINT fk_enrollment_1_teacher FOREIGN key (teacher_id) REFERENCES teacher (id)
)


insert into enrollment_1 (id,name,mob,gender,courses_1_id,teacher_id) values (1,'sita',85027419630,'female',1258,421)
select*from enrollment_1
insert into enrollment_1 (id,name,mob,gender,courses_1_id,teacher_id) values (2,'gita',7418529630,'female',5475,321)
insert into enrollment_1 (id,name,mob,gender,courses_1_id,teacher_id) values (3,'ganesh',8529637410,'male',8741,541)

select*from enrollment_1