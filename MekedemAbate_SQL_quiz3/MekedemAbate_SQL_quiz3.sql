use mydb;

create table Address (
Cust_Zip varchar(255) not null auto_increment primary key,
Cust_Street varchar(255) not null,
Cust_City varchar(255) not null,
Cust_State varchar(255),
Cust_ID int);

insert into Address
values(1000,'Megenagn','Addis Ababa','Addis Ababa',444),
(2000,'4-kilo','Addis Ababa','Addis Ababa',555),
(3000,'41-Eyesus','Addis Ababa','Addis Ababa',888),
(4000,'6-kilo','Addis Ababa','Addis Ababa',333),
(5000,'01-st','San Diego','California',null),
(6000,'KU-road','Los Angeles','California',null);

insert into Address
values(7000,'JK-road','Miami','Florida',null),
(8000,'Lj-road','Atlant','Georgia',null);

alter table address
add foreign key(Cust_Id)
references customers(Cust_Id);

select address.cust_id,customers.cust_FirstName,customers.cust_gender,customers.cust_country,address.cust_state
from customers
inner join address
on customers.cust_id=address.cust_id;

select address.cust_id,customers.cust_FirstName,customers.cust_gender,customers.cust_country
from customers
left outer join address
on customers.cust_id=address.cust_id;

select address.cust_id,customers.cust_FirstName,customers.cust_gender,customers.cust_country
from customers
right outer join address
on customers.cust_id=address.cust_id;

select address.cust_id,customers.cust_FirstName,customers.cust_gender,customers.cust_country
from customers
left outer join address
on customers.cust_id=address.cust_id
union
select address.cust_id,customers.cust_FirstName,customers.cust_gender,customers.cust_country
from customers
right outer join address
on customers.cust_id=address.cust_id;








