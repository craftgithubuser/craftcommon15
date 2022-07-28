CREATE SCHEMA MyDB;

use MyDB;

CREATE TABLE Custemers(

customerID int not null auto_increment,
customerFirstName varchar(250) not null,
customerLastName varchar(250) not null,
customerNickName varchar(250) not null,
customerAge int not null,
customerGender char(10) not null,
customerCountry varchar(20) not null,
custemerSalery float(100,000),
 PRIMARY KEY (customerID ));
 ALTER TABLE custemers
 DROP COLUMN customerNickName;
 
 Insert into custemers(customerID,customerFirstName,customerLastName,customerAge,customerGender,customerCountry,custemerSalery)
Value(111,'Nick','Jones',25,'M','USA',20000 ),
(222,'Antony','Martial',30,'M','France',100000);

Insert into custemers(customerID,customerFirstName,customerLastName,customerAge,customerGender,customerCountry,custemerSalery)
Value(333,'Rosse','Geler',35,'M','uzbekistan',36000 ),
(444,'Chandler','Bing',20,'M','Unkown',34000 ),
(555,'Rechal','Green',25,'M','kazakhstan',40000 );

Insert into custemers(customerID,customerFirstName,customerLastName,customerAge,customerGender,customerCountry,custemerSalery)
Value(666,'Nick','Jones',30,'M','USA',2000000 ),
(777,'Poul','Pogba',35,'M','France',2000000 ),
(888,'Joey ','Tribbiani',20,'M','Ethiopia',7000000 );


Update Custemers
set customerCountry='Ethiopia'
Where CustomerID=333;


Update Custemers
set customerCountry='Ethiopia'
Where CustomerID=444;

Update Custemers
set customerCountry='Ethiopia'
Where CustomerID=555;

select count(customerID)
from custemers
where customerCountry="Ethiopia";
rollback;

select *
from Custemers
where custemerSalery between 2000 and 37000;
rollback;

select *
from custemers
where customerFirstName like "N%";

select *
from custemers
where customerFirstName like "%l";

select *
from custemers
where customerFirstName like '_o%';

select * from custemers
where customerCountry in ( 'Ethiopia','USA','France');

RENAME table custemers To customers;

CREATE TABLE Address(
customer_Zip varchar (2500),
customer_Street varchar(3000) not null,
customer_City varchar(4000) not null,
cutomer_State varchar(5000) not null,
customer_ID varchar (4000),
PRIMARY KEY (customer_Zip),
foreign key (customer_ID) references customers (customerID));


Select customer_ID
FROM address
INNER JOIN customers ON customers.customerID=address.customer_ID;

Select address.customer_ID,customers.customerID,address.cutomer_State,customers.customerCountry
FROM customers INNER JOIN address
where customers.customerID=address.customer_ID;

Select *
FROM address INNER JOIN customers
where customers.customerID=address.customer_ID;


Select customers.customerID,address.customer_ID,address.cutomer_State,customers.customerCountry
FROM customers left outer JOIN address 
on customers.customerID=address.customer_ID;

Select customers.customerID,address.customer_ID,address.cutomer_State,customers.customerCountry
FROM customers right outer JOIN address 
on customers.customerID=address.customer_ID;

Select customers.customerID,address.customer_ID,address.cutomer_State,customers.customerCountry
FROM customers right outer JOIN address 
on customers.customerID=address.customer_ID;


Select*
FROM customers right outer JOIN address 
on customers.customerID=address.customer_ID
union 
Select *
FROM customers right outer JOIN address 
on customers.customerID=address.customer_ID;

 