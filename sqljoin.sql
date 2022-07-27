use mydb;
create table Address(
Cust_Zip int not null,
Cust_Street varchar(25) not null,
Cust_City  varchar(25) not null,
Cust_State varchar(25) ,
Cust_ID int,
primary key (Cust_Zip),
foreign key (Cust_ID) references customers (Cust_ID)
);

insert into Address
values(1000, 'megenagn', 'Addis Ababa', 'Addis Ababa', 444),
(2000, '4_kilo', 'Addis Ababa', 'Addis Ababa', 555),
( 3000, '41_eyesus', 'Addis Ababa', 'Addis Ababa', 888), 
(4000, '6_kilo', 'Addis Ababa', 'Addis Ababa',333),
(5000, '01_st', 'San Diego', 'California', null),
(6000, 'KU_road', 'Los Angeles', 'California',null),
(7000, 'JK_road', 'Miami', 'Florida', null),
(8000, 'Lj_road', 'Atlanta','Geogia',null);

select Address. Cust_ID, customers. Cust_ID, address. Cust_City, customers. Cust_Country, customers. Cust_FirstName, address.Cust_State 
from customers inner join address
on customers.Cust_ID=address.Cust_ID;

select Address. Cust_ID, customers. Cust_ID, address. Cust_City, customers. Cust_Country, customers. Cust_FirstName, address.Cust_State 
from customers left outer join address
on customers.Cust_ID=address.Cust_ID;

select Address. Cust_ID, customers. Cust_ID, address. Cust_City, customers. Cust_Country, customers. Cust_FirstName, address.Cust_State 
from customers right outer join address
on customers.Cust_ID=address.Cust_ID;

select Address. Cust_ID, customers. Cust_ID, address. Cust_City, customers. Cust_Country, customers. Cust_FirstName, address.Cust_State 
from customers left outer join address
on customers.Cust_ID=address.Cust_ID 
 union
select Address. Cust_ID, customers. Cust_ID, address. Cust_City, customers. Cust_Country, customers. Cust_FirstName, address.Cust_State 
from customers right outer join address
on customers.Cust_ID=address.Cust_ID;




