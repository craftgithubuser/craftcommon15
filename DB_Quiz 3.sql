-- creating a database

create schema MyDB;
use MyDB;

-- creating a table

create table customers(
custID int NOT NULL primary key auto_increment,
cust_firstName varchar(50) not null,
cust_lastName varchar(50) not null,
cust_nickName varchar(20) ,
cust_Age int,
cust_Gender varchar(2) not null,
cust_County varchar(50) not null,
cust_Salary decimal not null

);










