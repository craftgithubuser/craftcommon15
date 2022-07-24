create schema MYDB;

use MYDB;

create table customers(
Cust_ID int not null auto_increment,
Cust_FirstName varchar(100) not null,
Cust_LastName varchar(100) not null,
Cust_NickName varchar(50),
Cust_Age int,
Cust_Gender char not null,
Cust_Country varchar(50) not null,
Cust_Salary dec not null,
primary key (Cust_ID)
);

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

create schema MYDB;

create table customers(
Cust_ID int not null auto_increment,
Cust_FirstName varchar(100) not null,
Cust_LastName varchar(100) not null,
Cust_Age int not null,
Cust_Gender char not null,
Cust_Country varchar(50) not null,
Cust_Salary dec not null,
primary key (Cust_ID)
);

insert into customers (Cust_ID, Cust_FirstName, Cust_LastName, Cust_Age, Cust_Gender, Cust_Country, Cust_Salary)
value ( 111, 'Nick', 'Jones', 20 , 'M', 'USA', 2000000),
(222, 'Antony', 'Martial',21 , 'M', 'France', 1000000),
(333, 'Nebiha', 'Amir',23, 'F', 'Uzbekistan',3600000),
(444, 'Soresa', 'Hailu', 32, 'M', 'Unkown', 34000000),
(555, 'Beka', 'Haile', 24,  'M', 'Kazkistan', 34000000),
(666, 'Nick', 'Jones', 28,  'M', 'USA', 2000000),
(777, 'Poul', 'Pogba', 30, 'M', 'France', 20000000),
(888, 'Betty', 'G', 18, 'F', 'Ethiopia', 70000000);

update Customers
set Cust_Country = 'Ethiopia'
where Cust_ID = 444;



update customers
set Cust_Country = 'Ethiopia'
where Cust_ID = 555;

drop table customers;
create table Customers;

delete from customers
where Cust_ID = 666;

select *
from customers;

select *
from customers
 where Cust_Country = 'Ethiopia';
 
 select *
 from customers
 where Cust_Salary > 50000000; 
 
 select Cust_FirstName, Cust_LastName, Cust_Country
 from customers
 where Cust_Gender = 'M';
 
 select distinct Cust_Country from customers; 
 
 Select Cust_FirstName, Cust_LastName, Cust_Country
 from customers
 where Cust_Gender ='F'
order by Cust_Country desc;

 
 
 select Cust_Gender, Cust_Salary, Cust_Country
 from customers
 Where Cust_Salary > '2000000' and Cust_Country ='Ethiopia' and Cust_Gender = 'F';
 
  select *
  from customers
  where Cust_Country = 'Ethiopia' or Cust_Country = 'Uzbekistan';
  
  select min(Cust_Salary) 
  from customers;
  
  select max(Cust_Salary)
  from customers;
  
  Select count(Cust_ID)
  from customers;
  
  select avg (Cust_Salary)
  from customers;
  
  select sum(Cust_Salary)
  from customers;
  
  select*
  from customers
  where Cust_Salary between 2000000 and 8000000;
  
  select* 
  from customers
  where Cust_FirstName like 'S%';
  
  select* 
  from customers
  where Cust_FirstName like '_e%'
  and Cust_LastName like '%e';

select* 
  from customers
  where Cust_LastName like 'P%a';
  
  Select*
  from customers
  Where Cust_Country in ('Ethiopia', 'USA', 'France');
  
  create table Address (
  Cust_Zip varchar(100) not null,
  Cust_Street varchar(50) not null,
  Cust_City varchar (100) not null,
  Cust_State varchar (50),
  Cust_ID int,
  primary key (Cust_Zip),
  foreign key (Cust_ID) references customers(Cust_ID));
  

  
  
  insert into Address(Cust_Zip, Cust_Street, Cust_City, Cust_State, Cust_ID)
  value('1000', 'Megenagn', 'Addis Ababa', 'Addis Abab', 444),
        ('2000', '4-Kilo', 'Addis Ababa', 'Addis Ababa', 555),
        ('3000', '41-Eyesus', 'Addis Ababa', 'Addis Ababa', 888),
        ('4000', '6-Kilo', 'Addis Ababa', 'Addis Ababa', 333),
        ('5000', '01-St', 'San Diego', 'Califorinia', null),
        ('6000', 'KU-Road', 'Los Angeles','Califonia', null),
        ('7000', 'JK-Road', 'Miami', 'Florida', null),
        ('8000','LJ-Road', 'Atlanta', 'Georgia',null);
        
select Address.Cust_ID, customers.Cust_FirstName, customers.Cust_Lastname, Address.Cust_Zip, Address.Cust_City
  from Address inner join Customers
  where Address.Cust_ID = Customers.Cust_ID;
  
	
  select Address.Cust_ID, customers.Cust_FirstName, customers.Cust_Lastname, Address.Cust_Zip, Address.Cust_City
  from Address left outer join Customers
  on Address.Cust_ID = Customers.Cust_ID;
  
  select Address.Cust_ID, customers.Cust_FirstName, customers.Cust_Lastname, Address.Cust_Zip, Address.Cust_City
  from Address right outer join Customers
  on Address.Cust_ID = Customers.Cust_ID;
  
   select Address.Cust_ID, customers.Cust_FirstName, customers.Cust_Lastname, Address.Cust_Zip, Address.Cust_City
  from Address left outer join Customers
  on Address.Cust_ID = Customers.Cust_ID
  union 
  select Address.Cust_ID, customers.Cust_FirstName, customers.Cust_Lastname, Address.Cust_Zip, Address.Cust_City
  from Address right outer join Customers
  on Address.Cust_ID = Customers.Cust_ID;
  


  
  
  
  
  
  
  
  
 
 
 
 
 
 
 
















