create schema MyDB;

use MyDB;

create table customers(
Cust_ID int not null auto_increment,
Cust_FirstName varchar(255) not null,
Cust_LastName varchar(255)not null,
Cust_NickName varchar(255),
Cust_Age int,
Cust_Gender char(255) not null,
Cust_Country varchar(255) not null,
Cust_Salary float not null,
primary key(Cust_ID)
);


insert into customers
values (111, "Nick", "Jones", null, null, "M", "USA", 20000000),
 (222, "Antony", "Martial", null, null, "M", "France", 10000000),
 (333, "Ross", "Geller", null, null,"M", "uzbekistan", 36000000),
 (444, "RChandler", "Bing", null, null,"M", "Unkown", 34000000),
 (555, "Rachel ", "Green", null, null,"F", "Green", 400000),
 (666, "Nick", "Jones", null, null,"M", "USA", 20000000),
 (777, "Poul", "Pogba", null, null,"M", "France", 20000000),
 (888, "Joey ", "Tribbiani", null, null,"M", "Ethiopia", 70000000);

update customers
set Cust_Country = "Ethiopia"
where Cust_ID = 333;
update customers
set Cust_Country = "Ethiopia"
where Cust_ID = 444;
update customers
set Cust_Country = "Ethiopia"
where Cust_ID = 555;



delete from customers
where Cust_ID = 666;

alter table customers
add Cust_Bonus int not null;

alter table customers
modify Cust_Age int not null;

alter table customers
drop column Cust_NickName;
alter table customers
drop column Cust_Bonus;

rename table customers to customer;

drop table customer;
drop schema mydb;


 create schema MyDB;

use MyDB;

create table customers(
Cust_ID int not null auto_increment,
Cust_FirstName varchar(255) not null,
Cust_LastName varchar(255)not null,
Cust_NickName varchar(255),
Cust_Age int,
Cust_Gender char(255) not null,
Cust_Country varchar(255) not null,
Cust_Salary float not null,
primary key(Cust_ID)
);   


insert into customers
values (111, "Nick", "Jones", null, null, "M", "USA", 20000000),
 (222, "Antony", "Martial", null, null, "M", "France", 10000000),
 (333, "Ross", "Geller", null, null,"M", "uzbekistan", 36000000),
 (444, "RChandler", "Bing", null, null,"M", "Unkown", 34000000),
 (555, "Rachel ", "Green", null, null,"F", "Green", 400000),
 (666, "Nick", "Jones", null, null,"M", "USA", 20000000),
 (777, "Poul", "Pogba", null, null,"M", "France", 20000000),
 (888, "Joey ", "Tribbiani", null, null,"M", "Ethiopia", 70000000);