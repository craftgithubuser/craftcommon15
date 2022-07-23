-- quiz 2 UseCase
-- 1. create a database called MyDB
create schema MyDB;
-- 2. Create a table  name customers
use MyDB;
create TABLE customers( 
cust_ID int NOT NULL,
cust_firstname varchar(30),
Cust_lastName char(30) NOT NULL,
cust_NickName char(20),
cust_age int,
Cust_Gender char(10) NOT NULL,
Cust_country varchar(20) default 'Ethiopia',
Cust_salary decimal NOT NULL
);
customers
-- modifying table
alter table customers
add cust_Nickname char(10) after cust_lastName;
alter table customers
add cust_age int after cust_Nickname;
alter table customers
add primary key(cust_ID);
alter table customers
modify cust_ID int not null auto_increment;
alter table customers
drop column cust_Nickname;
-- practising DML commands
alter table customers
modify Cust_salary int;
alter table customers
modify Cust_ID int;
insert into customers
values(null, "Lina", "Mao", 22, "Female", "Romania", 120000);
insert into customers
values(null, "Nick", "Jones", null, "M", "USA", 20000000);
insert into customers
values(222, "Antony", "Martial", null, "M", "France", 10000000);
insert into customers
values(333, "Ross", "Geller", null, "M", "uzbekistan", 36000000);
insert into customers
values(444, "Chandler ", "Bing", null, "M", "Unkown", 3400000);
insert into customers
values(555, "Rachel ", "Green", null, "F", "kazakhstan", 400000);
insert into customers
values(666, "Nick", "Jones", null, "M", "USA", 20000000);
insert into customers
values(777, "Poul", "Pogba", null, "M", "France", 20000000);
insert into customers
values(888, "Joey ", "Tribbiani", null, "M", "Ethiopia", 70000000);

-- 2. Updating Cust_ID=333,444,555 to country Ethiopian
update customers 
set Cust_country = case Cust_ID
when 333 then 'Ethiopian'
when 444 then 'Ethiopian'
when 555 then 'Ethiopian' 
else Cust_country
end
where Cust_ID IN(333,444,555);
-- 3.Delete Cust_name=nick Jones whichCust_ID is 666
delete from customers where cust_firstname ='nick' and Cust_lastName='jones' and cust_ID=666;
-- adding column using ulter
alter table customers
add Name_Bonus int not null;
alter table customers
 modify column Cust_age int not null;
 alter table customers
drop column Bonus;
-- renameing the table name
rename table customers TO `Customer Table`;
-- Drop table Customer
drop table `customer table`
-- Drop DataBase/schema
drop database mydb;
-- Again Recreate Schema/DataBase MyDB after we Drop the schema
create schema MyDB;
-- Again Recreate the table Customers with all of it columns after we Drop the customer table 
-- Creating Another table
create TABLE Address( 
cust_ZIP varchar(30) not null primary key,
cust_street varchar(30),
Cust_city char(30) NOT NULL,
cust_state char(20),
cust_ID int
);
/*SELECT Orders.OrderID, Customers.CustomerName, Orders.OrderDate
FROM Orders
INNER JOIN Customers ON Orders.CustomerID=Customers.CustomerID;*/
insert into address
values(1000, "megenagn", "Addis Ababa", "Addis Ababa", 444);
insert into address
values(2000, "4-kilo", "Addis Ababa", "Addis Ababa", 555);
insert into address
values(3000, "41-eyesus", "Addis Ababa", "Addis Ababa", 888);
insert into address
values(4000, "6-kilo", "Addis Ababa", "Addis Ababa", 333);
insert into address
values(5000, "01-st", "San Diego", "California", null);
insert into address
values(6000, "kU-road", "Los Angeles", "California", null);
insert into address
values(7000, "JK-road", "Addis Ababa", "Florida", null);
insert into address
values(8000, "Lj-road", "Atlanta", "Georgia", null);
-- Write a query that perform INNER JOIN, LEFT OUTER JOIN, Right outer join and FULL OUTER JOIN.
SELECT cust_firstname, Cust_lastName, Cust_Gender, Cust_country, Cust_salary
FROM customers
INNER JOIN address
ON customers.cust_ID = address.cust_ID;
-- Left Outer Join
select cust_firstname, Cust_lastName, Cust_Gender, Cust_country, Cust_salary, Cust_city
from customers
left join address
on customers.Cust_ID =address.cust_ID;
-- right Outer Join
select cust_age, Cust_country, Cust_salary, cust_ZIP
from customers
right join address
on customers.Cust_ID= address.cust_ID;
-- Full outer join is not supported in MySQL
select cust_firstname , Cust_country, Cust_salary,cust_ZIP, Cust_city, cust_state
from customers
full join address
on customers.Cust_ID = address.cust_ID;
