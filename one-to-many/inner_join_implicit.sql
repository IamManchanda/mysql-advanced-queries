SELECT * FROM customers, orders
    WHERE customers.id = orders.customer_id;
