create table hospital (
id int primary key,
name varchar not null,
address varchar not null,
floor int ,
isActive boolean default true
)
select * from hospital

insert into hospital (id,name,address,floor,isActive) values (1456,'hos1','add1',1,true)

insert into hospital (id,name,address,floor,isActive) values (1568,'hos2','add2',2,true)

insert into hospital (id,name,address,floor,isActive) values (2895,'hos3','add3',3,true)
select * from hospital


create table patient (
id serial primary key,
name varchar not null,
mob bigint default 0 ,
gender varchar not null,
hos_id int,

CONSTRAINT fk_patient_hospital FOREIGN key (hos_id) REFERENCES hospital (id)
)

insert into patient (id,name,mob,gender,hos_id) values (1,'pat1',1234567890,'male',1456)
select*from patient
insert into patient (id,name,mob,gender,hos_id) values (2,'pat2',456789098,'female',1568)
insert into patient (id,name,mob,gender,hos_id) values (3,'pat3',456982370,'male',2895)

select*from patient