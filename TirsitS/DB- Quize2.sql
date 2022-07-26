CREATE Schema MYDB;

USE MyDB;
create TABLE Customers(
ust_ID int not null ,
Cust_FirstName varchar(50) not null,
Cust_LastName  varchar(50) not null,
Cust_NickName varchar(50) not null,
Cust_Age int,
Cust_Gender char not null,
Cust_Country varchar(50) not null,
Cust_Salary decimal not null
);

alter table Customersust_ID
add primary key (Ust_Id);






