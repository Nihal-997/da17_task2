create table hospital_1 (
id int primary key,
name varchar not null,
address varchar not null,
floor int ,
isActive boolean default true
)
select * from hospital_1

insert into hospital_1 (id,name,address,floor,isActive) values (1456,'hos1','add1',1,true)

insert into hospital_1 (id,name,address,floor,isActive) values (1568,'hos2','add2',2,true)

insert into hospital_1 (id,name,address,floor,isActive) values (2895,'hos3','add3',3,true)
select * from hospital_1

create table doctor (
id serial primary key,
name varchar not null,
fees int,
hos_1_id int,

CONSTRAINT fk_doctor_hospital_1 FOREIGN key (hos_1_id) REFERENCES hospital_1 (id)
)

insert into doctor (id,name,fees,hos_1_id) values (147,'qwerty',100,1456)
insert into doctor (id,name,fees,hos_1_id) values (258,'asdfg',500,1568)
insert into doctor (id,name,fees,hos_1_id) values (369,'zxcvb',200,2895)
select * from doctor



create table patient_1 (
id serial primary key,
name varchar not null,
mob bigint default 0 ,
gender varchar not null,
hos_1_id int,
doctor_id int,

CONSTRAINT fk_patient_1_doctor FOREIGN key (doctor_id) REFERENCES doctor (id),
CONSTRAINT fk_patient_1_hospital_1 FOREIGN key (hos_1_id) REFERENCES hospital_1 (id)
)

insert into patient_1 (id,name,mob,gender,doctor_id,hos_1_id) values (1,'pat1',1234567890,'male',147,1456)
insert into patient_1 (id,name,mob,gender,doctor_id,hos_1_id) values (2,'pat2',456789098,'female',258,1568)
insert into patient_1 (id,name,mob,gender,doctor_id,hos_1_id) values (3,'pat3',456982370,'male',369,2895)

select*from patient_1