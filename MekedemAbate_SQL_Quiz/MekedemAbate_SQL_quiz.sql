create database MyDB;
create table Customers (
-- inside customers table add a coloumn
Cust_ID int  not null auto_increment primary key,
Cust_FirstName varchar (255) not null,
Cust_LastName varchar (255) not null,
Cust_NickName varchar (255),
Cust_Age int,
Cust_Gender char not null,
Cust_Country varchar (255) not null,
Cust_Salary dec not null
);
use MyDB;