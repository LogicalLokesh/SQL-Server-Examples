/**
  The DISTINCT keyword is used to limit the result set to only values that are
  distinct from one another. The database engine is told to remove all duplicate rows and
  only return the distinct rows when the DISTINCT keyword is used with a SELECT command.
  It operates by comparing the chosen columns and removing the rows with similar values
  across all chosen columns. Hence, only distinct or different values of the given columns
  will be present in the result set.
 */

-- Database setup
CREATE DATABASE company;
GO
USE company
GO

-- Create a sample table for employees
CREATE TABLE employees
(
    id             INT PRIMARY KEY ,
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


-- Get the distinct first names of the employees
SELECT DISTINCT first_name
FROM employees;

-- Get the distinct names of the colors from the table
SELECT DISTINCT favorite_color
FROM employees

-- Get the distinct grades from the table
SELECT DISTINCT grade
FROM employees

-- Cleanup
USE master;
GO
DROP DATABASE company;