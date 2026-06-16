-- =============================================
-- Lesson: Between Operator - inclusive
-- Course: MySQL for Data Analytics
-- Date: June 16, 2026
-- =============================================

USE bakery;

-- Inclusive between low range and high range
SELECT *
FROM customers
WHERE total_money_spent BETWEEN 500 AND 1009;

-- same query using logical operator and conditionals
SELECT *
FROM customers
WHERE total_money_spent >= 500 AND total_money_spent <= 1009;

-- low and high range for birth date
SELECT *
FROM customers
WHERE birth_date BETWEEN '1990-01-01' AND '2020-01-01';

-- low and high range alphabetically
SELECT *
FROM customers
WHERE city BETWEEN 'Austin' AND 'Scranton';