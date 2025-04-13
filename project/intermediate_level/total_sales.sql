--8. Get the total sales (sum of item prices * quantity) for each store.

SELECT SUM(quantity * list_price) AS total_sales,
       store_name
FROM order_items

LEFT JOIN orders ON order_items.order_id=orders.order_id
LEFT JOIN stores ON orders.store_id=stores.store_id

GROUP BY store_name;