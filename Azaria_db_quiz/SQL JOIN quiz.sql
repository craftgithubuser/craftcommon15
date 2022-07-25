


create table MyDB.Address(
Cust_ZIP varchar(30) not null,
Cust_Street varchar(35) not null,
Cust_City varchar(45) not null,
Cust_State varchar(55),
Cust_ID int,
primary key(Cust_ZIP),
foreign key(Cust_ID) references Customers(Cust_ID)
);


insert into MyDB.Address(Cust_ZIP,Cust_Street,Cust_City,Cust_State,Cust_ID)
values("1000","megenagn","Addis Ababa","Addis Ababa",444);











create table mydb.address(
Cust_ZIP varchar(40) not null primary key,
Cust_Street varchar(40) not null,
Cust_City varchar (30) not null,
Cust_State varchar(35),
Cust_ID int 
 );
 
alter table address
add foreign key(Cust_ID)
references customers (Cust_ID);

alter table address
drop foreign key Cust_ID;






insert into Address
values(1000,'Megenagn','Addis Ababa','Addis Ababa',444),
(2000,'4-kilo','Addis Ababa','Addis Ababa',555),
(3000,'41-Eyesus','Addis Ababa','Addis Ababa',888),
(4000,'6-kilo','Addis Ababa','Addis Ababa',333),
(5000,'01-st','San Diego','California',null),
(6000,'KU-road','Los Angeles','California',null);




Select address.cust_Id,customers.cust_FirstName
from customers
inner join address
on customers.cust_id=address.cust_id;


Select address.cust_Id,customers.cust_FirstName
from customers left join address
on customers.cust_id=address.cust_id;


Select address.cust_Id,customers.cust_FirstName
from customers right join address
on customers.cust_id=address.cust_id;


Select address.cust_Id,customers.cust_FirstName
from customers left join address
on customers.cust_id=address.cust_id
union
Select address.cust_Id,customers.cust_FirstName
from customers right join address
on customers.cust_id=address.cust_id;