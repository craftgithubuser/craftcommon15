
use mydb;

Insert into customers (Cust_ID, Cust_FirstName, Cust_LastName, Cust_Gender, Cust_Country, Cust_Salary)
Values (111, 'Nick', 'Jones', 'M', 'USA', 20000000),
(222, 'Antony', 'Martial', 'M', 'France', 10000000 ),
(333, 'Ross', 'Geller', 'M', 'Uzbekistan', 36000000),
(444, 'Chandler', 'Bing', 'M', 'Unkown', 34000000),
(555, 'Rachel', 'Green', 'F', 'Kazakhstan', '400000'),
(666, 'Nick', 'Jones', 'M', 'USA', '20000000'),
(777, 'Poul', 'Pogba', 'M', 'France', '20000000'),
(888, 'Joey', 'Tribbiani', 'M', 'Ethiopia', 70000000);

-- Update
-- Cust_ID=333,444,555 
-- Country to Ethiopian

select * from customers;

update customers
set Cust_Country = 'Ethiopia'
where Cust_ID =333;

update customers
set Cust_Country = 'Ethiopia'
where Cust_ID =444;

update customers
set Cust_Country = 'Ethiopia'
where Cust_ID =555;

select * from customers;
    
-- Delete 
-- cust_Name=nick jones 
-- WhichCust_ID is 666

DELETE FROM customers WHERE Cust_ID = 666;






















