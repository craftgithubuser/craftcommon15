
create schema MyDB
use MyDB;customers
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
set Cust_country = "Ethiopia"
where Cust_ID = 333;

update customers
set Cust_country = "Ethiopia"
where Cust_ID = 444;

update customers
set Cust_country = "Ethiopia"
where Cust_ID = 555;

delete from customers
where Cust_ID = 666;

use MyDB;
select * from customers;

select * from customers
where Cust_country = "Ethiopia";

select * from customers
where Cust_salary > 5000000;

Select Cust_FirstName,Cust_Gender,Cust_LastName,Cust_Country
from customers 
where Cust_Gender =  "M";

select  distinct Cust_Country
from customers;

select * from customers
where Cust_Gender = "F"
order by Cust_FirstName, Cust_LastName, Cust_Country desc;

select * from customers
where Cust_Gender = "F" and Cust_Salary > 2000000 and Cust_Country = "Ethiopia";
select * from customers
where Cust_Country = "Ethiopia" or "Uzbekistan";

select min(Cust_Salary) as "lowest salary"
from customers;
select max(Cust_Salary) as "highest salary"
from customers;

select count(Cust_ID) as "number of customers"
from customers;

select avg(Cust_Salary) as "average salary" 
from customers;
select sum(Cust_Salary) as "tota salary"
from customers;
select * from customers
where Cust_Salary between 2000000 and 8000000;
select * from customers
where Cust_FirstName like "S%";

select * from customers
where Cust_FirstName like "_e%" and Cust_LastName like "%e";

select * from customers
where Cust_LastName like "p%a";
select * from customers
where Cust_Country in ("Ethipia", "USA", "France");






