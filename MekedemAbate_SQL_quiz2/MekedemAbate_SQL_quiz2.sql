INSERT INTO customers
VALUES (111,'Nick','Jones', null, 'M', 'USA', 20000000 ),
(222,'Antony', 'Martial', null, 'M', 'France', 10000000),
(333,'Ross', 'Giller', null, 'M', 'Uzbekistan', 36000000),
(444,'Chandler', 'Bing', null, 'M', 'Unknown', 34000000),
(555,'Rachel', 'Green', null, 'F', 'Kazakistan', 400000),
(666,'Nick','Jones', null, 'M', 'USA', 20000000 ),
(777,'Poul','Pogba', null, 'M', 'France', 20000000 ),
(888,'Joey','Tibbiani', null, 'M', 'Ethiopia', 70000000 );

UPDATE customers 
SET Cust_Country = 'Ethiopia'
WHERE Cust_ID = 333;
    
UPDATE customers 
SET Cust_Country = 'Ethiopia'
WHERE Cust_ID = 444;

UPDATE customers 
SET Cust_Country = 'Ethiopia'
WHERE Cust_ID = 555;

DELETE FROM Customers 
WHERE Cust_Id=666
    