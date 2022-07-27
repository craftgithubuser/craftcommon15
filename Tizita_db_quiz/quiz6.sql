 -- quiz6
 
create table Address(
cust_Zip varchar(100) primary key not null,
cust_Street varchar(100) not null,
cust_City varchar (100) not null,
cust_State varchar(100),
cust_ID int ,
foreign key (cust_ID) references customers (customerID)
); 
 
insert into address(cust_zip, cust_Street, cust_City, cust_State, cust_ID)
values
(1000 , 'megenagn', 'Addis Ababa', 'Addis Ababa', 444),
(2000, '4-kilo', 'Addis Ababa', 'Addis Ababa', 555),
(3000, '41-eyesus', 'Addis Ababa', 'Addis Ababa', 888),
(4000, '6-kilo', 'Addis Ababa', 'Addis Ababa', 333),
(5000, '01-st', 'San Diego', 'California', null),
(6000, 'kU-road', 'Los Angeles', 'California', null),
(7000, 'JK-road', 'Miami', 'Florida', null),
(8000, 'Lj-road', 'Atlanta', 'Georgia', null);


select customers.customerID, customers.customerfirstname as `first_name`, customers.customerCountry, customers.customerAge, Address.cust_zip, Address.cust_street, Address.cust_city, Address.cust_state, address.cust_ID
from customers inner join address
on customers.customerID= address.cust_ID;

select customers.customerID, customers.customerfirstname as `first_name`, customers.customerCountry, customers.customerAge, Address.cust_zip, Address.cust_street, Address.cust_city, Address.cust_state, address.cust_ID
from customers left outer join address
on customers.customerID= address.cust_ID;
 
select customers.customerID, customers.customerfirstname as `first_name`, customers.customerCountry, customers.customerAge, Address.cust_zip, Address.cust_street, Address.cust_city, Address.cust_state, address.cust_ID
from customers right join address
on customers.customerID= address.cust_ID
union
select customers.customerID, customers.customerfirstname as `first_name`, customers.customerCountry, customers.customerAge, Address.cust_zip, Address.cust_street, Address.cust_city, Address.cust_state, address.cust_ID
from customers left outer join address
on customers.customerID= address.cust_ID

