-- Cross Joins

SELECT * FROM customers, orders; -- Combines all the columns of both the tables with each other. This type of join is not commonly used.

-- Inner Join

SELECT * FROM customers
JOIN orders ON orders.customer_id = customers.id;

SELECT * FROM orders
JOIN customers ON customers.id = orders.customer_id;

-- Inner Join with Group by

SELECT first_name, last_name, SUM(amount) AS total FROM customers
JOIN orders ON orders.customer_id = customers.id
GROUP BY first_name, last_name
ORDER BY total;