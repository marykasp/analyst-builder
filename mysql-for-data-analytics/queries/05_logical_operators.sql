-- =============================================
-- Lesson: Logical Operators - AND, OR, NOT
-- Course: MySQL for Data Analytics
-- Date: June 15, 2026
-- =============================================

USE bakery;

-- Have to meet both conditions: AND
SELECT *
FROM customers
WHERE state = 'PA' AND total_money_spent > 1000;

-- WHERE either condition is true
SELECT *
FROM customers
WHERE state = 'PA' OR total_money_spent > 1000;

-- Checks if customer lives in PA OR Dallas, one of these conditions needs to be true
SELECT *
FROM customers
WHERE (state = 'PA' OR city = 'Dallas') AND total_money_spent > 1000;

-- Where a customer is in PA and total money spent is greater than 1000
-- OR patient birth date is after 1998
SELECT *
FROM customers
WHERE (state = 'PA' AND total_money_spent > 1000) OR birth_date > '1998-01-01';

-- NOT operator: customers not in state PA
SELECT *
FROM customers
WHERE NOT state = 'PA';

-- Where total money spent is less than 1000
SELECT *
FROM customers
WHERE NOT total_money_spent > 1000;

-- customers NOT included if they spent more than 1000 AND they lived in texas
SELECT *
FROM customers
WHERE NOT (total_money_spent > 1000 AND state = 'TX');
