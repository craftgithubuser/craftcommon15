Create schema MyDD;
use MyDD;
create table  customer (
customerID int not null auto_increment,
customerfirstname varchar(255) not null,
customerlastname varchar(255) not null,
customerNikename varchar(255),
customerage  int,
customergender char,
customercountry varchar(255)not null,
customersalary dec not null,
primary key (customerID)
);
ALTER TABLE Customer
Add bonus int not null;  
ALTER TABLE Customer
modify customerage  int not null;
ALTER TABLE Customer
Drop column bonus;
ALTER TABLE Customer
Drop column customerNikename ;
Alter table customer rename to customers;
Drop table customers;
Create schema MyDD;
use MyDD;
create table  customer (
customerID int not null auto_increment,
customerfirstname varchar(255) not null,
customerlastname varchar(255) not null,
customerNikename varchar(255),
customerage  int,
customergender char,
customercountry varchar(255)not null,
customersalary dec not null,
primary key (customerID)
);
INSERT INTO customer (customerID, customerfirstname, customerlastname, customergender, customercountry, customersalary)
VALUES ( 111,'Nick','Jones','M' ,'USA',20000000 );
INSERT INTO customer (customerID, customerfirstname, customerlastname, customergender, customercountry, customersalary)
VALUES ( 222,'Antony','Martial','M' ,'France',10000000 );
INSERT INTO customer (customerID, customerfirstname, customerlastname, customergender, customercountry, customersalary)
VALUES ( 333,'Nebiha','Amir','M' ,'uzbekistan',36000000 );
INSERT INTO customer (customerID, customerfirstname, customerlastname, customergender, customercountry, customersalary)
VALUES ( 444,'Soresa','Hailu','M' ,'Unkown',34000000 );
INSERT INTO customer (customerID, customerfirstname, customerlastname, customergender, customercountry, customersalary)
VALUES ( 555,'Beka','Haile','M' ,'kazakhstan',400000 );
INSERT INTO customer (customerID, customerfirstname, customerlastname, customergender, customercountry, customersalary)
VALUES ( 666,'Nick','jones','M' ,'USA',20000000 );
INSERT INTO customer (customerID, customerfirstname, customerlastname, customergender, customercountry, customersalary)
VALUES ( 888,'Betty','G','F' ,'Ethiopia',70000000 );
update customer 
set customercountry = 'Ethiopia'
WHERE StudentID = 333;
Update customer 
Set customercountry='Ethiopian'
WHERE customerID=444;
Update customer 
Set customercountry='Ethiopian'
WHERE customerID=333;
Update customer 
Set customercountry='Ethiopian'
WHERE customerID=666;
DELETE FROM Customer
 WHERE customerID=666;





