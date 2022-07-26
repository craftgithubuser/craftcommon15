use mydb;

-- Write a query which display all Records from the table?
select * from customers;
-- Write a query which display all columns from the table where  there Citizenship is Ethiopian?
select * from customers 
where Cust_Country = 'Ethiopia';
-- Write a query which display all columns from the table where  there Salary greater than 5million?
select * from Customers
where Cust_Salary > 5000000;
-- Write a query which display all Male Customers Write a query which display all Male Customers FirstName, LastName and Country??
select Cust_FirstName, Cust_LastName, Cust_Country from customers
Where Cust_Gender = 'M';
-- Write a query which display only distinct Country?
select distinct(Cust_Country)
from customers;
-- Write a query which display all Female Customers FirstName, LastName and Country in  descending?
select Cust_FirstName, Cust_LastName, Cust_Country from customers
Where Cust_Gender = 'F'
order by Cust_FirstName, Cust_LastName, Cust_Country desc;
-- Write a query that display all records from the table where Gender female, Here salary is greater than 2million and also Here Citizenship is Ethiopian?
select * from customers
where Cust_Gender = 'F' and Cust_Salary > 2000000 && Cust_Country = 'Ethiopia';
-- Write a query that display all records from the table where there Citizenship is Ethiopian or uzbekistan?
select * from customers
where Cust_Country = 'Ethiopia' || Cust_Country = 'Uzbakistan';
-- Write a query that display Minimum Salary from the table?
select min(Cust_Salary) 
from customers;
-- Write a query that display Maximum Salary from the table?
select max(cust_Fees)
from customers;
-- Write a query that display Number of Customer We have in the table?
select count(cust_FirstName) from customers;
-- Or
 select count(cust_ID) from customers;
-- Write a query that display Average Salary from the record?
select avg(cust_salary) from customers;
-- Write a query that display The sum of all customers Fees?
select sum(Cust_fees) as 'The sum of all customers Fees'
from customers;
-- Write a query that display all the record where there salary is between 2million and 8million?
select * from customers
where Cust_Salary between 2000000 and 8000000;
-- Write a query that display all the record where there firstName start with 'S'?
select * from customers 
where Cust_FirstName like 'S%';
-- Write a query that display all the record where there firstName have 'e' in the second position and His/er lastName have end with 'e'?
select * from customers 
where Cust_FirstName like '_e%' and Cust_LastName like '%e';
 -- Write a query that display all the record where there LastName that start with 'p' and ends with 'a'?
select * from customers 
where Cust_LastName like 'p%' and Cust_LastName like '%a';
-- Or
select * from customers 
where Cust_LastName like 'p%a';
 -- Write a query that display all the customers from Ethiopia, USA and France? 
 select * from customers 
where Cust_country = 'Ethiopia' or Cust_country ='USA' or Cust_country = 'France';
