/* The video show's more complex stuff but it doesn't match our current dataset so not performing those queries */

SELECT * FROM customers
    RIGHT JOIN orders
        ON customers.id = orders.customer_id;
