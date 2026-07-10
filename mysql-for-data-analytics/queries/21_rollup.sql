-- =============================================
-- Lesson: 21: Rollup
-- Course: MySQL for Data Analytics
-- Date: July 7th, 2026
-- =============================================

USE bakery;

SELECT customer_id, SUM(tip) as total_tips
FROM customer_orders
GROUP BY customer_id;

# returns the sum of the aggregations
SELECT customer_id, SUM(tip) as total_tips
FROM customer_orders
GROUP BY customer_id WITH ROLLUP;

SELECT customer_id, COUNT(tip) as count_of_tips
FROM customer_orders
GROUP BY customer_id WITH ROLLUP;