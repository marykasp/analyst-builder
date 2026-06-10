-- =============================================
-- Lesson: WHERE clause
-- Course: MySQL for Data Analytics
-- Date: June 10, 2026
-- =============================================alter
USE bakery;

-- filter records/rows of data that meet a specified condition

-- filter rows on total_money_spent
SELECT *
FROM customers
WHERE total_money_spent > 3000;

-- filter on string data type city
SELECT *
FROM customers
WHERE city = 'Scranton';

-- filter on date column
SELECT *
FROM customers
WHERE birth_date > '1985-01-01';

-- filter products on units in stock
SELECT *
FROM products
WHERE units_in_stock < 30;