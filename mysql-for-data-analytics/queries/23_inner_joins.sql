-- =============================================
-- Lesson: 23: Inner Joins
-- Course: MySQL for Data Analytics
-- Date: July 16th, 2026
-- =============================================

USE bakery;

# INNER JOIN type of join that returns the rows from both tables where there is a match based on the 
# the specified condition. If there is no match, no rows will be returned.

SELECT *
FROM customers;

SELECT *
FROM customer_orders;

SELECT *
FROM customers c
INNER JOIN customer_orders co
	ON c.customer_id = co.customer_id
ORDER BY c.customer_id;

SELECT *
FROM products;

SELECT *
FROM customer_orders;

SELECT product_name, SUM(order_total) AS total
FROM products p
INNER JOIN customer_orders co
	ON p.product_id = co.product_id
GROUP BY product_name
ORDER BY 2;

SELECT *
FROM suppliers;

SELECT *
FROM ordered_items;

SELECT *
FROM suppliers s
INNER JOIN ordered_items oi
	ON s.supplier_id = oi.shipper_id;