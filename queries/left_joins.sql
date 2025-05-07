-- SQL JOINs Practice Project
-- Author: Candice Howe
-- Description: LEFT JOIN queries to explore all records from the left table and matches from the right.
-- Database: MySQL
-- Date: 2025-05-07



-- QUESTION: Find all customers and their orders (if any). Return Customer Name, Order No, Purchase Amount.
-- Join logic: You want all customers even if they haven't placed any orders - LEFT JOIN from customer to orders.

SELECT 
	c.cust_name AS 'Customer Name',
	o.ord_no AS 'Order Number',
	o.purch_amt AS 'Purchase Amount'
FROM customer c
LEFT JOIN orders o ON c.customer_id = o.customer_id;


-- QUESTION: List customers who have not placed any orders.
-- Join logic: You want customers with no matching orders - use LEFT JOIN and filter where order is NULL.

SELECT
    c.cust_name AS 'Customer Name'
FROM customer c
LEFT JOIN orders o ON c.customer_id = o.customer_id
WHERE o.ord_no IS NULL;


-- QUESTION: Show all salespeople and the customers they represent (if any). Return Salesman, Customer Name.
-- Join logic: You want all salespeople even if they don’t have customers - LEFT JOIN from salesman to customer.

SELECT 
    s.name AS 'Salesperson',
    c.cust_name AS 'Customer Name'
FROM salesman s
LEFT JOIN customer c ON s.salesman_id = c.salesman_id;