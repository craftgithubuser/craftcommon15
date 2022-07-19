
create schema MyDB

use MyDB;
create table customers( 
Cust_ID int not null primary key, 
Cust_FirstName varchar(50) Not null,
Cust_LastName varchar(50) Not null,
Cust_NickName varchar(100) Not null,
Cust_Age Int,
Cust_Gender Char not null,
Cust_Country Varchar(50) not null,
Cust_Salary decimal not null
);customers