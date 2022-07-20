create schema MyDB;
create table MyDB.Customers(
Cust_ID int primary key,
Cust_FirstName varchar(25) not null,
Cust_LastName varchar(33) not null,
Cust_NickName varchar(15),
Cust_Age int,
Cust_Gender varchar(2) not null,
Cust_Country varchar(20) not null,
Cust_Salary decimal not null
);


