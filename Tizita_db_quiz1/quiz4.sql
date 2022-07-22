

insert into customers (customerId, customerfirstname, customerlastname, customerage, customergender, customercountry, customersalary )
values (111, 'Nick', 'Jones', null, 'M', 'USA', 20000000),     
(222, 'Antony', 'Martial', null,  'M', 'France', 10000000),
(333, 'Ross', 'Geller', null, 'M', 'uzbekistan', 36000000),
(444, 'Chandler', 'Bing', null, 'M', 'Unkown', 34000000),
(555, 'Rachel', 'Green', null, 'F', 'kazakhstan', 400000),
(666, 'Nick', 'Jones', null, 'M', 'USA', 20000000), 
(777, 'Poul', 'Pogba', null, 'M', 'France', '20000000'),
(888, 'Joey' ,'Tribbiani', null, 'M', 'Ethiopia', '70000000');

update customers
set customercountry = 'ethiopia'
where customerid = '333';

update customers
set customercountry = 'ethiopia'
where customerid = '444';

update customers
set customercountry = 'ethiopia'
where customerid = '555';

delete from customers
where customerid = '666';