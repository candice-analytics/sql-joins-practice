-- SQL JOINs Practice Project
-- Author: Candice Howe
-- Description: INNER JOIN queries to explore matching records across tables.
-- Database: MySQL
-- Date: 2025-05-07



-- QUESTION: Find the salesperson and customer who reside in the same city. Return Salesman, cust_name and city.
-- Join logic: You're matching on a common value (city). You only want pairs where the city matches in both tables - you don’t care about unmatched records.
-- Use INNER JOIN

SELECT 
    s.name AS 'Salesperson', 
    c.cust_name, c.city
FROM salesman s
JOIN customer c
ON s.city = c.city;

-- ordering the result by customer name in descending order.
SELECT 
    s.name AS 'Salesperson', 
    c.cust_name, c.city
FROM salesman s
JOIN customer c
ON s.city = c.city
ORDER BY cust_name desc;


-- QUESTION: find those orders where the order amount exists between 500 and 2000. Return ord_no, purch_amt, cust_name, city.
-- Join logic: You want orders with customer details, only where the amount is in a range. You want only matches.
-- Use INNER JOIN

SELECT 
    o.ord_no, 
    o.purch_amt, 
    c.cust_name, 
    c.city
FROM orders o
JOIN customer c
ON o.customer_id = c.customer_id
WHERE o.purch_amt BETWEEN 500 AND 2000;


-- QUESTION: find the salesperson(s) and the customer(s) he represents. Return Customer Name, city, Salesman, commission.
-- Join logic: You’re only interested in customers that have a valid salesperson - this is a classic foreign key match scenario.
-- Use INNER JOIN

SELECT 
	c.cust_name AS 'Customer Name',
	c.city,
	s.name AS 'Salesperson',
	s.commission
FROM customer c
INNER JOIN salesman s
ON c.salesman_id = s.salesman_id;


-- QUESTION: Find the customer name, order number, order date, and the salesperson’s name for each order placed.
-- Join Logic: You’re only interested in orders that have valid customer and salesperson records - this is a classic foreign key join scenario using orders as the central table.
-- Use INNER JOIN

SELECT 
	c.cust_name,
    o.ord_no,
    o.ord_date,
    s.name AS 'Salesperson'
FROM orders o
JOIN customer c ON o.customer_id = c.customer_id
JOIN salesman s ON o.salesman_id = s.salesman_id;


-- QUESTION: Find all orders greater than 1000 along with customer name and salesperson name. Return Order No, Purchase Amount, Customer Name, Salesman.
-- Join logic: You want orders that have both a valid customer and a valid salesperson - classic foreign key match on both fields.
-- Use INNER JOIN

SELECT
	o.ord_no AS 'Order No',
	o.purch_amt AS 'Purchase Amount',
	c.cust_name AS 'Customer Name',
	s.name AS 'Salesperson'
FROM orders o
JOIN customer c ON o.customer_id = c.customer_id
JOIN salesman s ON s.salesman_id=o.salesman_id
WHERE o.purch_amt > 1000;


-- QUESTION: Find the total purchase amount per customer. Return Customer Name and Total Purchase.
-- Join logic: Only include customers who have placed orders - match orders to customers using a foreign key.
-- Use INNER JOIN

SELECT
    c.cust_name AS 'Customer Name',
    SUM(o.purch_amt) AS 'Total Purchase'
FROM customer c
JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.cust_name;