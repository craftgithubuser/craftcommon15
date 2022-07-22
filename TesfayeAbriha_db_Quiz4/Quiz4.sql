-- I used a combination of Customer table and infostudents table to query the different question. 

Select * 
from customers;

Select *
from infostudents
where country = "Ethiopia";

Select *
from studentInfo
where salary > 5000000;

Select firstName, lastName, country
from infostudents
where gender = "M";

Select distinct country
from infostudents;

Select firstName, lastName, country
from infostudents
where gender = "F"
order by firstName desc;

Select * 
from infostudents
where gender = "F" and salary > 2000000 and country = "Ethiopia";

select *
from infostudents
where country in("Ethiopia", "Uzbekistan");

select min(salary)
from infostudents;

select max(Fee)
from infostudents;

select count(Cust_ID)
from customers;

select avg(Cust_salary)
from customers;

select sum(Cust_salary + Cust_bonus)
from customers;

select *
from customers
where Cust_Salary between 2000000 and 8000000;

select * 
from customers
where Cust_FirstName like ('S%');

select * 
from customers
where Cust_FirstName like ('_e%') and Cust_LastName like ('%e');

select * 
from customers
where Cust_LastName like ('p%a');

-- if the question is to query to show everything about the customers from Ethiopia, USA and France
select * 
from customers
where country in(Ethiopia, USA, France);

-- if the question is to query the names of the customers from those three countries

select Cust_FirstName, Cust_LastName, Cust_Country 
from customers
where country in(Ethiopia, USA, France);