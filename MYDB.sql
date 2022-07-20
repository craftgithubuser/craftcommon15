CREATE SCHEMA MyDB;

use MyDB;

create table Custemers(
customerID int not null auto_increment,
customerFirstName varchar(25) not null,
customerLasttName varchar(25) not null,
customerNickName varchar(25) not null,
customerAge int not null,
customerGender character(10) not null,
customerCountry varchar(20) not null,
custemerSalery float(1000) not null,
 PRIMARY KEY (customerID ));


