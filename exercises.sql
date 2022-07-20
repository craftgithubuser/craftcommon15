
 create schema mydb;
create table customers(
Cust_ID int not null,
Cust_FirstName varchar(20) not null,
Cust_LastName varchar(38) not null,
Cust_NickName varchar(23) not null,
Cust_Age int not null,
Cust_Gender char(1) not null,
Cust_Country varchar(50) not null,
Cust_Salary float not null
);
-- alter table customers
-- add column Datatype varchar(37),
-- alter table customers
-- drop column Cust_NickName
-- alter table customers
-- add column Cust_NickName varchar(37)




-- 1.       Create a database or  Schema called MyDB

-- 2.       Create a table  name customers

--   -- inside customers table add acolumn 

--        column Name         Datatype  
--   
--        - Cust_ID                  - integer        make it auto increment and didn't accept null value 

--        - Cust_FirstName    - String	     didn't accept null value

--        - Cust_LastName     - String         didn't accept null value

--        - Cust_NickName    - String
--        
--        - Cust_Age                    - integer

--        - Cust_Gender             - Character      didn't accept null value

--        - Cust_Country            - String             didn't accept null value

--        - Cust_Salary               - Decimal           didn't accept null value

--        - uniquely identifies each record in a table by Cust_ID