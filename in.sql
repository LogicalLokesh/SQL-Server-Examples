/**
  To check whether a value matches any value in a list of values or a sub-query, use the
  IN operator in SQL. It is utilised in the WHERE clause of a SELECT statement to filter
  the outcomes depending on a certain set of values. With the IN operator, we could create
  a condition that checks whether a value is present in a long list of potential values.
 */

-- Database setup
CREATE DATABASE collage;
GO
USE collage;

-- Create a new table for students
CREATE TABLE students
(
    id    INT PRIMARY KEY,
    name  VARCHAR(50),
    age   INT,
    city  VARCHAR(50),
    grade VARCHAR(2)
);

-- Insert some sample data
INSERT INTO students (id, name, age, city, grade)
VALUES (1, 'Rahul', 15, 'Mumbai', 'A'),
       (2, 'Kiran', 16, 'Delhi', 'B'),
       (3, 'Manisha', 14, 'Chennai', 'A'),
       (4, 'Amit', 17, 'Kolkata', 'C'),
       (5, 'Sneha', 15, 'Bangalore', 'B');

-- Get all students who are in grade A or B
SELECT *
FROM students
WHERE grade IN ('A', 'B');

-- Get all students who are from Delhi, Mumbai, or Bangalore
SELECT *
FROM students
WHERE city IN ('Delhi', 'Mumbai', 'Bangalore');

-- Get all students who are not in grade C
SELECT *
FROM students
WHERE grade NOT IN ('C');

-- Cleanup
USE master;
GO
DROP DATABASE collage;
