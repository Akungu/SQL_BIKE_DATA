--3. Count how many products are in each category.

SELECT COUNT(product_id) AS total_products,
       products.category_id,
       categories.category_name
FROM products
LEFT JOIN categories ON products.category_id=categories.category_id
GROUP BY products.category_id, categories.category_name ;

