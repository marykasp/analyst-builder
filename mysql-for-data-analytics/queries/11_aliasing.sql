-- =============================================
-- Lesson: Alias
-- Course: MySQL for Data Analytics
-- Date: June 16, 2026
-- =============================================

USE bakery;

SELECT product_name AS 'Goodie name', units_in_stock 'uis'
FROM products;

SELECT p.units_in_stock * p.sale_price AS potential_revenue
FROM products p;