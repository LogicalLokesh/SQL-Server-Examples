/**
  A query's result set can be sorted using the SQL clause ORDER BY in either ascending (ASC)
  or descending (DESC) order depending on one or more columns. According to the provided
  column(s), which can be any column, it arranges the rows returned by a SELECT statement
  in a specific order. DESC can be used to sort in descending order instead of the
  ascending order that ORDER BY by default produces.
 */

-- Database setup
CREATE DATABASE company;
GO
USE company;

-- Create a sample table for employees
CREATE TABLE employees
(
    id             INT,
    first_name     VARCHAR(50),
    last_name      VARCHAR(50),
    age            INT,
    salary         FLOAT,
    favorite_color VARCHAR(50),
    grade          VARCHAR(50)
);

-- Populate the table with some values
INSERT INTO employees (id, first_name, last_name, age, salary, favorite_color, grade)
VALUES (1, 'Aarav', 'Kumar', 25, 50000, 'Blue', 'A+'),
       (2, 'Aditi', 'Singh', 30, 60000, 'Green', 'A-'),
       (3, 'Aryan', 'Sharma', 35, 70000, 'Red', 'B+'),
       (4, 'Divya', 'Patel', 40, 80000, 'Yellow', 'B-'),
       (5, 'Gaurav', 'Joshi', 45, 90000, 'Blue', 'A+');

-- We can use ORDER BY to get the first name in the ascending or descending order.
SELECT first_name
FROM employees
ORDER BY first_name ASC;

-- In the same way we can use the DESC to sort the salary in the descending order.
SELECT id, first_name, salary
FROM employees
ORDER BY salary DESC;

-- Cleanup
USE master;
GO
DROP DATABASE company;