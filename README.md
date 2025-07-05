# sql-procedures-functions-task8
SQL Developer Internship - Task 8: Stored Procedures and Functions
This repository contains my submission for the eighth SQL task, focusing on creating reusable SQL logic with Stored Procedures and Functions.

Project Summary
This project demonstrates how to modularize SQL code. The script was written for and tested in MySQL Workbench, as SQLite does not support these features.

The script performs the following actions:

Sets up the database: It creates a simple Books table and populates it with sample data.

Creates a Stored Procedure: It defines a procedure named GetBooksByAuthor that takes an author's name as input and returns a list of all books by that author.

Creates a Function: It defines a function named CalculateStockValue that takes a book's price and quantity as input and returns the total calculated stock value.

Demonstrates Usage: The script concludes by showing how to CALL the procedure and how to use the function in a SELECT statement.

Interview Questions & Answers
1. Difference between procedure and function?
The main difference is that a function must return a single value, whereas a procedure does not have to return a value. A procedure is called using the CALL statement, while a function is used directly within an expression or a SELECT statement.

2. What is IN/OUT parameter?

IN parameter: This is the default. It passes a value into a procedure or function, but any changes made to it inside the routine are not visible outside.

OUT parameter: This passes a value out of a procedure. The procedure can set or change the value of an OUT parameter, and that change will be visible to the calling program after the procedure finishes.

INOUT parameter: This is a combination of both. A value is passed in, can be modified, and the modified value is passed out.

3. Can functions return tables?
Yes, in many database systems (like SQL Server and PostgreSQL), you can create table-valued functions that return a result set, which can then be used in the FROM clause of a query just like a regular table.

4. What is RETURN used for?
The RETURN statement is used exclusively within a function to specify the single value that the function will send back to the caller.

5. How to call stored procedures?
You execute a stored procedure using the CALL statement, followed by the procedure's name and any required parameters in parentheses. Example: CALL MyProcedure(parameter1);.

6. What is the benefit of stored routines?
Stored routines (procedures and functions) offer several benefits:

Reusability: They allow you to write complex logic once and call it many times.

Performance: They are pre-compiled by the database, which can lead to faster execution.

Security: You can grant users permission to execute a procedure without giving them direct access to the underlying tables.

Reduced Network Traffic: Instead of sending long SQL queries over the network, you just send a short CALL statement.

7. Can procedures have loops?
Yes, most database systems provide procedural language extensions (like WHILE, LOOP, REPEAT) that allow you to implement loops and conditional logic (like IF/THEN/ELSE) inside stored procedures.

8. Difference between scalar and table-valued functions?
A scalar function returns a single value (e.g., a number, a string, a date). A table-valued function returns a complete table (a set of rows and columns).

9. What is a trigger?
A trigger is a special type of stored procedure that automatically runs when a specific event occurs on a table, such as an INSERT, UPDATE, or DELETE operation. They are often used to enforce complex business rules or maintain an audit trail.

10. How to debug stored procedures?
Debugging methods vary by database system, but common techniques include:

Adding SELECT statements inside the procedure to print the values of variables at different points.

Using dedicated database debugging tools provided by IDEs like MySQL Workbench or SQL Server Management Studio.

Logging errors and intermediate steps to a separate audit table.
