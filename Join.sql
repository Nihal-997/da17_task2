create table school (
id int primary key,
name varchar not null
)
select * from school

insert into school (id,name) values (1,'lbsv')
insert into school (id,name) values (2,'jk')
select * from school

create table teache (
id serial primary key,
name varchar not null,
school_id int,

CONSTRAINT fk_teache_school FOREIGN key (school_id) REFERENCES school (id)
)
select * from teache

insert into teache (id,name,school_id) values (10,'sita',1 )
insert into teache (id,name,school_id) values (20,'gita',2 )
select * from teache

create table sub (
id serial primary key,
name varchar not null,
teache_id int,

CONSTRAINT fk_sub_teache FOREIGN key (teache_id) REFERENCES teache (id)
)
select * from sub

insert into sub (id,name,teache_id) values (420,'JEE', 10)
insert into sub (id,name,teache_id) values (376,'NEET', 20)
select * from sub

create table user_1 (
id serial primary key,
name varchar not null,
sub_id int,

CONSTRAINT fk_user_1_sub FOREIGN key (sub_id) REFERENCES sub (id)
)
select * from user_1

insert into user_1 (id,name,sub_id) values (101,'raju',420 )
insert into user_1 (id,name,sub_id) values (102,'shyam', 376)
select * from user_1

create table grade (
grades varchar,
user_1_id int,
sub_id int,

CONSTRAINT fk_grade_user_1_id FOREIGN key (user_1_id) REFERENCES user_1 (id),
CONSTRAINT fk_grade_sub_id FOREIGN key (sub_id) REFERENCES sub (id)
)
select * from grade

insert into grade (grades,user_1_id,sub_id) values ('A',101,420 )
insert into grade (grades,user_1_id,sub_id) values ('B',102,376 )
select * from grade


SELECT 
    school.id AS school_id,
    school.name AS school_name,
    teache.id AS teache_id,
    teache.name AS teache_name,
    sub.id AS sub_id,
    sub.name AS sub_name,
    user_1.id AS user_id,
    user_1.name AS user_name,
    grade.grades AS grade
FROM 
    school
LEFT JOIN 
    teache ON school.id = teache.school_id
LEFT JOIN 
    sub ON teache.id = sub.teache_id
LEFT JOIN 
    user_1 ON sub.id = user_1.sub_id
LEFT JOIN 
    grade ON user_1.id = grade.user_1_id AND sub.id = grade.sub_id;