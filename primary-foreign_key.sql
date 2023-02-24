-- Primary Keys

/**
  In a relational database table, a primary key is a column or group of columns that uniquely
  identifies each entry. It is used to maintain entity integrity, which ensures that each
  row in the table is uniquely recognised and that no duplicate rows exist. In most circumstances,
  a unique index or constraint is used to verify that the main key is unique and cannot include
  null values. The primary key is a critical concept in database architecture since it is used
  to build associations between tables, ensure referential integrity, and enhance database performance.
 */

-- Database setup
CREATE DATABASE company;
GO
USE company;

-- 1. Single-column primary key:
CREATE TABLE developers
(
    id      INT PRIMARY KEY,
    name    VARCHAR(50),
    age     INT,
    address VARCHAR(100)
);

/**
  In this example, the id column is the primary key for the developers table. Each row in the
  table is uniquely identified by its id value.
 */

-- 2. Multi-column primary key:
CREATE TABLE orders
(
    order_id    INT,
    customer_id INT,
    order_date  DATE,
    PRIMARY KEY (order_id, customer_id)
);

/**
  In this example, the orders table has a multi-column primary key consisting of order_id
  and customer_id. This means that each combination of order_id and customer_id values must
  be unique within the table.
 */

-- 3. Composite primary key:
CREATE TABLE books
(
    title  VARCHAR(100),
    author VARCHAR(100),
    genre  VARCHAR(13),
    PRIMARY KEY (title, author)
);

/**
  In this example, the books table has a composite primary key consisting of title and author.
  This means that each combination of title and author values must be unique within the table.
 */

-- 4. Surrogate primary key:
CREATE TABLE employees
(
    employee_id INT PRIMARY KEY,
    first_name  VARCHAR(50),
    last_name   VARCHAR(50),
    hire_date   DATE
);

/**
  In this example, the employees table has a surrogate primary key consisting of the employee_id
  column. The employee_id values are generated automatically by the database management system
  and are used to uniquely identify each row in the table.
 */

-- Foreign Keys

/**
  A foreign key is a column or combination of columns in a relational database table that
  relates to another table's primary key. It is used to build a relationship between two
  tables and to ensure their referential integrity. The foreign key in one table is the
  primary key in another, therefore it contains values that correspond to the primary key
  values in the associated table. This allows data to be connected and accessible across
  different tables while also ensuring data consistency in the related tables.
 */

-- Example:

/**
  Here is an example of a simple database with three tables: customers, orders, and order_items.
  The customers table stores information about customers, the orders table stores information
  about orders, and the order_items table stores information about items in each order.
 */

-- Create the customers table
CREATE TABLE customers
(
    customer_id INT PRIMARY KEY,
    first_name  VARCHAR(50),
    last_name   VARCHAR(50),
    email       VARCHAR(50)
);

-- Create the orders table
CREATE TABLE orders
(
    order_id     INT PRIMARY KEY,
    customer_id  INT,
    order_date   DATE,
    total_amount DECIMAL(10, 2),
    FOREIGN KEY (customer_id) REFERENCES customers (customer_id)
);

-- Create the order_items table
CREATE TABLE order_items
(
    order_id     INT,
    product_name VARCHAR(50),
    quantity     INT,
    price        DECIMAL(10, 2),
    PRIMARY KEY (order_id, product_name),
    FOREIGN KEY (order_id) REFERENCES orders (order_id)
);

-- Insert some data into the customers table
INSERT INTO customers (customer_id, first_name, last_name, email)
VALUES (1, 'Sachin', 'Tendulkar', 'sachin@example.com'),
       (2, 'Virat', 'Kohli', 'virat@example.com'),
       (3, 'Rohit', 'Sharma', 'rohit@example.com');

-- Insert some data into the orders table
INSERT INTO orders (order_id, customer_id, order_date, total_amount)
VALUES (1, 1, '2022-01-01', 1000.00),
       (2, 2, '2022-01-02', 2500.00),
       (3, 3, '2022-01-03', 5000.00),
       (4, 1, '2022-01-04', 1500.00),
       (5, 2, '2022-01-05', 3000.00);

-- Insert some data into the order_items table
INSERT INTO order_items (order_id, product_name, quantity, price)
VALUES (1, 'Product A', 2, 500.00),
       (1, 'Product B', 3, 100.00),
       (2, 'Product A', 1, 2500.00),
       (3, 'Product C', 5, 1000.00),
       (4, 'Product B', 1, 1500.00),
       (5, 'Product A', 2, 1500.00);

-- Get all orders for a specific customer
SELECT *
FROM orders
WHERE customer_id = 1;


-- Cleanup
USE master;
Go
DROP DATABASE company;
