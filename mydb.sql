create database MyDB;
create table MyDB.customers(
Cust_id int primary key not null,
Cust_firstname varchar(50) not null,
Cust_lastname varchar(50) not null,
Cust_nickname varchar(50),
Cust_age int,
cust_Gender varchar(10) not null,
cust_country varchar(50),
cust_salary decimal
);

