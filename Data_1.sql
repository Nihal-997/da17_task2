
CREATE DATABASE School;

CREATE TABLE Classes (
    ClassID SERIAL PRIMARY KEY,
    ClassName VARCHAR(50),
    Teacher VARCHAR(50)
);


CREATE TABLE Students2 (
    StudentID SERIAL PRIMARY KEY,
    Name VARCHAR(50),
    Age INT,
    ClassID INT REFERENCES Classes(ClassID)
);
 insert into classes (ClassID,ClassName,Teacher) values (1,'first','asd')
select*from classes

insert into students2 (studentID,Name,Age,classid) values (321,'hjk',5,1)
select*from Students2
