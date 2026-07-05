-- =============================================
-- Lesson: CASE statements
-- Course: MySQL for Data Analytics
-- Date: July 5th, 2026
-- =============================================

USE bakery;

# Conditional control flow structure that allows you to perform conditional logic with multiple comparisons


# CASE expression
-- WHEN value1 THEN result1
-- WHEN value2 THEN result2
-- ELSE else reult



SELECT * 
FROM products;

SELECT units_in_stock,
CASE
	WHEN units_in_stock < 20 THEN 'ORDER NOW!'
    WHEN units_in_stock BETWEEN 21 AND 50 THEN 'Check in 3 days'
    ELSE 'In Stock'
END AS 'Order Status'
FROM products;

SELECT order_id,
order_date,
CASE
	WHEN YEAR(order_date) = YEAR(NOW()) - 4 THEN 'Active'
    WHEN YEAR(order_date) = YEAR(NOW()) - 5 THEN 'Last Year'
    ELSE 'Archived'
END as 'Years'
FROM customer_orders;