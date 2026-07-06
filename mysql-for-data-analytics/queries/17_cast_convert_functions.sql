-- =============================================
-- Lesson: CAST and CONVERt Functions
-- Course: MySQL for Data Analytics
-- Date: July 5th, 2026
-- =============================================

# Both CAST and CONVERT functions are used to convert a value from one data type to another. However, there is a slight difference in their syntax and usage.

# CAST(expression as type)
# CONVERT(expression, type)

USE bakery;

SELECT birth_date,
CAST(birth_date AS DATETIME),
CONVERT(birth_date, DATETIME)
FROM customers;

SELECT first_name,
CAST(first_name AS CHAR)
FROM customers;
