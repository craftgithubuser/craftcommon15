create Schema mydb;
use mydb;
create table customers(
Cust_ID int not null ,
Cust_FirstName varchar(50) not null,
Cust_LastName  varchar(50) not null,
Cust_NickName varchar(50) not null,
Cust_Age int,
Cust_Gender char not null,
Cust_Country varchar(50) not null,
Cust_Salary decimal not null
);
Alter table Customers
Add Bonus int not null;
alter table customers
modify Cust_Age int;
alter table customers
drop Cust_NickName; 
alter table customers
drop bonus;
rename table customers to customer;

drop table customer;
drop schema mydb;

create schema MYDB;
USE MYDB;
create table customers(
Cust_ID int not null ,
Cust_FirstName varchar(50) not null,
Cust_LastName  varchar(50) not null,
Cust_NickName varchar(50) not null,
Cust_Age int,
Cust_Gender char not null,
Cust_Country varchar(50) not null,
Cust_Salary decimal not null
);

insert into customers
values(111, 'Nick', 'Jones', 'j', 23, 'M', 'USA', 20000000),
(222, 'Anthony', 'Maritial', 'k', 45, 'M', 'France', 10000000),
(333, 'Ross', 'Geller', 'g', 12, 'M', 'Uzbakistan', 3600000),
(444, 'Chandler', 'Bing','ch', 50, 'M', 'Unknown', 3400000),
(555, 'Rachel', 'Green','rg', 32, 'F', 'Kazakhstan', 400000),
(666, 'Nick', 'Jones', 'j', 25, 'M', 'USA', 20000000),
( 777, 'Poul', 'Pogba', 'pp', 42, 'M', 'France', 20000000),
(888, 'Joey', 'Tribiani','tr',  21, 'M', 'Ethiopia', 70000000);

update customers
SET Cust_Country= 'Ethiopia'
where Cust_ID=333;

update customers
SET Cust_Country= "Ethiopia"
where Cust_ID= 444;

update customers
SET Cust_Country= 'Ethiopia'
where Cust_ID= 555;
update customers
SET Cust_Country= 'Ethiopia'
where Cust_ID=333 and 444 and 555;

Delete from customers
where cust_id= 666;

select cust_id 
from customers;
select cust_firstName, Cust_Country
from customers;
























