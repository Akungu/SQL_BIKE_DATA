--11. Show all products with their stock quantities in each sore.

SELECT  stocks.product_id,
        product_name,
        quantity AS stock_quantity,
        store_name
FROM stocks
LEFT JOIN products ON stocks.product_id = products.product_id
LEFT JOIN stores ON stocks.store_id = stores.store_id;