SELECT * FROM orders;

# find orders placed by Boy George 
SELECT * FROM customers WHERE last_name = 'George';
SELECT * FROM orders WHERE customer_id=1;

# combining above 2 queries
SELECT * FROM orders WHERE customer_id=
    (
        SELECT id FROM customers WHERE last_name='George'
    )
;

# USING CROSS JOIN - jamming each combination 
SELECT * FROM customers,orders;

