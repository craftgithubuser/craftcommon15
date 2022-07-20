-- quiz 2 UseCase
-- 1. create a database called MyDB
create schema MyDB;
-- 2. Create a table  name customers
use MyDB;
create TABLE customers( 
cust_ID int NOT NULL,
cust_firstname varchar(30),
Cust_lastName char(30) NOT NULL,
cust_NickName char(20),
cust_age int,
Cust_Gender char(10) NOT NULL,
Cust_country varchar(20) NOT NULL,
Cust_salary decimal NOT NULL
);
-- modifying table
alter table customers
add cust_Nickname char(10) after cust_lastName;
alter table customers
add cust_age int after cust_Nickname;

