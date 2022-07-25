create table students(
StudentId int NOT NULL,
StudentName varchar(225),
FamilyName Varchar(225),
Address Varchar(225),
PostalCode int,
City Varchar(225)
);
alter table students
modify column StudentId int not null;
alter table students
add primary key(StudentID);
alter table students
add column country varchar(225);
alter table students
add column fee int;

alter table students
add column city varchar(255);


alter table students
add check(StudentID >0);
alter table students
alter city set default 'Addis Ababa';
use studentinfo;

Insert into students (studentID, studentName, FamilyName, Address, PostalCode, City, fee, Country)
values (01, 'Abdu','Aman','westnorth',123,'Baltimore',1200,'USA');


Insert into students (studentID, studentName, FamilyName, Address, PostalCode, City, fee, Country)
values (02, 'Kebede','Amare','tokoma',234,'Maryland',4800,'USA');

Insert into students (studentID, studentName, FamilyName, Address, PostalCode, City, fee, Country)
values (03, 'chala','Gemeda','JIMA',234,'Jima',8900,'Ethiopia');

update students
set studentName ='John', city= 'Virginia'
where studentID= 1;

select StudentId, StudentName, Address, Country
from students;

select *
from students;

select *
from students
where country ='Ethiopia';
select distinct country
from students; 
start transaction;
Insert into students (studentID, studentName, FamilyName, Address, PostalCode, City, fee, Country)
values (04, 'Bedilu','wakjira','Adama',908,'Adama',32000,'Ethiopia');
commit; 

select min(studentID) AS smallestID
FROM STUDENTS;
Select max(studentID) As maximumID
FROM STUDENTS;

SELECT min(FEE) AS MIMINUM
FROM STUDENTS;
SELECT min(FEE AND STUDENTNAME) AS MIMINUM
FROM STUDENTS;

SELECT COUNT(STUDENTid)
from students
where country='Ethiopia';

select avg(fee)
from students; 
select avg(fee)
from students
where country='Ethiopia';
select sum(fee)
from students
where country='Ethiopia';

select sum(fee)
from students;

select*
from students
where fee between 1000 and 3000;

select*
from students
where studentName like '%a';

select*
from students
where studentName like'a%';

select*
from students
where studentName like'a%'and FamilyName like '%a';

select*
from students
where country in('Ethiopia','USA');

create table course(
courseID INT NOT NULL auto_increment,
studentID int,
courseName varchar(255),
startdate datetime,
primary key(courseID),
foreign key(StudentID) references students(studentID));

insert into course (courseId, studentID, CourseName, startdate)
values(null, 1,'fundamental', now()),
(null, 2, 'IT', now()),
(null, 3, 'Java', now());



select course.courseID, students.studentID, Course.studentID, students.StudentName, course.courseName, students.country
from course inner join students
where course.studentId=students.studentID;

select course.courseID, students.studentID, Course.studentID, students.StudentName, course.courseName, students.country
from course left outer join students
on course.studentId=students.studentID;

select course.courseID, students.studentID, Course.studentID, students.StudentName, course.courseName, students.country
from course right outer join students
on course.studentId=students.studentID;
