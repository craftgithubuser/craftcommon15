create database Mydb;

create table customers(
Cust_ID int auto_increment not null primary key,
Cust_FirstName varchar(20) not null,
Cust_LastName varchar(20) not null,
Cust_NickName varchar(25),
Cust_Age int,
Cust_Gender char not null,
Cust_Country varchar(30) not null,
Cust_Salary decimal not null

);
alter table customers 
modify Cust_ID int auto_increment



alter table customers
drop Cust_Nickname

insert mydb.customers (Cust_ID,Cust_FirstName,Cust_LastName,Cust_Gender,Cust_Country,Cust_Salary)
value("111", "Nick","Jones", "M","USA",20000000);

insert  mydb.customers(Cust_ID,Cust_FirstName,Cust_LastName,Cust_Gender,Cust_Country,Cust_Salary)
value(222,"Antony","Martial","M","France",10000000)

insert into mydb.Customers (Cust_ID,Cust_FirstName,Cust_LastName,Cust_Gender,Cust_Country,Cust_Salary)
Values(333,"Ross","Geller","M","uzbekistan",360000000);

insert into MyDB.Customers (Cust_ID,Cust_FirstName,Cust_LastName,Cust_Gender,Cust_Country,Cust_Salary)
Values(444,"Chandler","Bing","M","Unkown",34000000);

insert into MyDB.Customers (Cust_ID,Cust_FirstName,Cust_LastName,Cust_Gender,Cust_Country,Cust_Salary)
Values(555,"Rechel","Green","M","Kazakhstan",400000);

insert into MyDB.Customers (Cust_ID,Cust_FirstName,Cust_LastName,Cust_Gender,Cust_Country,Cust_Salary)
Values(666,"Nick","Joes","M","USA",20000000);

insert into MyDB.Customers (Cust_ID,Cust_FirstName,Cust_LastName,Cust_Gender,Cust_Country,Cust_Salary)
Values(777,"Poul","Pogba","M","France",20000000);

insert into MyDB.Customers (Cust_ID,Cust_FirstName,Cust_LastName,Cust_Gender,Cust_Country,Cust_Salary)
Values(888,"Joey","Tribbiani","M","Ethiopia",70000000);

