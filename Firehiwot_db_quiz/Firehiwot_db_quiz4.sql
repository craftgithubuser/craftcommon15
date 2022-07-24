/*
UseCase Quiz 2
1.       Create a database or  Schema called MyDB
2.       Create a table  name customers
  -- inside customers table add acolumn 
       column Name         Datatype  
       - Cust_ID                  - integer        make it auto increment and didn't accept null value 
       - Cust_FirstName    - String	     didn't accept null value
       - Cust_LastName     - String         didn't accept null value
       - Cust_NickName    - String
       - Cust_Age                    - integer
       - Cust_Gender             - Character      didn't accept null value
       - Cust_Country            - String             didn't accept null value
       - Cust_Salary               - Decimal           didn't accept null value
       - uniquely identifies each record in a table by Cust_ID
*/
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

/*
Performing DML Quiz-3
Insert the following Data in to Customers table
-- Update
    Cust_ID=333,444,555 
    Country to Ethiopian
-- Delete 
    cust_Name=nick jones 
    WhichCust_ID is 666
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
update 
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

/*
Database 
Lab Guide
-- add column Using alter 
            -- Name= bonus
            -- DataType= Integer
            -- It doesn't accept null value
-- modify column using alter
		    -- Name = Age
            -- Datatype = Integer,
            -- to not accept null value
-- Delete column using alter
            -- Name = NickName
            -- Name = bonus
-- Rename Customers Table to Customer Table
-- Drop table Customer
-- Drop DataBase/schema
-- Again Recreate Schema/DataBase MyDB after we Drop the schema
-- Again Recreate the table Customers with all of it columns after we Drop the customer table 
*/

alter table custemers
add column bonus int not null;

alter table custemers
modify column Cust_Age int not null;

alter table custemers
drop column Cust_nickName;

rename table custemers to customer;
drop table custemer;
drop schema mydb;
rename table customer to customers;










