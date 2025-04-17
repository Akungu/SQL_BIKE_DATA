--17. Rank cutomers by their total spending.

SELECT order_items.order_id,
       first_name,
       last_name,
      SUM(quantity * (list_price - discount)) AS total_spent,

      RANK() OVER (ORDER BY   SUM(quantity * (list_price - discount)) DESC) AS rank

       
FROM order_items

LEFT JOIN orders ON order_items.order_id = orders.order_id
LEFT JOIN customers ON orders.customer_id = customers.customer_id
GROUP BY 1,2,3;