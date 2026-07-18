-- =============================================
-- Lesson: 25: Joining On Multiple Conditions
-- Course: MySQL for Data Analytics
-- Date: July 18th, 2026
-- =============================================

USE bakery;

SELECT *
FROM customer_orders;

SELECT *
FROM customer_orders_review;

-- the customer order ids are incorrect in the review table since users entered in those values without a check
SELECT *
FROM customer_orders co
JOIN customer_orders_review cor
	ON co.order_id = cor.order_id;
    
-- join tables on multiple conditions
SELECT *
FROM customer_orders co
JOIN customer_orders_review cor
	ON co.order_id = cor.order_id
    AND co.customer_id = cor.customer_id
    AND co.order_date = cor.order_date;