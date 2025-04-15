--20. Determine the staff member who has processed the most orders.

SELECT COUNT(DISTINCT order_items.order_id )AS total_orders,
       orders.staff_id,
       first_name,
       last_name
FROM products

LEFT JOIN order_items ON products.product_id = order_items.product_id
LEFT JOIN orders ON order_items.order_id=orders.order_id
LEFT JOIN staffs ON orders.staff_id = staffs.staff_id

WHERE order_items.order_id IS NOT NULL
GROUP BY 2,3,4
ORDER BY total_orders DESC;




