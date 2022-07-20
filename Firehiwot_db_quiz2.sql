create schema MyDB;
create table Custemers(
Cust_ID int not null ,
Cust_FirstName varchar(50) not null,
Cust_LastName  varchar(50) not null,
Cust_NickName varchar(50) not null,
Cust_Age int,
Cust_Gender char not null,
Cust_Country varchar(50) not null,
Cust_Salary decimal not null
);
alter table Custemers
add primary key (Cust_ID );

alter table Custemers
modify Cust_ID int auto_increment;