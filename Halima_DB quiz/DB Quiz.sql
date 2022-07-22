create schema MyDB;


create table MyDB.Customers(
Cust_ID int auto_increment not null primary key,
Cust_FirstName varchar(30) not null,
Cust_LastName varchar(30) not null,
Cust_NickName varchar(10),
Cust_Age int,
Cust_Gender varchar(2) not null,
Cust_Country varchar(15) not null,
Cust_Salary decimal not null
);

alter table MyDB.Customers
drop Cust_NickName;

insert into MyDB.Customers (Cust_ID,Cust_FirstName,Cust_LastName,Cust_Gender,Cust_Country,Cust_Salary)
Values (111,"NIck","Jones","M","USA",20000000);
insert into MyDB.Customers (Cust_ID,Cust_FirstName,Cust_LastName,Cust_Gender,Cust_Country,Cust_Salary)
Values (222,"Antony","Martial","M","France",10000000);

insert into MyDB.Customers (Cust_ID,Cust_FirstName,Cust_LastName,Cust_Gender,Cust_Country,Cust_Salary)
Values (333,"Ross","Geller","M","Uzbekistan",36000000);
insert into MyDB.Customers (Cust_ID,Cust_FirstName,Cust_LastName,Cust_Gender,Cust_Country,Cust_Salary)
Values (444,"Chandler","Bing","M","Unkown",34000000);

insert into MyDB.Customers (Cust_ID,Cust_FirstName,Cust_LastName,Cust_Gender,Cust_Country,Cust_Salary)
Values (555,"Rechel","Green","F","Kazakhstan",400000);

insert into MyDB.Customers (Cust_ID,Cust_FirstName,Cust_LastName,Cust_Gender,Cust_Country,Cust_Salary)
Values (666,"Nick","Jones","M","USA",20000000);

insert into MyDB.Customers (Cust_ID,Cust_FirstName,Cust_LastName,Cust_Gender,Cust_Country,Cust_Salary)
Values (777,"Poul","Pogha","M","France",20000000);


insert into MyDB.Customers (Cust_ID,Cust_FirstName,Cust_LastName,Cust_Gender,Cust_Country,Cust_Salary)
Values (888,"Jeoy","Tribbiani","M","Ethiopia",70000000);

update Customers
set Cust_Country="Ethiopia"
where Cust_ID=333;

update Customers
set Cust_Country="Ethiopia"
where Cust_ID=444;

update Customers
set Cust_Country="Ethiopia"
where Cust_ID=555;

delete from Customers
where Cust_ID=666;







