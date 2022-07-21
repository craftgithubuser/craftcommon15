-- DDL Commands Quiz
create schema MyDB;

create table Customers(
Cust_ID int not null primary key,
Cust_LastNmae varchar(50) not null,
Cust_FirstName varchar(50),
Cust_Age int,
Cust_Gender character not null,
Cust_Country varchar(20) not null,
Cust_Salary decimal(2) not null
);
