-- =============================================
-- Lesson: IF function
-- Course: MySQL for Data Analytics
-- Date: June 24, 2026
-- =============================================

# IF(condition, condition is true do this, condition is false do this)

SELECT *
FROM customer_orders;

SELECT tip,
IF(tip > 1, 'Amazing!', 'Cheap..')
FROM customer_orders;


SELECT order_total,
tip,
IF(tip > 2, order_total * .75, order_total * 1.1) as new_total
FROM customer_orders;