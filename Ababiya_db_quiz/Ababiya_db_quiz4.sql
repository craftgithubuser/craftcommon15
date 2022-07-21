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




