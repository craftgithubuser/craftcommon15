
create database MyDB;

use MyDB;

create table Customers(
Cust_ID int auto_increment Not Null primary Key,	
Cust_FirstName varchar (50) Not Null,
Cust_LastName varchar (50),
Cust_NickName Varchar (20),
Cust_Age int,
Cust_Gender Char (5) Not Null,
Cust_Country varchar (255) Not Null,
Cust_Salary DECIMAL Not Null
);