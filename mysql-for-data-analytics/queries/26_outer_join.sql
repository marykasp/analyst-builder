-- =============================================
-- Lesson: 26: Outer Joins
-- Course: MySQL for Data Analytics
-- Date: July 18th, 2026
-- =============================================

USE bakery;

SELECT c.customer_id, first_name, co.order_id
FROM customers c
JOIN customer_orders co
	ON c.customer_id = co.customer_id
ORDER BY c.customer_id, co.order_id;

-- Display all rows from the customers table even the customers with no orders from the customer orders with LEFT JOIN
-- the order ids will show null for all customers who did not place an order
SELECT c.customer_id, first_name, co.order_id
FROM customers c
LEFT JOIN customer_orders co
	ON c.customer_id = co.customer_id
ORDER BY c.customer_id, co.order_id;

-- will display all rows from right table (customer orders) even unmatched rows
-- in this case all customers placed orders so there is no unmatching rows
SELECT c.customer_id, first_name, co.order_id
FROM customers c
RIGHT JOIN customer_orders co
	ON c.customer_id = co.customer_id
ORDER BY c.customer_id, co.order_id;