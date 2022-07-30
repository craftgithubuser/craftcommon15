-- Write a query which display all Records from the table?
select*
FROM customers;
-- Write a query which display all columns from the table where  there Citizenship is Ethiopian?
select*
FROM customers
where CUST_COUNTRY = "ETHIOPIA";
-- Write a query which display all columns from the table where  there Salary greater than 5million?
select*
from customers
where CUST_SALARY > 5000000;
-- Write a query which display all Male Customers FirstName, LastName and Country?
select CUST_FRISTNAME, CUST_LASTNAME, CUST_COUNTRY
FROM customers
where CUST_GENDER = "M";
-- Write a query which display only distinct Country?
-- ????????
-- Write a query which display all Female Customers FirstName, LastName and Country in  descending?
-- ????
select CUST_FRISTNAME,CUST_LASTNAME,CUST_COUNTRY 
FROM customers
WHERE CUST_GENDER = "F";


-- Write a query that display all records from the table where Gender female, Here salary is greater than 2million and also Here Citizenship is Ethiopian?
select CUST_GENDER = "F"
FROM customers
WHERE CUST_SALARY > 2000000 OR  CUST_COUNTRY = "ETHIOPIA";

-- Write a query that display all records from the table where there Citizenship is Ethiopian or uzbekistan?
SELECT*
FROM customers
WHERE CUST_COUNTRY ="ETHIOPIA" OR CUST_COUNTRY = "UZBEKISTAN";
-- Write a query that display Minimum Salary from the table?

select min(CUST_SALARY)
FROM customers;
-- Write a query that display Maximum Fees from the table?

SELECT max(CUST_SALARY)
FROM CUSTOMERS;

-- Write a query that display Number of Customer We have in the table??????????
SELECT*
FROM customers
WHERE CUST_ID;
-- Write a query that display Average Salary from the record?
select avg(CUST_SALARY)
FROM customers;
-- Write a query that display The sum of all customers Fees?
SELECT sum(CUST_SALARY)
FROM customers;
-- Write a query that display all the record where there salary is between 2million and 8million?
select*
from customers
WHERE CUST_COUNTRY between 2000000 and 8000000;
-- Write a query that display all the record where there firstName start with 'S'?
select*
FROM customers
WHERE CUST_FRISTNAME LIKE "S%";
-- Write a query that display all the record where there firstName have 'e' in the second position and His/er lastName have end with 'e'?
select*
FROM customers
WHERE CUST_FRISTNAME like "-E%" AND CUST_LASTNAME like "%E";
--  Write a query that display all the record where there LastName that start with 'p' and ends with 'a'?
select*
FROM customers
WHERE CUST_LASTNAME LIKE "P%E";
-- Write a query that display all the customers from Ethiopia, USA and France?
select*
FROM customers
WHERE CUST_COUNTRY IN ("ETHIOPIA","USA","FRANCE");

create table Address(
Cust_Zip varchar(50) not null,
Cust_Street varchar(50) not null,
Cust_City varchar(50) not null,
Cust_State varchar(50),
Cust_ID int,
Primary Key(Cust_Zip),
foreign key(Cust_ID) references Customers (CUST_ID)
);
insert into Address(Cust_Zip,Cust_Street,Cust_City,Cust_State,Cust_ID)
values(1000,"megenagna","Addis Ababa","Addis Ababa",444);
insert into Address(Cust_Zip,Cust_Street,Cust_City,Cust_State,Cust_ID)
values(2000,"4-kilo","Addis Ababa","Addis Ababa",555);
insert into Address(Cust_Zip,Cust_Street,Cust_City,Cust_State,Cust_ID)
values(3000,"41-eyesus","Addis Ababa","Addis Ababa",888);
insert into Address(Cust_Zip,Cust_Street,Cust_City,Cust_State,Cust_ID)
values(4000,"6-kilo","Addis Ababa","Addis Ababa",333);
insert into Address(Cust_Zip,Cust_Street,Cust_City,Cust_State)
values(5000,"01-st","San Diego","California");
insert into Address(Cust_Zip,Cust_Street,Cust_City,Cust_State)
values(6000,"ku-road","Los Angeles","California");
insert into Address(Cust_Zip,Cust_Street,Cust_City,Cust_State)
values(7000,"JK-road","Miami","Florida");
insert into Address(Cust_Zip,Cust_Street,Cust_City,Cust_State)
values(8000,"Lj-road","Atlanta","Georgia");
-- Select customers.CUST_FRISTNAME,customers.CUST_LASTNAME,customers.CUST_COUNTRY,Address.CUST_CITY,Address.CUST_STATE,Address.CUST_STREET,Address.CUST_ZIP
-- from customers inner join Address
-- on customers.cust_ID=Address.Cust_ID;
select customers.CUST_FRISTNAME,customers.CUST_LASTNAME,customers.CUST_COUNTRY,customers.CUST_SALARY,Address.CUST_CITY,Address.CUST_STATE,Address.CUST_STREET,Address.Cust_Zip
from customers left outer join Address
on customers.cust_ID=Address.Cust_ID;
select customers.CUST_FRISTNAME,customers.CUST_LASTNAME,customers.CUST_COUNTRY,customers.CUST_SALARY,Address.CUST_CITY,Address.CUST_STATE,Address.CUST_STREET,Address.Cust_Zip
from customers right outer join Address
on customers.cust_ID=Address.Cust_ID;







