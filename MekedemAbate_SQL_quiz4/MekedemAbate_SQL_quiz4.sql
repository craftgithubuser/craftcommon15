SELECT * 
from address;

SELECT * 
from customers where Cust_Country ='Ethiopia';

SELECT * 
FROM customers 
WHERE Cust_Salary>5000000;

SELECT Cust_FirstName, Cust_LastName,Cust_Country,Cust_Gender
FROM customers
WHERE Cust_Gender='M';

SELECT DISTINCT cust_Country 
FROM Customers;

SELECT * 
FROM customers
WHERE Cust_Gender='F'
ORDER BY Cust_FirstName,Cust_LastName,Cust_Country,Cust_Gender DESC;

SELECT * 
FROM customers
WHERE Cust_Gender='F'and Cust_Salary>2000000;

SELECT * 
FROM customers
WHERE Cust_Country='Ethiopia'or Cust_Country='Uzbekistan';

SELECT MIN(cust_salary) 
FROM customers;

SELECT MAX(fees) 
FROM customers;

SELECT COUNT(*) 
FROM customers;

select avg(Cust_Salary) as 'average salary'
From customers;

SELECT sum(Cust_Salary) as 'customers salary'
FROM customers;

SELECT * 
FROM customers
WHERE Cust_Salary BETWEEN 2000000 AND 8000000;

SELECT *
FROM customers
WHERE cust_FirstName LIKE 'r%';

SELECT *
FROM customers
WHERE Cust_FirstName LIKE '_e%' or Cust_LastName like '%e';

SELECT *
FROM customers
WHERE Cust_LastName LIKE 'p%a';

SELECT DISTINCT Cust_Country 'Ethiopia','USA','France'
FROM customers;