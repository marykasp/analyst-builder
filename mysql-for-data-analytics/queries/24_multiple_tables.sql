-- =============================================
-- Lesson: 24: Joining Multiple Tables
-- Course: MySQL for Data Analytics
-- Date: July 17th, 2026
-- =============================================

USE bakery;

SELECT product_name, order_total, first_name
FROM products p
JOIN customer_orders co
	ON p.product_id = co.product_id
JOIN customers c
	ON co.customer_id = c.customer_id;
    
SELECT p.product_id, co.product_id, co.customer_id, c.customer_id
FROM products p
JOIN customer_orders co
	ON p.product_id = co.product_id
JOIN customers c
	ON co.customer_id = c.customer_id;