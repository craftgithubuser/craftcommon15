create schema `student Info`;
create database craft_students;

use craft_students;

create table Students(
ID int,
Last_name varchar(20),
First_name varchar(20),
Address varchar(100),
Postal_code int,
City varchar(100)
);

CREATE TABLE Stud_Example as
select ID, Last_Name, First_Name, Address,Postal_Code, City
From Students;

create table Customers(
ID int NOT NULL,
FullName varchar(50),
Country varchar(50),
Address varchar(100),
City varchar(50) 
);