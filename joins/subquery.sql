SELECT * FROM orders 
    WHERE customer_id = (
        SELECT id FROM customers
            WHERE last_name = "George"
    );
