create database Mydb;

create table customers(
Cust_ID int auto_increment not null primary key,
Cust_FirstName varchar(20) not null,
Cust_LastName varchar(20) not null,
Cust_NickName varchar(25),
Cust_Age int,
Cust_Gender char not null,
Cust_Country varchar(30) not null,
Cust_Salary decimal not null

);