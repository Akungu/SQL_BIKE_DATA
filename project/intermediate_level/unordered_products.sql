--14. Identify which products have not been ordered yet.

SELECT *
FROM order_items

LEFT JOIN products ON order_items.product_id = products.product_id

WHERE order_id is NULL;