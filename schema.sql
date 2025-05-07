-- SQL JOINs Practice Project
-- Author: Candice Howe
-- Description: Defines the schema for Salesman, Customers and Orders tables.
-- Database: MySQL
-- Date: 2025-05-07



-- Creating Salesman Table
-- This table stores information about the salespeople.

CREATE TABLE salesman (
salesman_id int,
name varchar(100),
city varchar(100),
commission decimal(5,2)
);

-- Creating Customer Table
-- This table stores details about the customers, including their sales representative.

CREATE TABLE customer (
customer_id int,
cust_name varchar(100),
city varchar(100),
grade int,
salesman_id int
);

-- Creating Orders Table
-- This table stores order details, including the customer and salesperson associated with each order.

CREATE TABLE orders (
ord_no int,
purch_amt decimal(10,2),
ord_date date,
customer_id int,
salesman_id int
);