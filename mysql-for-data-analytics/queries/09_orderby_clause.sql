-- =============================================
-- Lesson: ORDER BY clause
-- Course: MySQL for Data Analytics
-- Date: June 16, 2026
-- =============================================

USE bakery;

-- ORDER by first name in ascending order
SELECT *
FROM customers
ORDER BY first_name;

-- ORDER first by state ascending then by total money spent
SELECT *
FROM customers
ORDER BY state, total_money_spent DESC;

-- ORDER columns by position of columns- 8th column which is the state
SELECT *
FROM customers
ORDER BY 8 DESC, 9 ASC;