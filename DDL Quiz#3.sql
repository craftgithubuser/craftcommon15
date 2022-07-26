create database MyDB;
use MyDB;
create table Custumers(
Cust_ID int not null,
Cust_FirstName varchar(50) not null,
Cust_LastName  varchar(50) not null,
Cust_NickName varchar(50),
Cust_Age int,
Cust_Gender char not null,
Cust_Country varchar(50) not null,
Cust_Salary decimal not null
);
 
Alter table Custumers
Add Bonus int not null;

alter table custumers
modify Cust_Age int;

alter table custumers
drop Cust_NickName; 

alter table custumers
drop bonus;

rename table custumers to customer;

drop table customers;

drop schema mydb;

create schema MyDB;

use MyDB;

create table customers(
Cust_ID int not null,
Cust_FirstName varchar(50) not null,
Cust_LastName  varchar(50) not null,
Cust_NickName varchar(50) not null,
Cust_Age int,
Cust_Gender char not null,
Cust_Country varchar(50) not null,
Cust_Salary decimal not null,
Cust_Fees int not null
);

INSERT INTO customers(Cust_ID, Cust_FirstName, Cust_LastName, Cust_NickName, Cust_Age, Cust_Gender, Cust_Country, Cust_Salary, Cust_Fees)
VALUES(111, 'Nick', 'Jones', 'Ja', 20, 'M', 'USA', 20000000, 42145),
(222, 'Anthony', 'Maritial', 'Marit', 15, 'M', 'France', 10000000, 65432),
(333, 'Ross', 'Geller', 'Gel', 50, 'M', 'Uzbakistan', 3600000, 22353),
(444, 'Chandler', 'Bing', 'Chand', 30, 'M', 'Unknown', 3400000, 23455),
(555, 'Rachel', 'Green', 'Rach', 35, 'F', 'Kazakhstan', 400000, 42145),
(666, 'Nick', 'Jones', 'Nicky', 18, 'M', 'USA', 20000000, 542145),
(777, 'Poul', 'Pogba', 'Po', 60, 'M', 'France', 20000000, 402145),
(888, 'Joey', 'Tribiani', 'Trib', 40, 'M', 'Ethiopia', 70000000, 42145);


-- Update specific records using a condition
-- safe mode by default off 
UPDATE customers 
SET Cust_Country='Ethiopia'
WHERE Cust_ID=333;

UPDATE customers 
SET Cust_Country='Ethiopia'
WHERE Cust_ID=444;

UPDATE customers 
SET Cust_Country = 'Ethiopia'
WHERE Cust_ID = 555;
-- Or
UPDATE customers 
SET Cust_Country = 'Ethiopia'
WHERE Cust_ID = 555 and 333 and 444;

delete from customers 
where Cust_ID = 666;


