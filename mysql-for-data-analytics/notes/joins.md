#JOINS

As a data analyst, you'll often work with data that's stored in relational databases, so understanding and using joins is a critical skill. This is because the data you need is almost never just in one table.

If you try to put all your data in one table you would have a lot of data quality issues like redundant data, data duplication, and it would be extremely inefficient.

Due to this, data architects, data engineers, and database developers design the schemas in databases to store data effectively. This is why we need to use joins as analysts. We can choose what data we need from the tables we need and bring them all into one output.

# INNER JOIN

An INNER JOIN in SQL is a type of join that returns the rows from both tables where there is a match based on the specified condition. If there is no match, no rows will be returned.

Basic Syntax:
SELECT column_name(s)
FROM table1
INNER JOIN table2
ON table1.column_name = table2.column_name;
This is probably the most commonly used type of join that you’ll use.
