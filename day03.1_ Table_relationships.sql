--Understanding Table relasionships
--Tables are connected using common column called KEYS.

--WHY: I am learning this because real-world data is split across multiple tables.
--To combine tables correctly later (JOIN).
--I must first understand how tables are related.

--PROBLEM THIS SOLVES:
-- Each table stores only part of the information.
-- Relationships tell us how data in one table connects to another.

--Table Creation

--Customer table: stores WHO is buying
CREATE TABLE customers(
  customer_id INTEGER PRIMARY KEY,
  customer_name TEXT,
  city TEXT
  );

--Product table: stores WHAT is being sold
CREATE TABLE products(
  product_id INTEGER PRIMARY KEY,
  product_name TEXT,
  category TEXT
  price REAL
  );

-- Orders table: stores WHAT HAPPENED
-- This table connects customer and products
CREATE TABLE orders(
  order_id INTEGER PRIMARY KEY,
  customer_id INTEGER,
  product_id INTEGER,
  quantity INTEGER
  );

--KEY CONCEPTS (VERY IMPORTANT)

--PRIMARY KEY: A column that uniquely identifies each row in a table.
--Example: customers.customer_id identifies one customer only

--FOREIGN KEY: A column that refers/stores the primary key of another table
--Example: orders.customer_id refers to customers.customer_id
--Example: orders.product_id refers to products.product_id

--VERY IMPORTANT SENTENCE
--Primary keys identify rows.
--Foreign keys connect tables.

----------------------------------------------------------------------------------
--Relationships in this datasets
----------------------------------------------------------------------------------

--Relationship 1:
--customers.customer_id  >>PRIMARY KEY
--orders.customer_id   >>>FOREIGN KEY
--Meaning: each order belongs to one customer.

--Relationship 2:
--products.product_id  >>PRIMARY KEY
--orders.product_id   >>FOREIGN KEY
--Meaning: each order refers to one product

----------------------------------------------------------------------------------
--Simple Explanation
----------------------------------------------------------------------------------

--Databases split data to avoid repetition.
--Each table has a primary key to unique identify rows.
--Other tables store those keys as foreign keys.
--These key allow tables to be connected using JOIN.

--cutomers.customer_id >> PRIMARY KEY
--orders.customer_id >> FOREIGN KEY

--Relationship:
--orders.customer_id = customer.customer_id

--Tables don't talk directly.
--They talk using common columns (keys).
