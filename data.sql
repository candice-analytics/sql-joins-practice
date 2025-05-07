-- SQL JOINs Practice Project
-- Author: Candice Howe
-- Description: Inserts sample data into Salesman, Customers and Orders tables.
-- Database: MySQL
-- Date: 2025-05-07



-- Inserting Salesman Data
-- This section adds sample salespeople to the Salesman table.

INSERT INTO salesman (salesman_id, name, city, commission)
VALUES 
	('5001', 'James Hoog', 'New York', '0.15'),
	('5002', 'Nail Knite', 'Paris', '0.13'),
	('5003', 'Pit Alex', 'London', '0.11'),
    	('5004', 'Mc Lyon', 'Paris', '0.14'),
    	('5005', 'Paul Adam', 'Rome', '0.13'),
    	('5006', 'Ava Clarke', 'Berlin', '0.14'),
    	('5007', 'Lily Bennett', 'Rome', '0.12');

-- Inserting Customer Data
-- This section adds sample customer data, including their assigned salesperson.

INSERT INTO customer (customer_id, cust_name, city, grade, salesman_id)
VALUES
	('3002', 'Nick Rimando', 'New York', '100', '5001'),
    	('3007', 'Brad Davis', 'New York', '200', '5001'),
    	('3005', 'Graham Zusi', 'California', '200', '5002'),
    	('3008', 'Julian Green', 'London', '300', '5002'),
    	('3004', 'Fabian Johnson', 'Paris', '300', '5006'),
    	('3009', 'Geoff Cameron', 'Berlin', '100', '5003'),
    	('3003', 'Jozy Altidor', 'Moscow', '200', '5007'),
    	('3001', 'Brad Guzan', 'London', NULL, '5005'),
	('3010', 'Emily Stone', 'Berlin', '200', '5006'),         
    	('3011', 'Daniel Rose', 'New York', NULL, '5001'),      
    	('3012', 'Sarah Moore', 'Madrid', '100', '5007'),         
    	('3013', 'Tom Hiddleston', 'Paris', '300', '5004');  

-- Inserting Order Data
-- This section adds sample orders, including their customer and salesperson details.

INSERT INTO orders (ord_no, purch_amt, ord_date, customer_id, salesman_id)
VALUES
	('70001', '150.50', '2012-10-05', '3005', '5002'),
	('70009', '270.65', '2012-09-10', '3001', '5005'),
	('70002', '65.26', '2012-10-05', '3002', '5001'),
	('70004', '110.50', '2012-08-17', '3009', '5003'),
	('70007', '948.50', '2012-09-10', '3005', '5002'),
	('70005', '2400.60', '2012-07-27', '3007', '5001'),
	('70008', '5760.00', '2012-09-10', '3002', '5001'),
	('70010', '1983.43', '2012-10-10', '3004', '5006'),
	('70003', '2480.40', '2012-10-10', '3009', '5003'),
	('70011', '1300.00', '2012-11-05', '3005', '5002'),   
	('70012', '500.00', '2012-12-01', '3010', '5006'),    
	('70013', '2750.00', '2012-10-15', '3002', '5001'),   
	('70014', '620.50', '2012-10-20', '3011', '5001'),    
	('70015', '1450.75', '2012-11-15', '3012', '5007'); 
