--15. Show the total quantity sold for each product.
SELECT order_items.product_id,
       product_name,
      SUM(quantity) AS total_quantity_sold
FROM order_items

LEFT JOIN products ON order_items.product_id = products.product_id
GROUP BY order_items.product_id,product_name
ORDER BY total_quantity_sold DESC;