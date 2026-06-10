-- =============================================
-- Lesson: Querying Basics
-- Course: MySQL for Data Analytics
-- Date: June 10, 2026
-- =============================================
USE bakery;

-- SELECT all columns from customers table
SELECT * 
FROM customers;

-- SELECT specific columns
SELECT customer_id, first_name
FROM customers;

-- SELECT all columns from customer orders
SELECT *
FROM customer_orders;

-- WHERE to filter the rows
SELECT *
FROM customer_orders
WHERE product_id = 1001;