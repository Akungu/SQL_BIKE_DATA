--21. Calculate the reorder frequency of products by checking the gaps between order dates.

--Use window function LAG()

WITH product_orders AS(
    
    SELECT products.product_id,
           product_name,
           order_date,


        LAG(order_date) OVER(PARTITION BY products.product_id ORDER BY order_date) AS previous_order_date


    FROM products

LEFT JOIN order_items ON products.product_id = order_items.product_id
LEFT JOIN orders ON order_items.order_id = orders.order_id
WHERE order_date IS NOT NULL

)SELECT product_id,
        product_name,
       ROUND(AVG(order_date - previous_order_date),0 ) AS avg_gap_order_days
 FROM  product_orders
  WHERE previous_order_date IS NOT NULL
  GROUP BY 1,2
 ORDER BY avg_gap_order_days ASC;