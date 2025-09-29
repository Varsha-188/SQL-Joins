SQL Joins (Inner, Left, Right, Full)
This project completes Task 5 of the SQL Developer Internship, focusing on mastering the concepts and practical application of SQL Joins. The primary objective was to learn how to effectively combine data from multiple tables using the four main types of joins: INNER, LEFT, RIGHT, and FULL JOIN.
The tool used for database implementation and query execution was MySQL Workbench.
To demonstrate the different join types, two related tables were created: Customers and Orders.
The core deliverable was a set of SQL queries demonstrating each of the required join types. The queries are structured to highlight the specific behavior of each join, particularly for rows with and without matching data.

1. INNER JOIN
Purpose: Returns only the rows that have matching values in both the Customers and Orders tables.

2. LEFT JOIN
Purpose: Returns all rows from the left table (Customers) and the matching rows from the right table (Orders). If no match exists, NULL values are returned for the right side.

3. RIGHT JOIN
Purpose: Returns all rows from the right table (Orders) and the matching rows from the left table (Customers). If no match exists, NULL values are returned for the left side.

4. FULL OUTER JOIN
Purpose: Returns all rows when there is a match in either one of the tables.
