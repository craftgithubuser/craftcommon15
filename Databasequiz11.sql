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