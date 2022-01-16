# only select rows where userid = customerid

# SELECT * FROM customers,orders WHERE id = customer_id; - error: column id is ambiguous

# hence pre-pend the table name before the column name //only take overlapping conditions
# join data based on a condition
# IMPLICIT INNER JOIN
SELECT * FROM customers,orders 
	WHERE customers.id = orders.customer_id;

SELECT first_name,last_name,order_date,amount FROM customers,orders 
	WHERE customers.id = orders.customer_id;

# EXPLICIT INNER JOIN
SELECT * FROM customers 
JOIN orders 
	ON customers.id = orders.customer_id;

SELECT first_name,last_name,order_date,amount FROM customers 
JOIN orders 
	ON customers.id = orders.customer_id;
	
SELECT first_name,last_name,order_date,amount FROM orders
JOIN customers
	ON orders.customer_id = customers.id;
	
# arbitrary example
SELECT * FROM customers
JOIN orders 
	ON customers.id = orders.customer_id;
