--14. Identify which products have not been ordered yet.

SELECT products.product_id,
       product_name,
       order_items.order_id
FROM products

LEFT JOIN order_items ON products.product_id = order_items.product_id

WHERE order_id is NULL;