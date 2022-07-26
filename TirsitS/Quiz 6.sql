
create table Address(
Cust_ZIP varchar(50) not null,
Cust_Street varchar(50) not null,
Cust_City varchar(50) not null,
Cust_State varchar(50),
Cust_ID int,
primary key(Cust_ZIP),
foreign key(Cust_ID) references Customer(Cust_ID)
);

insert into MyDB.Address(Cust_ZIP,Cust_Street,Cust_City,Cust_State,Cust_ID)
values("1000","megenagn","Addis Ababa","Addis Ababa",444);

insert into MyDB.Address(Cust_ZIP,Cust_Street,Cust_City,Cust_State,Cust_ID)
values("2000","4-kilo","Addis Ababa", "Addis Ababa",555),
("3000","41-eyesus","Addis Ababa", "Addis Ababa",888),
("4000","6 kilo","Addis Ababa","Addis Ababa",333);

insert into MyDB.Address(Cust_ZIP,Cust_Street,Cust_City,Cust_State,Cust_ID)
values ('5000',"01-st","San Diego","California",null),
("6000","kU-road","Los Angeles","California",null),
("7000","JK-road","Miami","Florida",null),
("8000","Lj-road","Atlanta","Georgia",null);

select Customer.Cust_FirstName as "first_name",Customer.Cust_Country,Customer.Cust_Salary,Address.Cust_Street,Address.Cust_City
from Customer inner join Address
on Customer.Cust_ID=Address.Cust_ID;

select address.cust_id,customer.cust_FirstName,customer.cust_gender,customer.cust_country
from customer
left outer join address
on customers.cust_id=address.cust_id;

select address.cust_id,customer.cust_FirstName,customer.cust_gender,customer.cust_country
from customer
right outer join address
on customer.cust_id=address.cust_id;

select address.cust_id,customer.cust_FirstName,customer.cust_gender,customer.cust_country
from customer
left outer join address
on customer.cust_id=address.cust_id
union
select address.cust_id,customer.cust_FirstName,customer.cust_gender,customer.cust_country
from customer
right outer join address
on customer.cust_id=address.cust_id;


