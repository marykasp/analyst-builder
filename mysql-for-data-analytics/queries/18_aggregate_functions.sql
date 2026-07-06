-- =============================================
-- Lesson: Aggregate Functions
-- Course: MySQL for Data Analytics
-- Date: July 6th, 2026
-- =============================================

USE bakery;

SELECT *
FROM customer_orders;

SELECT customer_id, COUNT(tip) AS count_of_tips
FROM customer_orders
GROUP BY customer_id
ORDER BY count_of_tips DESC;

-- NULL values are not counted by COUNT(): will return 0 for null values
SELECT first_name, last_name, COUNT(phone)
FROM customers
GROUP BY first_name, last_name;

-- DISTINCT will only count unique values
SELECT product_id, COUNT(tip), COUNT(DISTINCT tip) AS count_of_real_tips
FROM customer_orders
GROUP BY product_id;

-- DISTINCT will not count any duplicates
SELECT product_id, tip, COUNT(tip), COUNT(distinct tip)
FROM customer_orders
GROUP BY product_id, tip
ORDER BY product_id;