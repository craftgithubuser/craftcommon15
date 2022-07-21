use mydb;

-- add column Using alter 

alter table customers
add bonus int not null;

            -- Name= bonus
            -- DataType= Integer
            -- It doesn't accept null value
            
-- modify column using alter
alter table customers
MODIFY Cust_Age int NOT NULL;

            -- Name = Age
            -- Datatype = Integer,
            -- to not accept null value

-- Delete column using alter

Alter table customers
drop COLUMN NickName, bonus;

            -- Name = NickName
            -- Name = bonus

Rename Customers Table to Customer Table

alter table customers 
rename to customer;

-- Drop table Customer

drop table customer;

-- Drop DataBase/schema

drop database mydb;

-- Again Recreate Schema/DataBase MyDB after we Drop the schema

create database MyDB;

-- Again Recreate the table Customers with all of it columns after we Drop the customer table 

use MyDB;

create table Customers(
Cust_ID int auto_increment Not Null primary Key,	
Cust_FirstName varchar (50) Not Null,
Cust_LastName varchar (50),
Cust_Age int,
Cust_Gender Char (5) Not Null,
Cust_Country varchar (255) Not Null,
Cust_Salary DECIMAL Not Null
);





















