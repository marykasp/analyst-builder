-- =============================================
-- Lesson: Comparison Operators
-- Course: MySQL for Data Analytics
-- Date: June 10, 2026
-- =============================================
USE bakery;
-- =, !=, <>, >, <

SELECT *
FROM customer_orders;

-- Comparison operator equal to = 
SELECT *
FROM customer_orders
WHERE tip = 1;

-- Comparison operator not equal to !=, <>
SELECT *
FROM customer_orders
WHERE tip != 1;

-- Comparison operator greater than >, >=
SELECT *
FROM customer_orders
WHERE tip >= 5;

-- Comparison operator less than >, <=
SELECT *
FROM customer_orders
WHERE tip <= 5;