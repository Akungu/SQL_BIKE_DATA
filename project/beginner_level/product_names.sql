--7. List product names along with their brand names.
SELECT product_name,
       brand_name
FROM products
LEFT JOIN brands ON products.brand_id=brands.brand_id;