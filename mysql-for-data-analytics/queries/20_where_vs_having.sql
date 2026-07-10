-- =============================================
-- Lesson: WHERE vs HAVING
-- Course: MySQL for Data Analytics
-- Date: July 6th, 2026
-- =============================================

USE bakery;

-- WHERE filters on individual rows before grouping occurs
-- HAVING filters results after grouping has taken place. it works on the results of grouping

SELECT *
FROM customer_orders;

SELECT customer_id, SUM(tip) AS total_tips
FROM customer_orders
GROUP BY customer_id
HAVING total_tips > 5;

SELECT customer_id, SUM(order_total) AS total
FROM customer_orders
GROUP BY customer_id
HAVING total > 10
ORDER BY 2 DESC;