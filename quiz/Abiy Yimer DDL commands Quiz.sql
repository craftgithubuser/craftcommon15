
create database MyDB;

use MyDB;

create table customers(
cust_ID int auto_increment not null,
cust_FirstName varchar(255) not null,
cust_LastName varchar(255) not null,
cust_NickName varchar(255),
cust_Age int,
cust_Gender character(1) not null,
cust_Country varchar(255) not null,
cust_Salary decimal(10,2) not null,
Primary key(cust_ID)
);

