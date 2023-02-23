/**
  This script creates a database named "company" and a table named "employees" with columns
  for employee id, name, age, and salary. It also inserts some sample data into the table
  and performs a few SELECT queries on the data.
 */

CREATE DATABASE company;
GO
USE company;
GO

-- Create a sample table
CREATE TABLE employees
(
    id     INT PRIMARY KEY,
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

USE master;
DROP DATABASE company;
