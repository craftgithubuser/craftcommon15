
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

alter table customers
modify Cust_ID int not null auto_increment;
alter table customers
add bonus int not null;
alter table customers
modify Cust_age int not null;

alter table customers
drop column bonus;
   
alter table customers
drop column Cust_NickName;

rename table customers to customer;
drop table customer;
drop schema MyDB;
-- recreating schema MyDB
create schema MyDB
use MyDB;
create table customers( 
Cust_ID int not null primary key auto_increment, 
Cust_FirstName varchar(50) Not null,
Cust_LastName varchar(50) Not null,
Cust_NickName varchar(100) Not null,
Cust_Age Int,
Cust_Gender Char not null,
Cust_Country Varchar(50) not null,
Cust_Salary decimal not null
);
alter table customers
drop column Cust_NickName;
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

update customers
set Cust_country = "Ethiopia
where Cust_ID = 333;

update customers
set Cust_country = "Ethiopia"
where Cust_ID = 444;

update customers
set Cust_country = "Ethiopia"
where Cust_ID = 555;

delete from customers
where Cust_ID = 666;

