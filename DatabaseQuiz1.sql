-- Creating databse named StudentsInfo
create database StudentsInfo;
-- another way of creating databse
create database School_db;
-- 3rd way of creating databse
-- create database 'Students Informaion';
--  to locate where should the table created we use 
use StudentsInfo;
-- creating tables
create table Students(
id int,
lastName Varchar(20),
firstName nvarchar(30),
Address varchar(100),
PostalCode int,
City varchar(50)
);


-- quiz 2 UseCase
-- 1. create a database called MyDB
create schema MyDB;
-- 2. Create a table  name customers
use MyDB;
create TABLE customers( 
cust_ID int NOT NULL,
cust_firstname varchar(30),
Cust_lastName char(30) NOT NULL,
cust_NickName char(20),
cust_age int,
Cust_Gender char(10) NOT NULL,
Cust_country varchar(20) NOT NULL,
Cust_salary decimal NOT NULL
);
-- modifying table
alter table customers
add cust_Nickname char(10) after cust_lastName;
alter table customers
add cust_age int after cust_Nickname;

/*,

,
Cust_nickName string(20),
Cust_Age int


*/



-- drop table infostudents;
create table Stud_Example as
select id, lastName, postalCode,  city
From Students;
use school_db;
create table infostudents(
id int,
last_name varchar(50),
first_name varchar(50),
dob date,
enrollment_date date
);
create table courses(
course_id int,
course_title varchar(100),
number_of_credit int,
course_code varchar(10)
);
create table lecturers(
id int,
last_name varchar(50),
first_name varchar(50),
degree varchar(50)
);
-- create studentsinfo.example

alter table studetn
modify column StudentName varchar(50) not null;
modify column parentName varchar(50) not null;
--  creating table on database

-- quiz 2 UseCase
-- 1. create a database called MyDB
/*create database MyDB
-- 2. Create a table  name customers
use MyDB;
create table customers(
Cust_ID int primary key not null,
Cust_FirstName string(30) not null,
Cust_lastName string(30) not null,
Cust_nickName string(20),
Custo_Age int
Cust_Gender char(10) not null,
Cust_country string(20) not null,
Cust_salary decimal not null
);*/
