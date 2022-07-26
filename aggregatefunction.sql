use mydb;
create table customers(
Cust_ID int not null ,
Cust_FirstName varchar(50) not null,
Cust_LastName  varchar(50) not null,
Cust_NickName varchar(50) not null,
Cust_Age int,
Cust_Gender char not null,
Cust_Country varchar(50) not null,
Cust_Salary decimal not null,
Cust_Fee int
);

insert into customers
values(111, 'Nick', 'Jones', 'j', 23, 'M', 'USA', 20000000, 65000),
(222, 'Anthony', 'Maritial', 'k', 45, 'M', 'France', 10000000, 45000),
(333, 'Ross', 'Geller', 'g', 12, 'M', 'Uzbakistan', 3600000, 35000),
(444, 'Chandler', 'Bing','ch', 50, 'M', 'Unknown', 3400000, 75000),
(555, 'Rachel', 'Green','rg', 32, 'F', 'Kazakhstan', 400000, 55000),
(666, 'Nick', 'Jones', 'j', 25, 'M', 'USA', 20000000, 85000),
( 777, 'Poul', 'Pogba', 'pp', 42, 'M', 'France', 20000000, 45000),
(888, 'Joey', 'Tribiani','tr',  21, 'M', 'Ethiopia', 70000000, 55000);

-- Write a query which display all Records from the table?
select * from customers;

-- Write a query which display all columns from the table where  there Citizenship is Ethiopian?
select * from customers where cust_country='ethiopia';

      -- Write a query which display all columns from the table where  there Salary greater than 5million?
      select * from customers where cust_salary > 5000000;
      -- Write a query which display all Male Customers FirstName, LastName and Country?
      select cust_FirstName, cust_LastName, cust_country
      from customers where cust_gender='M';
      
      -- Write a query which display only distinct Country?
      Select distinct(cust_country)
from customers;
-- Write a query which display all Female Customers FirstName, LastName and Country in  descending?
      select cust_FirstName, cust_LastName, cust_country
      from customers where cust_gender='F'
      order by cust_FirstName, cust_LastName, cust_country desc;
      -- Write a query that display all records from the table where Gender female, Here salary is greater than 2million and also Here Citizenship is Ethiopian?
      select * from customers where cust_gender='F' and cust_salary > 2000000 and cust_country='ethiopia';
       -- Write a query that display all records from the table where there Citizenship is Ethiopian or uzbekistan
       select * from customers where cust_country='ethiopia' or cust_country= 'uzbekistan';
       
-- Write a query that display Minimum Salary from the table?
select min(cust_salary)
from customers;
-- Write a query that display Maximum Fees from the table?
      select max(cust_Fee)
from customers;
      -- Write a query that display Number of Customer We have in the table?
      select count(cust_ID) FROM customers;
      -- Write a query that display Average Salary from the record?
      
     select Avg(cust_salary) from customers;
     
-- Write a query that display The sum of all customers Fees?

      select sum(cust_Fee) from customers;
     -- Write a query that display all the record where there salary is between 2million and 8million? 
      
      select * from customers where cust_salary between 2000000 and 8000000;
     --  Write a query that display all the record where there firstName start with 'S'?
select * from customers where cust_FirstName like 'S%';
     --  Write a query that display all the record where there firstName have 'e' in the second position and His/er lastName have end with 'e'
      select * from customers where cust_FirstName like '_e%' && cust_LastName like '%e';
      -- Write a query that display all the record where there LastName that start with 'p' and ends with 'a'?
select * from customers where cust_LastName like 'p%a'; 
      
      -- Write a query that display all the customers from Ethiopia, USA and France?
      select * from customers where cust_country= 'ethiopia'or cust_country='usa'or cust_country='france';


