
  -- quiz3

alter table customers
add bonus int not null;

alter table customers
modify customerAge int not null;

alter table customers
drop column customerNickName;

alter table customers
drop column bonus; 

alter table customers 
rename to customer;

drop table customer;

drop database mydb;

create database MyDB;

use MyDB;

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
