
-- Create a database or  Schema called MyDB

create database MyDB;

use MyDB;

--  Create a table  name customers and add  columns

create table customers(
cust_ID int auto_increment not null,
cust_FirstName varchar(255) not null,
cust_LastName varchar(255) not null,
cust_NickName varchar(255),
cust_Age int,
cust_Gender character(1) not null,
cust_Country varchar(255) not null,
cust_Salary decimal(10,2) not null,
Primary key(cust_ID)
);

-- add column Using alter  Name= bonus, DataType= Integer, It doesn't accept null value

alter table customers
add bonus int not null;

-- modify column using alter Name = Age, Datatype = Integer, to not accept null valu

alter table customers
modify cust_Age int not null;

-- Delete column using alter Name = NickName, Name = bonus

alter table customers
drop column cust_NickName;

alter table customers
drop column bonus;

-- Rename Customers Table to Customer Table

rename table customers to `customer Table`;

-- Drop table Customer
-- assuming "drop table customer" is to mean drop table 'customer table'

drop table `customer Table`;

-- Drop DataBase/schem

drop database myDB;

-- Again Recreate Schema/DataBase MyDB after we Drop the schema

create database MyDB;

-- Again Recreate the table Customers with all of it columns after we Drop the customer table

create table customers(
cust_ID int auto_increment not null,
cust_FirstName varchar(255) not null,
cust_LastName varchar(255) not null,
cust_Age int,
cust_Gender character(1) not null,
cust_Country varchar(255) not null,
cust_Salary decimal(10,2) not null,
Primary key(cust_ID)
);

-- Insert Data in to Customers table

insert into customers (cust_ID, cust_FirstName, cust_LastName, cust_Gender, cust_Country, cust_Salary) values
	(111,"Nick","Jones",'M',"USA",20000000),
    (222, "Antony", "Martial", 'M', "France", 10000000),
    (333, "Ross", "Geller", 'M', "Uzbekistan", 36000000),
    (444, "Chandler", "Bing", 'M', "Unkown", 34000000),
    (555, "Rachel", "Green", 'F', "Kazakhstan", 400000),
    (666, "Nick", "Jones",  'M', "USA", 20000000),
    (777, "Poul", "Pogba", 'M', "France", 20000000),
    (888, "Joey", "Tribbiani", 'M', "Ethiopia", 70000000)

    ;

-- Update Cust_ID=333,444,555 Country to Ethiopian

update customers
set cust_Country = "Ethiopian"
where cust_Id in (333,444,555) ;

-- Delete cust_Name=nick jones WhichCust_ID is 666

delete from customers
where cust_ID = 666;

-- Write a query which display all Records from the table?

select *
from customers;

-- Write a query which display all columns from the table where  there Citizenship is Ethiopian?

select *
from customers
where cust_Country = 'Ethiopian';

-- Write a query which display all columns from the table where  there Salary greater than 5million?

select *
from customers
where cust_Salary > 5000000;

-- Write a query which display all Male Customers FirstName, LastName and Country?

select cust_FirstName, cust_LastName, cust_Country
from customers
where cust_Gender = 'M';

-- Write a query which display only distinct Country?

select distinct cust_Country
from customers;

-- Write a query which display all Female Customers FirstName, LastName and Country in  descending?

select cust_FirstName, cust_LastName, Cust_Country
from customers
where cust_gender = 'F'
order by cust_FirstName desc, cust_LastName desc;

-- Write a query that display all records from the table where Gender female, Here salary
-- is greater than 2million and also Here Citizenship is Ethiopian?

select *
from customers
where cust_Gender = 'F' and cust_Salary > 2000000 and cust_country = "Ethiopian";

-- Write a query that display all records from the table where there Citizenship is Ethiopian or uzbekistan?

select *
from customers
where cust_country in ("Ethiopian", "Uzbekistan");

-- Write a query that display Minimum Salary from the table?

select min(cust_Salary) as "Minimum Salary"
from customers;

-- Write a query that display Maximum Fees from the table?

select max(cust_Salary) as "Maximum Salary"
from customers;

-- Write a query that display Number of Customer We have in the table?

select count(*) as "Number of Customers"
from customers;

-- Write a query that display Average Salary from the record?

