--23. Use a window function to to calculate runnig totals of sales per store.

SELECT s.store_name, o.order_date,
 SUM(oi.list_price * oi.quantity) OVER (
 PARTITION BY s.store_name ORDER BY o.order_date
 ) AS running_total
FROM orders o
JOIN order_items oi ON o.order_id = oi.order_id
JOIN stores s ON o.store_id = s.store_id;