--9. List customers who have placed an order, along with their order IDs.

SELECT orders.customer_id,
       first_name,
       last_name,
       order_id
FROM orders

LEFT JOIN customers ON orders.customer_id=customers.customer_id;

