-- 12. Find the average list price of products per brand
SELECT brand_name,
       ROUND(AVG(list_price)) AS avg_list_price
FROM products
LEFT JOIN brands ON products.brand_id = brands.brand_id
GROUP BY 1;