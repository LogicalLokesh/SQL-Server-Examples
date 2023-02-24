/**
  The LIMIT command allows us to limit the number of rows returned for the query. It is useful
  if we don't want return every single row in a table, but only the top few rows to get an idea
  of the table layout.
  In SQL Server, the LIMIT keyword is not used. Instead, the SELECT statement is used with the
  TOP keyword to limit the number of rows returned by a query.
 */

-- Database setup
CREATE DATABASE company;
GO
USE company;

-- Create a sample table for employees
CREATE TABLE employees
(
    id             INT PRIMARY KEY ,
    first_name     VARCHAR(50),
    last_name      VARCHAR(50),
    age            INT,
    salary         FLOAT,
    favorite_color VARCHAR(50),
    post_info      VARCHAR(50),
    email          VARCHAR(50),
    grade          VARCHAR(50)
);

-- Populate the table with some values
INSERT INTO employees (id, first_name, last_name, age, salary, favorite_color, post_info, email, grade)
VALUES (1, 'Aarav', 'Kumar', 25, 50000, 'Blue', 'Developer', 'aarav.kumar@example.com', 'A+'),
       (2, 'Aditi', 'Singh', 30, 60000, 'Green', 'Manager', 'aditi.singh@example.com', 'A-'),
       (3, 'Aryan', 'Sharma', 35, 70000, 'Red', 'Developer', 'aryan.sharma@example.com', 'B+'),
       (4, 'Divya', 'Patel', 40, 80000, 'Yellow', 'Designer', 'divya.patel@example.com', 'B-'),
       (5, 'Gaurav', 'Joshi', 45, 90000, 'Blue', 'Developer', 'gaurav.joshi@example.com', 'A+'),
       (6, 'Ravi', 'Kumar', 30, 55000, 'Red', 'Developer', 'ravi.kumar@example.com', 'A');

-- Get the first 3 employees with the highest salary
SELECT TOP 3 first_name, last_name, salary
FROM employees
ORDER BY salary DESC;

-- Get the first 2 employees who are developers and have a grade of A+
SELECT TOP 2 first_name, last_name, post_info, grade
FROM employees
WHERE post_info = 'Developer'
  AND grade = 'A+';

-- Get the oldest employee who is not a manager
SELECT TOP 1 first_name, last_name, age, post_info
FROM employees
-- Here the <> sign means not equal to. we can also use NOT LIKE.
WHERE post_info <> 'Manager'
ORDER BY age DESC;

-- Cleanup
Use master;
GO
DROP DATABASE company;
