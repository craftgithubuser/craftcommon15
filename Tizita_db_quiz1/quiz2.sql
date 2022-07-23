
-- quiz 2

SELECT * FROM studentinfo.classes;

create database MyDB;

 create table customers (
 customerID int auto_increment not null,
 customerFirstName varchar (100) not null,
 customerLastName varchar (50) not null,
 customerNickName varchar (50),
 customerAge int,
 customerGender char not null,
 customerCountry varchar (50) not null,
 customerSalary dec not null,
 primary key (customerID)
);