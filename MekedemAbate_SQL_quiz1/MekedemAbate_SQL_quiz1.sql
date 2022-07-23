use MyDB;
alter table customers
add column Bonus int not null;

alter table customers
modify column Cust_Age int not null;

alter table customers
drop column cust_nickname,
drop column bonus;

alter table customers
rename to customer;

drop table customer;

drop schema mydb;

create schema MyDB;

use mydb;

create table Customers (
Cust_ID int  not null auto_increment primary key,
Cust_FirstName varchar (255) not null,
Cust_LastName varchar (255) not null,
Cust_Age int not null,
Cust_Gender char not null,
Cust_Country varchar (255) not null,
Cust_Salary dec not null
);