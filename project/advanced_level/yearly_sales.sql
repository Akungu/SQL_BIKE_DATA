--19. Find the yearly sales.

SELECT EXTRACT(YEAR FROM order_date) AS order_year,
       SUM (quantity * list_price) AS total_sales
FROM order_items

LEFT JOIN orders ON order_items.order_id = orders.order_id
GROUP BY 1 ;