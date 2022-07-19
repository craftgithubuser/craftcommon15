-- creating a database
create schema MyDB;
use MyDB;
-- creating a table
create table customers
(
cust_ID int not null auto_increment,
cust_FirstName varchar(50) not null,
cust_LastName varchar(50) not null,
cust_NickName varchar(30),
cust_Age int,
cust_Gender varchar(20) not null,
cust_Country varchar(50) not null,
cust_Salary decimal not null,
primary key(cust_ID)
);
