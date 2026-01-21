-- WHY: I am learning INNER JOIN because data is stored in separate tables.
-- INNER JOIN allows me to combine related data see meaningful information in one result.

-- Inner JOIN answers questions like:
-- who bought what?
-- which customer places which order?

-- Table used ( customers, orders and products as experiment 3.1)

--What INNER JOIN does (very imp)
-- INNER JOIN combines rows from two tables 
-- ONLY  when matching values exist in both tables.
-- Rows without matches are excluded.

-- INNER JOIN = keep only common records from both tables

-----------------------------------------------------------------------------------------
-- Join customers + orders
-----------------------------------------------------------------------------------------
--Goal: Which cudomer placed which order
SELECT 
o.order_id,
c.customer_name,
o.quantity
FROM orders o
INNER JOIN customers c
ON o.customer_id = c.customer_id;
-----------------------------------------------------------------------------------------
-- Join Orders + Products
-----------------------------------------------------------------------------------------
-- Goal: Which product was ordered
SELECT 
o.order_id,
p.product_name,
p.price,
o.quantity
FROM orders o 
INNER JOIN products p 
ON o.product_id = p.product_id
-----------------------------------------------------------------------------------------
-- JOIN customers + products + orders
-----------------------------------------------------------------------------------------
-- Goal: See full order details: customer + product + price + quantity + total amount
SELECT 
c.customer_name,
p.product_name,
p.category,
o.quantity,
p.price,
(o.quantity * p.price) as total_amount
FROM orders o 
INNER JOIN customers c 
on o.customer_id = c.customer_id
INNER join products p 
on o.product_id =p.product_id;










