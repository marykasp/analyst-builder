# Group By SQL

- Group a set of rows into a set of summary rows based on the values in one or more columns
- Most often used in conjuction with aggregate functions like SUM, COUNT, MAX, MIN, and AVG which allow you to perform calculations on the grouped data

**Group By** is a really important concept in SQL. It allows you to aggregate rows of data and perform calculations on those aggregations.

Syntax Example:

```sql
SELECT column1, AVG(column2)
FROM table1
GROUP BY column1;
```

This is going to group similar rows from column1 while looking at the Average of column 2.

## HAVING vs. WHERE

WHERE and HAVING are both used to filter results, but they are used in different scenarios:

The WHERE clause is used to filter rows before any grouping or aggregation takes place. It works on the individual rows of the table.

The HAVING clause is used to filter results after grouping has taken place. It works on the results of the grouping.
