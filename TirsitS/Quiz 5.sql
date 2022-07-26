
create table Addresse(
Cust_ZIP int not null,primary key (Cust_Zip),
Cust_Street int (100) not null,
Cust_City varchar(100) not null,
Cust_State int(100) not null,
Cust_Id int 
);

alter table Addresse
modify Cust_Street varchar(100) not null


foreign key (Cust_id) references customer(cust_id);

use Mydb;

insert into Addresse
Values (1000,'Megenagna','Addis Ababa','Addis Ababa',444);

insert into Addresse 
values(2000,'4-Kilo','Addis Ababa','Addis Ababa',555);

insert into Addresse 
values(3000,"41-Eyesus","Addis Ababa","Addis Ababa",888);

insert into Addresse 
values(4000,"6-Kilo","Addis Ababa","Addis Ababa",300);

insert into Addresse 
values(5000,"01-st","San Diego","California",null);

insert into Addresse 
values(6000,"ku-road-road","Los angeles","Califronia",null);

insert into Addresse 
values(7000,"JK-road","Maiami","Florida",null);

insert into Addresse 
values(8000,"Lj-road","Atlanta","Georgia",null);

