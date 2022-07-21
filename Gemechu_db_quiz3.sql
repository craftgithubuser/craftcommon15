create table Students(
ID int,
Last_name varchar(20),
First_name varchar(20),
Address varchar(100),
Postal_code int,
City varchar(100)
);

create table Stud_Example as
select id, last_Name, postal_Code, city
From Students;

alter table students
modify column Last_name varchar(50) not null;

alter table students
add primary key(ID);

alter table students
add StudentAge int;

alter table students
modify Postal_code int not null;

rename table students to Student;

alter table Student
rename column ID to StudentID;

alter table student
modify StudentID int not null auto_increment;

alter table student
drop column city;

alter table student
add check(studentAge>10);


create schema StudentsInfo;

use StudentsInfo;

create table Infostudents(
StudentId int not null auto_increment, 
StudentName varchar(255) not null,
ParentName varchar(255) not null,
Address varchar(255),
PostalCode int not null,
City varchar(255) default 'Addis Ababa',
Country varchar(255) not null,
Fee int not null,
primary key(StudentId)
);

insert into infostudents
values(null, "James", "Bond", "12 st.", 45345, "Nairobi", 'kenya', 2000000);
 
insert into infostudents(StudentName, ParentName, PostalCode, Country, Fee)
values("Jamie", "Foxx", 54324, "USA", 6000000);

 alter table infostudents
 
 delete from infostudents 
 where StudentId = 3;

 INSERT INTO Infostudents( StudentName, ParentName, Address, PostalCode, City,  Country, Fee)
VALUES ( 'Toni', 'Thomas', '01-RG Road',  1000, 'Frankfurt', 'Germany', 42145);
 INSERT INTO Infostudents
VALUES (null, 'Amanuel', 'Negash', 'Mayo Road',  27460, 'Rio Claro', 'Brazil', 65432),
(null, 'Chala', 'Baheru', 'silver spring',  1000, 'Maryland', 'USA', 65432),
(null, 'Henok', 'Mamo', 'Gangnam Street',  135081, 'Seoul', 'South Korea', 22353),
(null, 'Leul', 'Abebe', 'MG Road', 560001, 'Bangalore',  'India', 23455);

INSERT INTO Infostudents( StudentName, ParentName, PostalCode, Country, Fee)
VALUES ('Abebe', 'Kebde',  1000,  'Ethiopia', 42145);

insert into infostudents(StudentID, StudentName, ParentName, Address, PostalCode, City, Country, Fee)
VALUES (null, 'John', 'Jones', '09-road', 23434, 'NY', 'USA', 42145),
(null, 'Keb', 'Abe', 'Magenagn', 12434,'Addis Ababa', 'Ethiopia', 42145),
(null, 'amanda', 'holden', 'MK-Road', 54542,'London', 'England', 542145);

insert into infostudents(StudentID, StudentName, ParentName, Address, PostalCode, City, Country, Fee)
VALUES (null, 'AbdulHannan', 'Mustefa', 'silver spring', 675865, 'Maryland', 'USA', 402145),
(null, 'Temesgen', 'Dangaw', 'TY Road',  784675, 'New Delhi', 'India', 421450),
(null, 'Hagos', 'Goytom', 'MG Road',  656747, 'Bangalore','India', 420145);

-- Update city With studentID=2
-- Update specific records using a condition
update infostudents
set City = "NY"
Where studentID = 2;

-- Update StudentName, city country With studentID=32
-- Update specific records using a condition
UPDATE Infostudents
SET StudentName = 'Alfred', City= 'Frankfurt', Country = 'Germany'
WHERE StudentID = 4;

-- Remove one row by ID
delete from infostudents
where Studentid = 12;

select parentName, studentName, country, fee
From infostudents;

select parentName, studentName, country, fee
From infostudents
where fee > 40000;

select parentName, studentName, country, fee
From infostudents
where country = 'Ethiopia';

select distinct country
from infostudents
order by country; 

select distinct country
from infostudents
order by country asc;

select distinct country
from infostudents
order by country desc;


select *
from infostudents
order by studentName desc;

SELECT * FROM Infostudents
ORDER BY Country asc, StudentName desc;

SELECT * 
FROM Infostudents
WHERE Country='Brazil' AND City='brazili';

SELECT * 
FROM Infostudents
WHERE Country='Brazil' OR City='brazili';

SELECT * 
FROM Infostudents
WHERE not Country='India';