-- =============================================
-- Lesson: Like Operator - not case senstive
-- Course: MySQL for Data Analytics
-- Date: June 16, 2026
-- =============================================

-- % - zero, one, or multiple characters
-- _ - single character

USE bakery;

-- SELECT customers whose first name starts with K
SELECT *
FROM customers
WHERE first_name LIKE 'K%';

-- SELECT customers whose first name ends with n
SELECT *
FROM customers
WHERE first_name LIKE '%n';

-- SELECT first name where n is anywhere in the string
SELECT *
FROM customers
WHERE first_name LIKE '%n%';

-- underscore _ represents a single character, used when want to find strings of a specific length
SELECT *
FROM customers
WHERE first_name LIKE '__n';

SELECT *
FROM customers
WHERE phone LIKE '975%';