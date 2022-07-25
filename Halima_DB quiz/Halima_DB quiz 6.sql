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

alter table Customers
add column Bonus int not null;

alter table Customers
modify column Cust_Age int not null;

alter table Customers
drop column Bonus;

alter table Customers
rename Customer;

drop table Customer;

drop schema MyDB;

Create schema MyDB;

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

create table MyDB.Address(
Cust_ZIP varchar(30) not null,
Cust_Street varchar(35) not null,
Cust_City varchar(45) not null,
Cust_State varchar(55),
Cust_ID int,
primary key(Cust_ZIP),
foreign key(Cust_ID) references Customers(Cust_ID)
);

insert into MyDB.Address(Cust_ZIP,Cust_Street,Cust_City,Cust_State,Cust_ID)
values("1000","megenagn","Addis Ababa","Addis Ababa",444);

insert into MyDB.Address(Cust_ZIP,Cust_Street,Cust_City,Cust_State,Cust_ID)
value("2000","4-kilo","Addis Ababa", "Addis Ababa",555),
("3000","41-eyesus","Addis Ababa", "Addis Ababa",888),
("4000","6 kilo","Addis Ababa","Addis Ababa",333);

insert into Address(Cust_ZIP,Cust_Street,Cust_City,Cust_State)
value("5000","01-st","San Diego","California"),
("6000","kU-road","Los Angeles","California"),
("7000","JK-road","Miami","Florida"),
("8000","Lj-road","Atlanta","Georgia");

select Customers.Cust_FirstName as "first_name",Customers.Cust_Country,Customers.Cust_Salary,Address.Cust_Street,Address.Cust_City
from Customers inner join Address
on Customers.Cust_ID=Address.Cust_ID;

select Customers.Cust_ID,Customers.Cust_FirstName as "first_name",Customers.Cust_Country,Customers.Cust_Salary,Address.Cust_Street,Address.Cust_City
from Customers left outer join Address
on Customers.Cust_ID=Address.Cust_ID;

select Customers.Cust_ID, Customers.Cust_FirstName as "first_name",Customers.Cust_Country,Customers.Cust_Salary,Address.Cust_Street,Address.Cust_City
from Customers right outer join Address
on Customers.Cust_ID=Address.Cust_ID;

select Customers.Cust_ID,Customers.Cust_FirstName as "first_name",Customers.Cust_Country,Customers.Cust_Salary,Address.Cust_Street,Address.Cust_City
from Customers left outer join Address
on Customers.Cust_ID=Address.Cust_ID
union
select Customers.Cust_ID,Customers.Cust_FirstName as "first_name",Customers.Cust_Country,Customers.Cust_Salary,Address.Cust_Street,Address.Cust_City
from Customers right outer join Address
on Customers.Cust_ID=Address.Cust_ID;

























