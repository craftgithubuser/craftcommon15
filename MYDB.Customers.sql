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


