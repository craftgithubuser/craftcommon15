/*
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

alter table Custemers
drop column Cust_NickName;
*/

insert into Custemers (Cust_ID, Cust_FirstName, Cust_LastName,Cust_Gender,Cust_Country,Cust_Salary)
values(111, 'Nick', 'Jones','M','USA', 20000000),  
(222,'Antony','Martial','M','France',10000000),
(333,'Ross','Geller','M','uzbekistan',36000000),
(444,'Chandler','Bing','M','Unkown',34000000),
(555,'Rachel','Green','F','kazakhstan',400000),
(666,'Nick','Jones','M','USA',20000000),   
(777,'Poul','Pogba','M','France',20000000),
(888,'Joey','Tribbiani','M','Ethiopia',70000000)

updat

update custemers
set cust_country = "Ethiopia"
where cust_ID = 333;

Update custemers
Set Cust_Country = "Ethiopia"
where Cust_Id = "444";

Update custemers
Set Cust_Country = "Ethiopia"
where Cust_Id = "555";

delete from custemers
where Cust_ID = 666;










