-- SELECT * FROM mydb.address;


-- creating schema school_db
create schema School_db;
create table students(
id int auto_increment primary key,
first_name varchar(50) not null,
last_name varchar(50) not null,
date_of_birth date not null,
enrollment_date date
);
create table lecturers(
id int auto_increment primary key,
first_name varchar(50) not null,
last_name varchar(50) not null,
degree varchar(50) not null
);
create table courses(
courseid int auto_increment primary key,
title varchar(50) not null,
number_of_credits int,
course_code varchar(50) not null
);
create table rooms(
id int auto_increment primary key,
room_name varchar(50) not null
);
create table classes(
id int auto_increment primary key,
course_id int not null,
lecturer_id int not null,
room_id int not null,
day_time varchar(50) not null,
foreign key(course_id) references courses(courseid),
foreign key(lecturer_id) references lecturers(id),
foreign key(room_id) references rooms(id)
);

create table enrollments(
id int auto_increment primary key,
student_id int not null,
class_id int not null,
foreign key(student_id) references students(id),
foreign key(class_id) references classes(id)
);

insert students(last_name,first_name,date_of_birth,enrollment_date)
value("tsest1","student1", "2001-01-01", "2019-03-01"),
("tsest2","student2", "2001-02-01", null),
("tsest3","student3", "2001-03-01", "2019-03-01"),
("tsest4","student4", "2001-04-01", null),
("tsest5","student5", "2001-05-01", "2019-03-01"),
("tsest6","student6", "2001-06-01", null),
("tsest7","student7", "2001-07-01", null),
("tsest8","student8", "2001-06-01", null);

insert courses(title,number_of_credits,course_code)
value("Data mining",3,"c5105"),
("Introductio to sql",3, "c5106"),
("Introduction to c++",3, "c5107"),
("Website development",3,"c5108"),
("Internet authouring",3, "c5109"),
("Artificial intelligence",3,"c51010");

insert lecturers(first_name,last_name,degree)
value("benedict","harold","BSc"),
("beverly", "small","BSc"),
("henery","osbounce","MSc"),
("reid", "welson","BSc"),
("alemu"," tadese", "Phd"),
("getachew","dires","MSc"),
("nathnael", "dires"," MSc");

insert rooms(room_name)
value("81"),
("82"),
("83"),
("84"),
("85");
insert classes(course_id,lecturer_id,room_id,day_time)
value(1,2,1, "Monday-8:00am to 10:00am"),
(1,2,1, "wendsday-8:00am to 10:00am"),
(2,4,5, "thursday-1:00pm to 3:00pm"),
(2,4,5, "friday-2:00pm to 4:00pm"),
(3,1,2, "Monday-9:00am to 10:00am"),
(3,1,2, "thursday-3:00pm to 4:00pm"),
(4,5,3, "Monday-8:00am to 10:00am"),
(4,5,3, "wendsday-8:00am to 10:00am"),
(5,7,4, "thursday-1:00pm to 3:00pm"),
(5,3,4, "friday-2:00pm to 4:00pm"),
(6,6,1, "tuesday-9:00am to 10:00am"),
(6,6,1, "friday-1:00pm to 3:00pm");
insert enrollments(student_id,class_id)value
((1,1),(1,2),(1,3),(1,4),(1,5),(1,6),(1,7),(1,8),
(7,1),(7,2),(7,3),(7,4),(7,5),(7,6),(7,7),(7,8),(7,9),(7,10),(7,11),(7,12),
(3,1),(3,2),(3,3),(3,4),(3,5),(3,6),(3,7),(3,8),(3,9),(3,10),
(4,1),(4,2),(4,3),(4,4),(4,5),(4,6),(4,7),(4,8));
-- select (day_time)
-- from classes class
create view class_info as 

select classes.day_time,rooms.room_name,lecturers.last_name,lecturers.first_name,courses.title,courses.number_of_credits,courses.course_code
from classes 
inner join lecturers on classes.lecturer_id=lecturers.id
inner join courses on classes.course_id= courses.courseid
inner join rooms on classes.room_id= rooms.id;

select* from class_info;