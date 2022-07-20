create schema MyDB;

use MyDB;

create table customers(
Cust_ID int not null auto_increment unique,
Cust_FirstName varchar(255) not null,
Cust_LastName varchar(255) not null, 
Cust_NickName varchar(255),
Cust_Age int,
Cust_Gender char(1) not null,
Cust_Country varchar(255) not null,
Cust_Salary decimal not null
);

-- another option would be:

create table customers(
Cust_ID int not null auto_increment primary key, 
Cust_FirstName varchar(255) not null,
Cust_LastName varchar(255) not null, 
Cust_NickName varchar(255),
Cust_Age int,
Cust_Gender char(1) not null,
Cust_Country varchar(255) not null,
Cust_Salary decimal not null
);

-- yet another option 

create table customers(
Cust_ID int not null auto_increment,
Cust_FirstName varchar(255) not null,
Cust_LastName varchar(255) not null, 
Cust_NickName varchar(255),
Cust_Age int,
Cust_Gender char(1) not null,
Cust_Country varchar(255) not null,
Cust_Salary decimal not null,
primary key(Cust_ID)
);