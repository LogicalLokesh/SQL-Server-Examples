/**
  The SELECT keyword  is the basic and most used statement in the SQL.
  It is used to retrieve data from one or more database tables. It designates
  certain rows and columns to acquire from a table or collection of tables
 */

-- Database setup
CREATE DATABASE company;
GO
USE company;
GO

-- Create a sample table
CREATE TABLE employees
(
    id     INT,
    name   VARCHAR(255),
    age    INT,
    salary FLOAT
);

-- Insert few values into table
INSERT INTO employees (id, name, age, salary)
VALUES (1, 'Sachin', 25, 50000),
       (2, 'Rahul', 30, 60000),
       (3, 'Amir', 35, 70000),
       (4, 'Rohan', 40, 80000),
       (5, 'Kajal', 45, 90000);

-- Get the all data of the employees
SELECT *
FROM employees;

-- Get the id and names of the employees
SELECT id, name
FROM employees;

-- Get the id and salary of the employees
SELECT id, salary
FROM employees;

-- Cleanup
USE master;
DROP DATABASE company;
