SELECT first_name, last_name, order_date, amount 
FROM customers
JOIN orders
	ON customers.id = orders.customer_id
ORDER BY order_date;

SELECT first_name, last_name, order_date, SUM(amount) AS amount_spent 
FROM customers
JOIN orders
	ON customers.id = orders.customer_id
GROUP BY orders.customer_id
ORDER BY amount_spent DESC;

# INNER JOIN (WAY 2) 
SELECT * FROM customers
INNER JOIN orders 
	ON customers.id = orders.customer_id;
	
# LEFT JOIN 
SELECT * FROM customers
LEFT JOIN orders
	ON customers.id = orders.customer_id;

SELECT first_name,last_name,order_date,amount FROM customers
LEFT JOIN orders
	ON customers.id = orders.customer_id;
	
SELECT
	first_name,
	last_name,
	IFNULL(amount,0) AS amount_spent
FROM customers
LEFT JOIN orders 
	ON customers.id = orders.customer_id
GROUP BY customer_id ORDER BY amount_spent;
