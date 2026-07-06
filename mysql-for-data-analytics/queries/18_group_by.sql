-- =============================================
-- Lesson: GROUP BY
-- Course: MySQL for Data Analytics
-- Date: July 6th, 2026
-- =============================================

USE bakery;

SELECT *
FROM customer_orders;

SELECT customer_id, SUM(tip)
FROM customer_orders
GROUP BY customer_id;

SELECT product_id, AVG(order_total)
FROM customer_orders
GROUP BY product_id;