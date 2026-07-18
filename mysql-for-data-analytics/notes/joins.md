#JOINS

As a data analyst, you'll often work with data that's stored in relational databases, so understanding and using joins is a critical skill. This is because the data you need is almost never just in one table.

If you try to put all your data in one table you would have a lot of data quality issues like redundant data, data duplication, and it would be extremely inefficient.

Due to this, data architects, data engineers, and database developers design the schemas in databases to store data effectively. This is why we need to use joins as analysts. We can choose what data we need from the tables we need and bring them all into one output.

# INNER JOIN

An INNER JOIN in SQL is a type of join that returns the rows from both tables where there is a match based on the specified condition. If there is no match, no rows will be returned.

Basic Syntax:

```sql
SELECT column_name(s)
FROM table1
INNER JOIN table2
ON table1.column_name = table2.column_name;
```

This is probably the most commonly used type of join that you’ll use.

# OUTER JOIN

An OUTER JOIN in SQL is a type of join that returns all the rows from one table and the matched rows from another table. If there is no match, the result is NULL on the side of the table that doesn't have a match.

# LEFT OUTER JOIN

There is an LEFT OUTER JOIN which will return everything from the “Left” table (or the table in the FROM statement.

```sql
SELECT column_name(s)
FROM table1
LEFT OUTER JOIN table2
ON table1.column_name = table2.column_name;
```

Here, table1 is the LEFT table and table2 is the RIGHT table.

# RIGHT OUTER JOIN

There is an RIGHT OUTER JOIN which will return everything from the “Right” table (or the table in the RIGHT OUTER JOIN statement).

```sql
SELECT column_name(s)
FROM table1
RIGHT OUTER JOIN table2
ON table1.column_name = table2.column_name;
```

# SELF JOIN

A SELF JOIN in SQL is a type of join where a table is joined to itself. It isn’t an actual built-in join like an INNER JOIN or OUTER JOIN, but rather a technique where you can join a table to itself as if it were two tables.

Syntax:
SELECT a.column_name, b.column_name
FROM table_name AS a
JOIN table_name AS b
ON a.common_field = b.common_field;
