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

/*
Quiz-5
Write A Query for the following


1.      Write a query which display all Records from the table?
 select * from database.table;

2       Write a query which display all columns from the table where  there Citizenship is Ethiopian?
   Select Citizenship column
   From tablename
   Where Citizenship = "Ethiopian";
3.      Write a query which display all columns from the table where  there Salary greater than 5million?
   Select Salary column
   From tablename
   Where Salary > "5 Million";

4. Write a query which display all Male Customers FirstName, LastName and Country?
   Select Cust_FirstName, Cust_LastName, Country, column2,...
   From tablename
   Where Cust_Gender ="Male";

5. Write a query which display only distinct Country?
   select distnict Country
   from tablename;

6  Write a query which display all Female Customers FirstName, LastName and Country in  descending?
   select Cust_FirstName, Cust_LastName, Country
   from tablename
   order by Cust_Gender = "Female" desc;

7. Write a query that display all records from the table where Gender female, Here salary is greater than 2million and also Here Citizenship is Ethiopian?
   Select Cust_Gender, Salary, Citizenship
   From tablename
   Where Cust_Gender ="Female", Salary > "2 million", Citizenship = "Ethiopian";

8. Write a query that display all records from the table where there Citizenship is Ethiopian or uzbekistan?
   select Citizenship
   From Tablename
   Where Citizenship = "Ethiopian" or "Uzbekistan";

9. Write a query that display Minimum Salary from the table?
   select min(salary) as 'Lowest salary'
   from tablename;

10. Write a query that display Maximum Fees from the table?
    select max(fee) as 'highest salary'
    from tablename;
11. Write a query that display Number of Customer We have in the table?
    select count(Columnname) 
    From Tablename;

12. Write a query that display Average Salary from the record?
    select avg(Salary) as 'average salary'
    From tablename

13. Write a query that display The sum of all customers Fees?
    select sum(Salary) as 'total salary'
    from tablename;

14. Write a query that display all the record where there salary is between 2million and 8million?
    select * 
    from tablename
    where Cust_Salary between "2 million" and "8 million";

15. Write a query that display all the record where there firstName start with 'S'?
    select *
    from tablename
    where cust_FirstName like 's%';

16. Write a query that display all the record where there firstName have 'e' in the second position and His/er lastName have end with 'e'?
    select *
    from tablename
    where Cust_FirstName like '_e', Cust_LastName like 'e%';
    
17. Write a query that display all the record where there LastName that start with 'p' and ends with 'a'?
	elect *
    from tablename
    where Cust_LastName like 'p%'and like '_a';

18. Write a query that display all the customers from Ethiopia, USA and France?
   select distnict Ethiopia, USA, France 
    from tablename;



*/










