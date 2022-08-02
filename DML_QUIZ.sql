use mydb;
create table customers(
 Cust_ID int not null,
Cust_FirstName varchar(55) not null,
Cust_LastName  varchar(55) not null,
Cust_NickName varchar(55),
Cust_Age int,
Cust_Gender char not null,
Cust_Country varchar(55) not null,
Cust_Salary decimal not null,
cust_fee int not null
);

INSERT INTO customers(Cust_ID, Cust_FirstName, Cust_LastName, Cust_NickName, Cust_Age, Cust_Gender, Cust_Country, Cust_Salary, Cust_Fee)
VALUES(111, 'Nick', 'Jones', 'Ja', 20, 'M', 'USA', 20000000, 82145),
(222, 'Anthony', 'Maritial', 'Marit', 15, 'M', 'France', 10000000, 55432),
(333, 'Ross', 'Geller', 'Gel', 50, 'M', 'Uzbakistan', 3600000, 62353),
(444, 'Chandler', 'Bing', 'Chand', 30, 'M', 'Unknown', 3400000, 23455),
(555, 'Rachel', 'Green', 'Rach', 35, 'F', 'Kazakhstan', 400000, 72145),
(666, 'Nick', 'Jones', 'Nicky', 18, 'M', 'USA', 20000000, 942145),
(777, 'Poul', 'Pogba', 'Po', 60, 'M', 'France', 20000000, 402145),
(888, 'Joey', 'Tribiani', 'Trib', 40, 'M', 'Ethiopia', 70000000, 82145);

update customers 
set cust_ID =333
where cust_country="Ethiopia";

update customers 
set cust_ID =444
where cust_country="Ethiopia";


update customers 
set cust_ID =666
where cust_country="Ethiopia";
 