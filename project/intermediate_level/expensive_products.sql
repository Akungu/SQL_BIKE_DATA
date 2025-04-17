--10. Find the top 5 most expensive products.

SELECT product_id,
       product_name,
       list_price
FROM products
ORDER BY list_price DESC
LIMIT 8;