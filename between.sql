/**
  The BETWEEN operator is used to get data that falls inside a given range of values. It is most
  commonly used in a WHERE clause to define a range of values for a specific column.
  Basically, It is used to match the values against the range of the values.
  for example: the value BETWEEN low AND high.
 */

-- Database setup
CREATE DATABASE grocery_store;
GO
USE grocery_store;

-- Create a sample table for products
CREATE TABLE products
(
    id       INT,
    name     VARCHAR(50),
    price    DECIMAL(10, 2),
    quantity INT
);

-- Insert some sample data
INSERT INTO products (id, name, price, quantity)
VALUES (1, 'Apple', 100.00, 100),
       (2, 'Banana', 50.00, 200),
       (3, 'Orange', 150.00, 150),
       (4, 'Grapes', 200.00, 75),
       (5, 'Pineapple', 300.00, 50);

-- Get all products with price between Rs.100 and Rs.200
SELECT *
FROM products
WHERE price BETWEEN 100 AND 200;

-- Get all products with quantity between 50 and 100
SELECT *
FROM products
WHERE quantity BETWEEN 50 AND 100;

-- Get all products with price not between Rs.100 and Rs.200
SELECT *
FROM products
WHERE price NOT BETWEEN 100 AND 200;

-- Cleanup
USE master;
GO
DROP DATABASE grocery_store;
