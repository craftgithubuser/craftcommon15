create schema MyDB;

create table MyDB.Customers(
Cust_ID int auto_increment not null primary key,
Cust_FirstName varchar(30) not null,
Cust_LastName varchar(30) not null,
Cust_NickName varchar(10),
Cust_Age int,
Cust_Gender varchar(2) not null,
Cust_Country varchar(15) not null,
Cust_Salary decimal not null
)


