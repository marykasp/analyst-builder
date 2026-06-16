-- =============================================
-- Lesson: IN operator
-- Course: MySQL for Data Analytics
-- Date: June 16, 2026
-- =============================================alter

USE bakery;

-- specify multiply values in WHERE clause, consecutive OR values
SELECT *
FROM customers
WHERE state IN ('PA', 'TX', 'IL');

SELECT *
FROM customers
WHERE first_name IN ('Kevin', 'Kelly', 'Frodo');

-- NOT IN, returns values not in the list
SELECT *
FROM customers
WHERE first_name NOT IN ('Kevin', 'Kelly', 'Frodo');