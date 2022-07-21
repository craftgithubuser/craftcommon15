
create database MyDB;

use MyDB;

create table customers(
cust_ID int auto_increment not null,
cust_FirstName varchar(255) not null,
cust_LastName varchar(255) not null,
cust_NickName varchar(255),
cust_Age int,
cust_Gender character(1) not null,
cust_Country varchar(255) not null,
cust_Salary decimal(10,2) not null,
Primary key(cust_ID)
);

alter table customers
add bonus int not null;

alter table customers
modify cust_Age int not null;

alter table customers
drop column cust_NickName;

alter table customers
drop column bonus;

rename table customers to `customer Table`;

-- assuming "drop table customer" is to mean drop table customer table
drop table `customer Table`;

drop database myDB;

create database MyDB;

create table customers(
cust_ID int auto_increment not null,
cust_FirstName varchar(255) not null,
cust_LastName varchar(255) not null,
cust_Age int,
cust_Gender character(1) not null,
cust_Country varchar(255) not null,
cust_Salary decimal(10,2) not null,
Primary key(cust_ID)
);

insert into customers (cust_ID, cust_FirstName, cust_LastName, cust_Gender, cust_Country, cust_Salary) values
	(111,"Nick","Jones",'M',"USA",20000000),
    (222, "Antony", "Martial", 'M', "France", 10000000),
    (333, "Ross", "Geller", 'M', "Uzbekistan", 36000000),
    (444, "Chandler", "Bing", 'M', "Unkown", 34000000),
    (555, "Rachel", "Green", 'F', "Kazakhstan", 400000),
    (666, "Nick", "Jones",  'M', "USA", 20000000),
    (777, "Poul", "Pogba", 'M', "France", 20000000),
    (888, "Joey", "Tribbiani", 'M', "Ethiopia", 70000000)
    ;
    
update customers
set cust_Country = "Ethiopian"
where cust_Id in (333,444,555) ;

delete from customers
where cust_ID = 666;

