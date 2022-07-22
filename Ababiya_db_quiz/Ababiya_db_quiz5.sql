-- creating a database
create schema mydb12;
use mydb12;
-- creating a table
CREATE TABLE customers(
cust_ID int not null auto_increment,
cust_FirstName varchar(50) not null,
cust_LastName varchar(50) not null,
cust_NickName varchar(30),
cust_Age int,
cust_Gender varchar(20) not null,
cust_Country varchar(50) not null,
cust_Salary decimal not null,
primary key(cust_ID)
);
alter table customers
add bonus int not null;
alter table customers
modify column cust_Age int not null;
alter table customers
drop column cust_NickName;
alter table customers
drop column bonus;
RENAME table customers to customer;
drop table customer;
drop schema mydb12;
-- recreating database again
create schema mydb12;
-- recreating table again
use mydb12;
CREATE TABLE customers(
cust_ID int not null auto_increment,
cust_FirstName varchar(50) not null,
cust_LastName varchar(50) not null,
cust_NickName varchar(30),
cust_Age int,
cust_Gender varchar(20) not null,
cust_Country varchar(50) not null,
cust_Salary decimal not null,
primary key(cust_ID)
);
insert into customers(cust_ID,cust_FirstName,cust_LastName,cust_Gender,cust_Country,cust_Salary)
values(111,"Nick","Jones","M","USA",20000000);
insert into customers(cust_ID,cust_FirstName,cust_LastName,cust_Gender,cust_Country,cust_Salary)
values(222,"Antony","Martial","M","France",10000000);
insert into customers(cust_ID,cust_FirstName,cust_LastName,cust_Gender,cust_Country,cust_Salary)
values(333,"Ross","Geller","M","uzbekistan",36000000);
insert into customers(cust_ID,cust_FirstName,cust_LastName,cust_Gender,cust_Country,cust_Salary)
values(444,"Chandler","Bing","M","Unknown",34000000);
insert into customers(cust_ID,cust_FirstName,cust_LastName,cust_Gender,cust_Country,cust_Salary)
values(555,"Rachel","Green","F","kazakhstan",400000);
insert into customers(cust_ID,cust_FirstName,cust_LastName,cust_Gender,cust_Country,cust_Salary)
values(666,"Nick","Jones","M","USA",20000000);
insert into customers(cust_ID,cust_FirstName,cust_LastName,cust_Gender,cust_Country,cust_Salary)
values(777,"Paul","Pogba","M","France",20000000);
insert into customers(cust_ID,cust_FirstName,cust_LastName,cust_Gender,cust_Country,cust_Salary)
values(888,"Joey","Tribbiani","M","Ethiopia",70000000);
select *
from customers;
update customers
set cust_Country="Ethiopia"
where cust_ID=333;
select * 
from customers;
update customers
set cust_Country="Ethiopia"
where cust_ID=444;
select * 
from customers;
update customers
set cust_Country="Ethiopia"
where cust_ID=555;
delete from customers
where cust_FirstName="Nick" and cust_LastName="Jones" and cust_ID=666;
select cust_ID,cust_FirstName,cust_LastName,cust_NickName,cust_Age,cust_Gender,cust_Country,cust_Salary
from customers;
select *
from customers
where cust_Country="Ethiopia";
select *
from customers
where cust_Salary>5000000;
select cust_FirstName,cust_LastName,cust_Country
from customers
where cust_Gender="M";
select distinct cust_Country
from customers;
select cust_FirstName,cust_LastName,cust_Country
from customers
where cust_Gender="F"
order by cust_FirstName,cust_LastName,cust_Country desc;
select *
from customers
where cust_Gender="F" and cust_Salary>2000000 and cust_Country="Ethiopia";
select *
from customers
where cust_Country="Ethiopia" or "uzbekistan";
select min(cust_Salary) as "Lowest Salary"
from customers;
select max(cust_Salary) as "Highest Salary"
from customers;
select count(Cust_ID)
from customers;
select avg(cust_Salary) as "Average Salary"
from customers;
select sum(cust_Salary) as "Total Salary"
from customers;
select *
from customers
where cust_Salary between 2000000 and 8000000;
select *
from customers
where cust_FirstName like "S%";
select * 
from customers
where cust_FirstName like "_e%e";
select *
from customers
where cust_LastName like "p%%a";
select *
from customers
where cust_Country in ("Ethiopia","USA","France");


