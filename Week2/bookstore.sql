mysql
create database JEbookshop;
use JEbookshop;

create table customers (
  customerID int,
  customerName varchar(50),
    customerAddress varchar(100)
);

show tables;

show columns from customers;

truncate table customers;
-- used to delete all records from the customers table in a database without deleting the table itself.

INSERT INTO `customers` (`customerID`, `customerName`, `customerAddress`) VALUES
(1, 'Jack', '115 Old street Belfast'),
(2, 'James', '24 Carlson Rd London'),
(4, 'Maria', '5 Fredrik Rd, Bedford'),
(5, 'Jade', '10 Copland Ave Portsmouth '),
(6, 'Yasmine', '15 Fredrik Rd, Bedford'),
(3, 'Jimmy', '110 Copland Ave Portsmouth');

SELECT * FROM customers;
-- This command will return all rows and columns from the customers table.

delete from customers where customerID = 3;

SELECT * FROM customers;

delete from customers where customerID = 5;

SELECT * FROM customers;



-- To update a record in a table in SQL.
UPDATE customers
SET customerName = 'John', customerAddress = '123 New Street'
WHERE customerID = 1;


delete from customers;
-- This command will delete all rows from the customers table.


INSERT INTO new_customers (customerID, customerName, customerAddress)
SELECT customerID, customerName, customerAddress
FROM customers
WHERE customerAddress LIKE '%Bedford%';
-- This command will select records from 
-- table1 where the condition is true, and then insert those records into table2.