-- WHY: Sometimes data is missing in one table.
-- LEFT JOIN helps us KEEP all rows from the table.
-- even if there is NO matching data in the second table.

-- INNER JOIN >>> keeps only matching rows
-- LEFT JOIN >>> keeps ALL rows from LEFT table

--INNER JOIN example:
-- Customer WITHOUT orders will be removed

SELECT 
o.order_id,
c.customer_name,
o.quantity
FROM orders o
INNER JOIN customers c
ON o.customer_id = c.customer_id;

--LEFT JOIN example:
-- Keep ALL customers, even if no orders exists

SELECT 
c.customer_id,
c.customer_name,
o.order_id
FROM customers c
LEFT JOIN orders o 
ON c.customer_id = o.customer_id;

-- Real use case
-- Find customers who have NOT placed any order

SELECT 
c.customer_id,
c.customer_name
FROM customer c
LEFT JOIN orders o
ON c.customer_id = o.customer_id
WHERE o.order_id IS NULL;

-- MEMORY: 
-- LEFT JOIN = keep everything from the left table





















