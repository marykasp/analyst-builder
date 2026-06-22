-- =============================================
-- Lesson: Numeric Functions
-- Course: MySQL for Data Analytics
-- Date: June 22, 2026
-- =============================================alter

USE bakery;

SELECT *
FROM products;

-- ROUND function
SELECT sale_price, ROUND(sale_price, 1)
FROM products;

-- CEILING rounds to nearest whole number, rounds up
SELECT CEILING(sale_price) AS round_up
FROM products;

-- FLOOR rounds to nearest whole number, rounds down
SELECT FLOOR(sale_price) AS round_down
FROM products;

-- Round sale price to nearest whole number
SELECT sale_price, CEILING(sale_price), FLOOR(sale_price)
FROM products;