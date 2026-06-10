-- =============================================
-- Lesson: SELECT Basics
-- Course: MySQL for Data Analytics
-- Date: June 10, 2026
-- =============================================

USE bakery;

-- SELECT certain columns
SELECT first_name, 
last_name, 
birth_date, 
phone, 
city, 
state,
total_money_spent,
total_money_spent + 100
FROM customers;

-- SELECT DISTINCT columns - remove duplicates
SELECT DISTINCT state
FROM customers;

-- SELECT unique values with city first
SELECT DISTINCT city, state
FROM customers;