--22. Generate a report showing each stores total sales, number of orders and average order value.

SELECT orders.store_id,
     ROUND( SUM (quantity * (list_price - discount))) AS total_sales, 
     COUNT( DISTINCT oi.order_id) AS total_orders,
     store_name,
    ROUND(SUM (quantity * (list_price - discount)) /COUNT(DISTINCT oi.order_id)) AS avg_order_value
FROM order_items AS oi

LEFT JOIN orders ON oi.order_id = orders.order_id
LEFT JOIN stores ON orders.store_id = stores.store_id
GROUP BY 1,4;

