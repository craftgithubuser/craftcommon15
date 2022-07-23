use MyDB;
create table Address( 
Cust_ZIP varchar(50) not null, 
Cust_Street varchar(50) Not null,
Cust_City varchar(50) Not null,
Cust_State varchar(50),
Cust_ID Int,
PRIMARY KEY (Cust_ZIP),
FOREIGN KEY (Cust_ID) REFERENCES Customers(Cust_ID));
insert into Address(cust_ZIP,cust_Street,cust_City,cust_State,cust_ID)
values(1000, "megenagna", "Addis Ababa", "Addis Ababa", "444");
insert into Address(cust_ZIP,cust_Street,cust_City,cust_State,cust_ID)
values(2000,"4-kilo","Addis Ababa","Addis Ababa","555");
insert into Address(cust_ZIP,cust_Street,cust_City,cust_State,cust_ID)
values(3000,"41-eyesus","Addis Ababa","Addis Ababa","888");
insert into Address(cust_ZIP,cust_Street,cust_City,cust_State,cust_ID)
values(4000,"6-kilo","Addis Ababa","Addis Ababa","333");
insert into Address(cust_ZIP,cust_Street,cust_City,cust_State)
values(5000,"01-st","San Diego","California");
insert into Address(cust_ZIP,cust_Street,cust_City,cust_State)
values(6000,"Ku-road","Los Angeles","California");
insert into Address(cust_ZIP,cust_Street,cust_City,cust_State)
values(7000,"JK-road","Miami","Florida");
insert into Address(cust_ZIP,cust_Street,cust_City,cust_State)
values(8000,"Lj-road","Atlanta","Georgia");

select customers.Cust_ID, Address.Cust_ZIP, customers.Cust_FirstName,  Address.Cust_ID, customers.Cust_LastName, Address.Cust_Street, customers.Cust_Age, Address.Cust_City, customers.Cust_Gender, Address.Cust_State, customers.Cust_Country, customers.Cust_Salary
from customers inner join Address
where customers.Cust_ID = Address.Cust_ID;

select customers.Cust_ID, Address.Cust_ZIP, customers.Cust_FirstName, Address.Cust_ID, customers.Cust_LastName, Address.Cust_Street, customers.Cust_Age, Address.Cust_City, customers.Cust_Gender, Address.Cust_State, customers.Cust_Country, customers.Cust_Salary
from customers left outer join Address
on customers.Cust_ID = Address.Cust_ID;

select customers.Cust_ID, Address.Cust_ZIP, customers.Cust_FirstName, Address.Cust_ID, customers.Cust_LastName, Address.Cust_Street, customers.Cust_Age, Address.Cust_City, customers.Cust_Gender, Address.Cust_State, customers.Cust_Country, customers.Cust_Salary
from customers right outer join Address
on customers.Cust_ID = Address.Cust_ID;











