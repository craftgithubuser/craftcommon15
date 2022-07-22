create Schema mydb;
use mydb;
create table customers(
Cust_ID int not null ,
Cust_FirstName varchar(50) not null,
Cust_LastName  varchar(50) not null,
Cust_NickName varchar(50) not null,
Cust_Age int,
Cust_Gender char not null,
Cust_Country varchar(50) not null,
Cust_Salary decimal not null
);
Alter table Customers
Add Bonus int not null;
alter table customers
modify Cust_Age int;
alter table customers
drop Cust_NickName; 
alter table customers
drop bonus;
rename table customers to customer;

drop table customer;
drop schema mydb;

create schema MYDB;
USE MYDB;
create table customers(
Cust_ID int not null ,
Cust_FirstName varchar(50) not null,
Cust_LastName  varchar(50) not null,
Cust_NickName varchar(50) not null,
Cust_Age int,
Cust_Gender char not null,
Cust_Country varchar(50) not null,
Cust_Salary decimal not null
);