select round(avg(cust_Salary),2) as "Average Salary"
from customers;

-- Write a query that display The sum of all customers Fees?

select sum(cust_Salary) as "Total Salary"
from customers;

--  Write a query that display all the record where there salary is between 2million and 8million?

select *
from customers
where cust_Salary between 2000000 and 8000000;

-- Write a query that display all the record where there firstName start with 'S'?

select *
from customers
where cust_FirstName like 's%';

-- Write a query that display all the record where there firstName have 'e' in the second 
-- position and His/er lastName have end with 'e'?

select *
from customers
where cust_FirstName like '_e%' and cust_LastName like '%e';


-- Write a query that display all the record where there LastName that start with 'p' and ends with 'a'?

select *
from customers
where cust_LastName like 'p%a';


-- Write a query that display all the customers from Ethiopia, USA and France?

select *
from customers
where cust_Country in ("Ethiopia", "USA", "France");

-- Create a table  name Address inside MyDB Database
-- uniquely identifies each record in a table by Cust_ZIP
-- The Customers table and Address table are connected by Cust_ID

use mydb;

create table address(
	cust_ZIP varchar(255) primary key not null,
    cust_Street varchar(255) not null,
    cust_City varchar(255) not null,
    cust_State varchar(255),
    cust_ID int,
    foreign key(cust_ID) references Customers(Cust_ID)
);


--  Insert Data into Address table


insert into address values
	(1000,"megenagn","Addis Ababa","Addis Ababa",444),
	(2000,"4_kilo","Addis Ababa","Addis Ababa",555),
	(3000,"41-eyesus","Addis Ababa","Addis Ababa",888),
	(4000,"6-kilo","Addis Ababa","Addis Ababa",333)
;


insert into address (cust_ZIP, cust_Street, cust_City, cust_State) values
	(5000,"01-st","San Diego","California"),
	(6000,"kU-road","Los Angeles","California"),
	(7000,"JK-road","Miami","Florida"),
	(8000,"Lj-road","Atlanta","Georgia")
;


-- Write a query that perform INNER JOIN.

select customers.cust_ID, customers.cust_FirstName, customers.cust_LastName,customers.cust_Gender,customers.cust_Country,customers.cust_Salary,
	address.cust_ZIP,address.cust_Street,address.cust_City,address.cust_State
from customers 
inner join address
on customers.cust_Id = address.cust_ID;

-- Write a query that perform LEFT OUTER JOIN.

select customers.cust_ID, customers.cust_FirstName, customers.cust_LastName,customers.cust_Gender,customers.cust_Country,customers.cust_Salary,
	address.cust_ZIP,address.cust_Street,address.cust_City,address.cust_State
from customers 
left outer join address
on customers.cust_Id = address.cust_ID;

-- Write a query that perform Right outer join.

select customers.cust_ID, customers.cust_FirstName, customers.cust_LastName,customers.cust_Gender,customers.cust_Country,customers.cust_Salary,
	address.cust_ZIP,address.cust_Street,address.cust_City,address.cust_State
from customers 
right outer join address
on customers.cust_Id = address.cust_ID;


-- Write a query that performFULL OUTER JOIN

-- select customers.cust_ID, customers.cust_FirstName, customers.cust_LastName,customers.cust_Gender,customers.cust_Country,customers.cust_Salary,
-- 	address.cust_ZIP,address.cust_Street,address.cust_City,address.cust_State
-- from customers 
-- full join address
-- on customers.cust_Id = address.cust_ID;

-- full join is not supported in mysql so to get the same result union right and left join.

select customers.cust_ID, customers.cust_FirstName, customers.cust_LastName,customers.cust_Gender,customers.cust_Country,customers.cust_Salary,
	address.cust_ZIP,address.cust_Street,address.cust_City,address.cust_State
from customers 
left outer join address
on customers.cust_Id = address.cust_ID
union
select customers.cust_ID, customers.cust_FirstName, customers.cust_LastName,customers.cust_Gender,customers.cust_Country,customers.cust_Salary,
	address.cust_ZIP,address.cust_Street,address.cust_City,address.cust_State
from customers 
right outer join address
on customers.cust_Id = address.cust_ID;






