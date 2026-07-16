-- =============================================
-- Lesson: 22: Joins
-- Course: MySQL for Data Analytics
-- Date: July 10th, 2026
-- =============================================

USE bakery;

-- combines tables together and then can query
-- used to combine rows from two or more tables based on related column (primary and foreign key)
-- several types of joins: INNER, OUTER, CROSS, and SELF



# Primary vs Foreign Key
-- Primary key is a column that is used to uniquely identify each row in table
-- Foreign key is a column in a table that refers to the Primary key in another table
	-- used to establish a relationship between two tables to ensure referential integrity
    
# Inner Joins
-- returns records that have matching values in both tables - 
-- tables joined by a common column and only rows matching in each table's columsn are returned
SELECT *
FROM customers
INNER JOIN customer_orders
ON customers.customer_id = customer_orders.customer_id;

# Right Joins
-- returns all records from the right table and the matched records from the left
SELECT *
FROM customers
RIGHT JOIN customer_orders
ON customers.customer_id = customer_orders.customer_id;

# Left Join
-- Returns all records from the left table and gthe matched records from the right

# Full (Outer) Joins
-- returns all records from both tables: left and right table combined

# Self Join - table is joined to itself