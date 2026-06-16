-- =============================================
-- Lesson: Between Operator - inclusive
-- Course: MySQL for Data Analytics
-- Date: June 16, 2026
-- =============================================

USE bakery;

-- Inclusive
SELECT *
FROM customers
WHERE total_money_spent BETWEEN 500 AND 1009;

-- same query using logical operator and conditionals
SELECT *
FROM customers
WHERE total_money_spent >= 500 AND total_money_spent <= 1009;