/**
  The WHERE keyword is used in SQL to indicate a filter condition that records must satisfy
  in order to be returned or updated/deleted in a SELECT, UPDATE, or DELETE statement.
  In the statement, the WHERE clause comes after the table name and normally includes
  one or more conditional expressions that can be combined using logical operators like
  AND and OR to form more sophisticated conditions. The WHERE clause is optional, but a
  SELECT operation without it retrieves all rows in the table.
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

-- Get the first names, and id of the employees whose favorite color is Red.
SELECT first_name, id
FROM employees
WHERE favorite_color = 'Red';

-- Get the first names, and id of the employees who are developers.
SELECT first_name, id
FROM employees
WHERE post_info = 'Developer';

-- Get all data of the employees who has salary higher than 50,000,
-- using greater than operator.
SELECT *
FROM employees
WHERE salary > 50000;

-- Get the email of the employee named Ravi Kumar, using AND.
SELECT email
FROM employees
WHERE first_name = 'Ravi'
  AND last_name = 'Kumar';

-- Get the ids of the employees having grade A or B, using OR.
SELECT *
FROM employees
WHERE grade = 'A'
   OR grade = 'B';

-- Cleanup
USE master;
GO
DROP DATABASE company;