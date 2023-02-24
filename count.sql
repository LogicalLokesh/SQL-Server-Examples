/**
  The COUNT SQL keyword is used to return the number of rows or non-null values in
  a table that satisfy a given criteria. It frequently works in tandem with the
  SELECT statement to retrieve data from a table and determine how many rows meet
  a specific requirement.
 */

-- Database setup
CREATE DATABASE collage;
GO
USE collage;
GO

-- Create a sample table
CREATE TABLE students
(
    id   INT,
    name VARCHAR(50),
    age  INT,
    city VARCHAR(50)
);

-- Populate the table
INSERT INTO students (id, name, age, city)
VALUES (1, 'Aarav', 20, 'Mumbai'),
       (2, 'Aditi', 19, 'Delhi'),
       (3, 'Aryan', 21, 'Chennai'),
       (4, 'Divya', 18, 'Bangalore'),
       (5, 'Gaurav', 22, 'Hyderabad'),
       (6, 'Kavya', 20, 'Kolkata'),
       (7, 'Neha', 19, 'Pune'),
       (8, 'Rahul', 21, 'Ahmedabad'),
       (9, 'Sneha', 22, 'Jaipur'),
       (10, 'Tanvi', 18, 'Surat');

-- This will get the count of the student ids
SELECT COUNT(id)
FROM students;

-- This will get the the number of cities
SELECT COUNT(city)
FROM students;

-- Cleanup
USE master;
DROP DATABASE collage;