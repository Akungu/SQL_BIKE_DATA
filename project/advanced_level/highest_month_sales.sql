--18. Find the month with the highest sales.

SELECT EXTRACT(MONTH FROM order_date) AS order_month,
      SUM (quantity * list_price) AS total_sales
FROM order_items

LEFT JOIN orders ON order_items.order_id = orders.order_id
GROUP BY order_month
ORDER BY total_sales DESC;