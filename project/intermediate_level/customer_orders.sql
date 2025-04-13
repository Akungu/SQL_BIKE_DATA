--13. List orders along with customers names and order dates.

SELECT orders.order_id,
       orders.customer_id,
       first_name,
       last_name,
       order_date
FROM orders

LEFT JOIN customers ON orders.customer_id = customers. customer_id;