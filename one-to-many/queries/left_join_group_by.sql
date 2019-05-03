SELECT
    first_name, 
    last_name,
    email,
    IFNULL(SUM(amount), 0) AS total_spent,
    customer_id
FROM customers
    LEFT JOIN orders
        ON customers.id = orders.customer_id
    GROUP BY customers.id
    ORDER BY total_spent DESC;
