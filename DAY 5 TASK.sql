-- Create a database
CREATE DATABASE Dmartshop;
USE Dmartshop;

-- Create Customers table
CREATE TABLE Customers (
    customer_id INT,
    customer_name VARCHAR(100),
    city VARCHAR(50)
);

-- Create Orders table (without foreign key)
CREATE TABLE Orders (
    order_id INT,
    customer_id INT,
    order_date DATE,
    amount DECIMAL(10, 2)
);


-- Insert into Customers
INSERT INTO Customers VALUES
(1, 'Manish', 'Pune'),
(2, 'Nisha', 'Mumbai'),
(3, 'Niraj', 'Delhi'),
(4, 'Naman', 'Kolkata');

-- Insert into Orders
INSERT INTO Orders VALUES
(101, 1, '2025-06-01', 200.00),
(102, 2, '2025-06-03', 100.00),
(103, 1, '2025-06-05', 150.00),
(104, 5, '2025-06-07', 163.00); -- customer_id 5 does not exist in Customers


select * from orders;
select *from customers;

-- Inner join 

select * from customers
inner join orders
on customers.customer_id = orders.customer_id;

-- LEFT JOIN

SELECT * FROM CUSTOMERS AS C
LEFT JOIN ORDERS AS O ON C.customer_id = O.customer_id;

-- RIGHT JOIN

SELECT * FROM CUSTOMERS AS C
RIGHT JOIN ORDERS AS O ON C.customer_id = O.customer_id;


-- FULL OUTER JOIN (not directly supported in MySQL)
-- WE CAN DO "FULL OUTER JOIN" using UNION of LEFT and RIGHT JOIN:

SELECT * FROM CUSTOMERS AS C
LEFT JOIN ORDERS AS O ON C.customer_id = O.customer_id

UNION

SELECT * FROM CUSTOMERS AS C
RIGHT JOIN ORDERS AS O ON C.customer_id = O.customer_id;
