use mydb;
create table customers(
 Cust_ID int not null,
Cust_FirstName varchar(55) not null,
Cust_LastName  varchar(55) not null,
Cust_NickName varchar(55),
Cust_Age int,
Cust_Gender char not null,
Cust_Country varchar(55) not null,
Cust_Salary decimal not null
);

alter table customers
add bonus int not null;

alter table customers
modify cust_gender char not null;

alter table customers
drop cust_lastName;

rename table customers to customer; 
drop database mydb;
create database mydb;
use mydb;
create table customers(
 Cust_ID int not null,
Cust_FirstName varchar(55) not null,
Cust_LastName  varchar(55) not null,
Cust_NickName varchar(55),
Cust_Age int,
Cust_Gender char not null,
Cust_Country varchar(55) not null,
Cust_Salary decimal not null
);



 
