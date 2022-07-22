create database MyDB;
use MyDB;
create table Custumers(
Cust_ID int not null,
Cust_FirstName varchar(50) not null,
Cust_LastName  varchar(50) not null,
Cust_NickName varchar(50),
Cust_Age int,
Cust_Gender char not null,
Cust_Country varchar(50) not null,
Cust_Salary decimal not null
);
 
Alter table Custumers
Add Bonus int not null;

alter table custumers
modify Cust_Age int;

alter table custumers
drop Cust_NickName; 

alter table custumers
drop bonus;

rename table custumers to customer;

drop table customer;

drop schema mydb;

create schema MyDB;

use MyDB;

create table customers(
Cust_ID int not null,
Cust_FirstName varchar(50) not null,
Cust_LastName  varchar(50) not null,
Cust_NickName varchar(50) not null,
Cust_Age int,
Cust_Gender char not null,
Cust_Country varchar(50) not null,
Cust_Salary decimal not null
);

