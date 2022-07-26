create Schema MYDB;



create TABLE Customers(
Cust_ID int not null,
Cust_FirstName varchar(50) not null,
Cust_LastName  varchar(50) not null,
Cust_NickName varchar(50),
Cust_Age int,
Cust_Gender char not null,
Cust_Country varchar(50) not null,
Cust_Salary decimal not null,
primary key (Cust_Id)
);

insert into MyDB.Customers (Cust_ID,Cust_FirstName,Cust_LastName,Cust_Gender,Cust_Country,Cust_Salary)
Values(111,"Nick","Jones","M","USA",20000000);

insert into MyDB.Customers (Cust_ID,Cust_FirstName,Cust_LastName,Cust_Gender,Cust_Country,Cust_Salary)
Values(222,"Antony","Martial","M","France",10000000);

insert into MyDB.Customers (Cust_ID,Cust_FirstName,Cust_LastName,Cust_Gender,Cust_Country,Cust_Salary)
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

update Customers
Set Cust_Gender = "F"
where Cust_Id = 555;

delete from customers
where Cust_Id = 666;

update Customers
set Cust_Country = "Ethiopia"
where Cust_Id =333;

update Customers
set Cust_Country = "Ethiopia"
where Cust_Id =444;

update Customers
set Cust_Country = "Ethiopia"
where Cust_Id =555;

-- alter table customers
-- modify Cust_Age not null

alter table customers
rename customer

alter table MyDB.Customers
drop Cust_NickName;

alter table customer
add column Bouns int not null;

alter table customer
drop column Bouns




