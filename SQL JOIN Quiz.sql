-- Create a table name Address inside MyDB Database
use mydb;
create table Address(
Cust_ZIP int not null,
Cust_Street varchar(50) not null,
Cust_City varchar(50) not null,
Cust_State varchar(25),
Cust_ID int,
primary key (Cust_ZIP),
foreign key (Cust_ID) references customers (Cust_ID)
);

Insert into Address
Values (1000, 'megenagn', 'Addis Ababa', 'Addis Ababa', 444),
(2000, '4-kilo', 'Addis Ababa', 'Addis Ababa', 555),
(3000, '41-Eyesus', 'Addis Ababa', 'Addis Ababa', 888),
(4000, '6-kilo', 'Addis Ababa', 'Addis Ababa', 333),
(5000, '01-st', 'San Diego', 'California', null),
(6000, 'kU-road', 'Los Angeles', 'California', null),
(7000, 'JK-road', 'Miami', 'Florida', null),
(8000, 'Lj-road', 'Atlanta', 'Georgia', null);

         -- Write a query that perform INNER JOIN, LEFT OUTER JOIN, Right outer join and FULL OUTER JOIN.

-- Write a query that perform INNER JOIN 
select * from Address inner join customers
on Address.Cust_ID = customers.Cust_ID;
-- or
select Customers.Cust_FirstName, Customers.Cust_LastName, Customers.Cust_FirstName, Customers.Cust_Age, Customers.Cust_Gender, Customers.Cust_Country, Address.Cust_ID, Address.Cust_Street, Address.Cust_City, Address.Cust_State, Address.Cust_ZIP 
from Address inner join customers
on Address.Cust_ID = customers.Cust_ID;

-- Write a query that perform LEFT OUTER JOIN
select Customers.Cust_FirstName, Customers.Cust_LastName, Customers.Cust_FirstName, Customers.Cust_Age, Customers.Cust_Gender, Customers.Cust_Country, Address.Cust_ID, Address.Cust_Street, Address.Cust_City, Address.Cust_State, Address.Cust_ZIP 
from Address left outer join customers
on Address.Cust_ID = customers.Cust_ID;

 -- Write a query that perform RIGHT OUTER JOIN
select Customers.Cust_FirstName, Customers.Cust_LastName, Customers.Cust_FirstName, Customers.Cust_Age, Customers.Cust_Gender, Customers.Cust_Country, Address.Cust_ID, Address.Cust_Street, Address.Cust_City, Address.Cust_State, Address.Cust_ZIP 
from Address right outer join customers
on Address.Cust_ID = customers.Cust_ID;

-- Write a query that perform FULL OUTER JOIN
select Customers.Cust_FirstName, Customers.Cust_LastName, Customers.Cust_FirstName, Customers.Cust_Age, Customers.Cust_Gender, Customers.Cust_Country, Address.Cust_ID, Address.Cust_Street, Address.Cust_City, Address.Cust_State, Address.Cust_ZIP 
from Address left outer join customers
on Address.Cust_ID = customers.Cust_ID
union
select Customers.Cust_FirstName, Customers.Cust_LastName, Customers.Cust_FirstName, Customers.Cust_Age, Customers.Cust_Gender, Customers.Cust_Country, Address.Cust_ID, Address.Cust_Street, Address.Cust_City, Address.Cust_State, Address.Cust_ZIP 
from Address right outer join customers
on Address.Cust_ID = customers.Cust_ID;