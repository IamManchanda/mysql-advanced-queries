SELECT
    first_name, 
    last_name,
    email,
    SUM(amount) AS total_spent,
    customer_id
FROM customers
    JOIN orders
        ON customers.id = orders.customer_id
    GROUP BY orders.customer_id
    ORDER BY total_spent DESC;
