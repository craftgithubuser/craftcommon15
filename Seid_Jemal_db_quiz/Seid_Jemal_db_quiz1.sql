create schema MyDB;
use MyDB;
create table customers(
Cust_ID int primary key auto_increment,
Cust_FirstName varchar(255) not null,
Cust_LastName varchar(255) not null,
Cust_NickName varchar(255),
Cust_Age int,
Cust_Gender char not null,
Cust_Country varchar(255) not null,
Cust_Salary decimal not null
);
