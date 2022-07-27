insert into customers(cust_id, cust_FirstName, Cust_LastName, Cust_Gender, Cust_Country, Cust_Salary )
values(111, 'Nick', 'Jones', 'M', 'USA', 2000000);

insert into customers(cust_id, cust_FirstName, Cust_LastName, Cust_Gender, Cust_Country, Cust_Salary )
values(222,'Antony','Martial','M','France',10000000);
insert into customers(cust_id, cust_FirstName, Cust_LastName, Cust_Gender, Cust_Country, Cust_Salary )
values(333,'Ross','Geller','M','uzbekistan',36000000),
(444,'Chandler','Bing','M','Unkown',34000000),
(555,'Rachel','Green','F','kazakhstan',400000),
(666,'Nick','Jones','M','USA',20000000),
(777,'Poul','Pogba','M','France',20000000),
(888,'Joey','Tribbiani','M','Ethiopia',70000000);


update customers
set Cust_Country = "Ethiopia"
where cust_id = 333;

update customers
set Cust_Country = "Ethiopia"
where cust_id = 444;

update customers
set Cust_Country = "Ethiopia"
where cust_id = 555;

delete from customers
where cust_id = 666
