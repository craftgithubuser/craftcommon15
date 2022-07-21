create database MyDB;
use MyDB;
create table cusotmers 
(Cust_ID int auto_increment not null primary key,
Cust_FirstName varchar(20) not null,
Cust_LasName varchar(20) not null,
Cust_NickName varchar(20) not null,
Cust_Age int,
Cust_Gender varchar(20) not null,
Cust_Country varchar(20) not null,
Cust_Salar dec not null);