-- creating Schema MyDB
create database MyDB;
use MyDB;
-- creating a table
create table customers (
customer_Id Int primary key,
cust_FirstName varchar(20) not null,
cust_LastName varchar (20) not null,
cust_NickName varchar (10),
cust_Age Int,
cust_Gender Character (5) not null,
cust_Country varchar(15) not null,
cust_Salary Decimal not null
);