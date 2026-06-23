-- =============================================
-- Lesson: String Functions
-- Course: MySQL for Data Analytics
-- Date: June 23, 2026
-- =============================================

USE bakery;

SELECT *
FROM customers;

SELECT LENGTH('sky');

-- LENGTH returns the number of characters in a string
SELECT first_name, LENGTH(first_name) AS len_first
FROM customers
ORDER BY len_first;

-- UPPER returns string all uppercased, lower returns all lowercased
SELECT first_name, UPPER(first_name), LOWER(first_name)
FROM customers;

-- TRIM removes whitespace on right, left or both sides
SELECT TRIM(' sky  '), LTRIM('  sky'), RTRIM('  sky ');

-- return certain amount of characters from left OR right side
SELECT LEFT('Alexander', 4);

SELECT first_name, LEFT(first_name, 3), RIGHT(first_name, 3)
FROM customers;

-- SUBSTRING - specify starting point and how many characters want to remove from string
SELECT first_name, SUBSTRING(first_name, 2, 3)
FROM customers;

SELECT phone, SUBSTRING(phone, 1, 3) AS area_code, SUBSTRING(phone, 5, 3), SUBSTRING(phone, 9, 3)
FROM customers;

-- REPLACE replaces one character with another that is specified
SELECT first_name, REPLACE(first_name, 'a', 'z')
FROM customers;

-- LOCATE returns the index value of a character in a string
SELECT first_name, LOCATE('Mic', first_name)
FROM customers;

-- CONCAT concatenate strings together
SELECT CONCAT(first_name, ' ', last_name)
FROM customers;

SELECT phone,
SUBSTRING(phone, 1, 3),
SUBSTRING(phone, 5, 3),
SUBSTRING(phone, 9, 4),
CONCAT(SUBSTRING(phone,1,3), SUBSTRING(phone, 5, 3), SUBSTRING(phone, 9, 4))
FROM customers;
