create schema MyDB;
create table Customers(
Cust_ID int auto_increment not null,
Cust_FirstName varchar(20) not null,
Cust_LastName varchar(20) not null,
Cust_NickName varchar(10),
Cust_Age int,
Cust_Gender char not null,
Cust_Country varchar(30) not null,
Cust_Salary decimal not null,
Primary key(Cust_ID)
); 
use mydb;
alter table customers
drop column cust_nickname;
insert into Customers(cust_id, cust_firstname, cust_lastname, cust_gender, cust_country, cust_salary)
value(222, 'Antony','Martial','M', 'France', 10000000),
      (333,'Nebiha', 'Amir', 'F' ,'uzbekistan',36000000),
  (444,'Soresa', 'Hailu','M','Unkown', 34000000),
   (555,'Beka', 'Haile','M','kazakhstan', 400000),
  (666,'Nick','Jones','M','USA',20000000),
  (777,'Poul', 'Pogba', 'M', 'France',20000000),
(888,'Betty','G','F', 'Ethiopia',70000000);

-- update 
update customers
set cust_country= 'Ethiopia'
where cust_id in (333,444,555);

-- delete
delete from customers
where cust_id= 666;
-- 1 aggregate function quiz
select* 
from customers;
-- 2
select*
from customers
where cust_country='Ethiopia';
-- 3
select*
from customers
where cust_salary > 5000000;

-- 4 select male customers with their fullname and country
   select cust_firstname , cust_lastname, cust_country
    from customers
	where cust_gender ='M';
    
    -- 5 select distinct country
    select distinct cust_country
    from customers;
  -- 6 order by desending  
 select cust_firstname , cust_lastname, cust_country
    from customers
	where cust_gender= 'F' 
    order by cust_country desc;
    
    -- 7 display all f with salary and country
    select *
    from customers
    where cust_gender ='F' and
    cust_country = 'Ethiopia' and cust_salary > 2000000;
    
    -- 8 select by nationality
    select *
    from customers
    where cust_country = 'Ethiopian' or 'uzbekistan';
    
    -- 9 min value
    select Min(cust_salary) as 'salary'
    from customers;
     
     -- 10 max values
     select Max(Cust_salary) as 'salary'
     from customers;
     
     -- 11 count number of customers
     select count(Cust_id) as 'customers'
     from customers;
     
     -- 12 average salary
     select Avg(cust_salary) as 'average salary'
     from customers;
     -- 13 sum
     select sum(cust_salary) as 'total salary'
     from customers;
     -- 14 between 
     select* 
     from customers
     where cust_salary between 2000000 and 8000000;
      
      -- 15 like
      select *
      from customers
      where cust_firstname like ( 'S%');
      
      -- 16 like 2
      select*
      from customers
      where Cust_firstname like ('_e%') and Cust_lastname like('%e');
      
      -- 17 like 3
      select*
      from customers
      where Cust_lastName like ('p%a');
      
      -- 18 in 
      select *
      from customers
      where Cust_country in('Ethiopia' , 'USA', 'France');
      
     
      -- quiz on SQL join
      
 create table Address(
  Cust_zip varchar(255) not null ,
  cust_street varchar(255) not null,
  cust_city varchar(255) not null,
  cust_state varchar(255),
  custID int,
  primary key(cust_zip),
  foreign key(custID) references customers (cust_id)
  );
   use MYDB;
   
   insert into address(cust_zip, cust_street, cust_city, cust_state, custID)
   values(1000 , 'megenagna','addis abeba','addis abeba', 444 ),
      (2000 ,'4-kilo','addis abeba','addis abeba', 555 ),
      (3000 , '41-eyesus','addis abeba','addis abeba', 888),
      (4000 , '6-killo','addis abeba','addis abeba', 333),
       (5000, '01-st', 'san diego' , 'california', null),
       (6000, 'kU-road','los Angeles','california', null),
       (7000, 'jk-road','miami','florida', null),
       (8000, 'lj-road','atlanta','georgia', null);
       
       
       -- inner join query
       select address.cust_zip, cust_state, cust_city,
       customers.cust_country
       from address inner join customers on 
       address.custID=customers.cust_id;
       
       -- left outer join
       select address.Cust_City, customers.cust_firstname, customers.cust_lastname
       from address left outer join 
       customers on address.custID= customers.cust_id;
       
       -- right outer join
       select customers.cust_firstname, customers.cust_lastname, address.cust_city
       from customers right outer join address on customers.cust_id = address.CustID;
       
       -- full outer join
      select address.Cust_City, customers.cust_firstname, customers.cust_lastname
       from address left outer join 
       customers on address.custID= customers.cust_id
       union all
        select customers.cust_firstname, customers.cust_lastname, address.cust_state
       from customers right outer join address on customers.cust_id = address.CustID;
       
       
      
      
  
 