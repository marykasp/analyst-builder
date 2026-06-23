-- =============================================
-- Lesson: Date and Time Functions
-- Course: MySQL for Data Analytics
-- Date: June 23, 2026
-- =============================================

USE bakery;

-- built in date and time functions to return current date and time
SELECT NOW(), 
CURDATE(),
CURTIME();


SELECT YEAR(NOW()),
MONTH(NOW()),
DAY(NOW());

SELECT *
FROM customers
WHERE YEAR(birth_date) = YEAR(NOW());

SELECT *
FROM customer_orders
WHERE YEAR(order_date) = YEAR(NOW());

-- DAYNAME takes the current date and returns the day name
SELECT DAYNAME(NOW());

SELECT order_date, DAYNAME(order_date) AS week_day_name, MONTHNAME(order_date) AS month
FROM customer_orders;

-- DATE_FORMAT formats date as specified
SELECT birth_date, DATE_FORMAT(birth_date, '%M %d %Y')
FROM customers;

SELECT birth_date, DATE_FORMAT(birth_date, '%m-%d-%Y')
FROM customers;