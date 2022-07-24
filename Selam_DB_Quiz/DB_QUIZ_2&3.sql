
create SCHEMA MYDB;
use MYDB;

CREATE TABLE Customer(
  `ID` INT NOT NULL, 
  `FirstName` VARCHAR(45) NOT NULL,
  `LastName` VARCHAR(45) NOT NULL,
  `NickName` VARCHAR(45) NULL,
  `Age` INT NULL,
  `Gender` VARCHAR(45) NOT NULL,
  `Country` VARCHAR(45) NOT NULL,
  `Salary` DECIMAL NOT NULL,
  PRIMARY KEY (`ID`));
ALTER TABLE `MYDB`.`customers` 
ADD COLUMN `Data Type` VARCHAR(45) ,
);

create schema mydb;
use mydb;

create table Address(
Zip varchar (20) not null,
Street varchar (70) not null,
City Varchar (100) not null,
State Varchar (50),
Id int,
primary key (ZIP));



insert into address (Zip,Street,City,State,Id)
Values ('1000','Megenagn','Addis Ababa','Addis Ababa','444'),
 ('2000','4-kilo','Addis Ababa','Addis Ababa','555'),
 ('3000','41-eyesus','Addis Ababa','Addis Ababa','888'),
 ('4000','6-kilo','Addis Ababa','Addis Ababa','333'),
 ('5000','01-st','San Diago','California',null),
 ('6000','kU-Road','Los Angeles','California',null),
 ('7000','JK-Road','Miami','Florida',null),
 ('8000','Lj-road','Atlanta','Georgia',null);
 
  
 select customer,address
 From customer
 join address
 on customer_id=address_id;
 
 select customer.id,address.id
 from customer 
 inner join Address on customer.id=Address.id;
 
 
 SELECT Customer.ID, Address.ID
FROM customer
LEFT JOIN Customer ON Customer.ID = Address.ID
ORDER BY Customer.Id;

SELECT address.ID, customer.FirstName, customer.LastName
FROM address
RIGHT JOIN customer on customer.ID = Address.ID
ORDER BY address.ID;










