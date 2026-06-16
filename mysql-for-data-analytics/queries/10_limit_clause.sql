-- =============================================
-- Lesson: LIMIT clause
-- Course: MySQL for Data Analytics
-- Date: June 16, 2026
-- =============================================

USE bakery;

SELECT *
FROM customers
WHERE total_money_spent > 10000
LIMIT 5;

SELECT *
FROM customers
-- WHERE total_money_spent > 10000
ORDER BY total_money_spent DESC
LIMIT 5;

-- LIMIT with two values - first is position, and second is number of rows returned total
SELECT *
FROM customers
-- WHERE total_money_spent > 10000
ORDER BY total_money_spent DESC
LIMIT 5, 2;